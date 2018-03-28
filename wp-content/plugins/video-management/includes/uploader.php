<?php
require_once('../../../../wp-load.php');
require_once( ABSPATH . 'wp-admin/includes/media.php' );
try {

    // Undefined | Multiple Files | $_FILES Corruption Attack
    // If this request falls under any of them, treat it invalid.
    if (
        !isset($_FILES['upfile']['error']) ||
        is_array($_FILES['upfile']['error'])
    ) {
        throw new RuntimeException('Invalid parameters.');
    }

    // Check $_FILES['upfile']['error'] value.
    switch ($_FILES['upfile']['error']) {
        case UPLOAD_ERR_OK:
            break;
        case UPLOAD_ERR_NO_FILE:
            throw new RuntimeException('No file sent.');
        case UPLOAD_ERR_INI_SIZE:
        case UPLOAD_ERR_FORM_SIZE:
            throw new RuntimeException('Exceeded filesize limit. 1');
        default:
            throw new RuntimeException('Unknown errors.');
    }

    // You should also check filesize here.
    //200MB
    if ($_FILES['upfile']['size'] > 200000000) {
        throw new RuntimeException('Exceeded filesize limit. 2');
    }

    // DO NOT TRUST $_FILES['upfile']['mime'] VALUE !!
    // Check MIME Type by yourself.
    $finfo = new finfo(FILEINFO_MIME_TYPE);
    if (false === $ext = array_search(
            $finfo->file($_FILES['upfile']['tmp_name']),
            array(
                'mp4' => 'video/mp4'
            ),
            true
        )) {
        throw new RuntimeException('Invalid file format.');
    }

    // You should name it uniquely.
    // DO NOT USE $_FILES['upfile']['name'] WITHOUT ANY VALIDATION !!
    // On this example, obtain safe unique name from its binary data.

    $uploads = wp_upload_dir();
    $baseDir = $uploads ['basedir'];
    $baseDir = str_replace ( "\\", "/", $baseDir );
    $pathToVideosFolder = $baseDir . '/uploaded-videos';
    $hashedName = sha1_file($_FILES['upfile']['tmp_name']).''.time();
    if (!move_uploaded_file($_FILES['upfile']['tmp_name'],
        sprintf($pathToVideosFolder.'/%s.%s', $hashedName, $ext)
    )) {
        throw new RuntimeException('Failed to move uploaded file.');
    }


    $thumbnail = '';
    if(isset($_POST) && isset($_POST['thumbnail'])){

        $data = $_POST['thumbnail'];
        if (preg_match('/^data:image\/(\w+);base64,/', $data, $type)) {
        $data = substr($data, strpos($data, ',') + 1);
        $type = strtolower($type[1]); // jpg, png, gif

        if (!in_array($type, [ 'jpg', 'jpeg', 'gif', 'png' ])) {
            throw new \Exception('invalid image type');
        }

        $data = base64_decode($data);

        if ($data === false) {
            throw new \Exception('base64_decode failed');
        }
        } else {
        throw new \Exception('did not match data URI with image data');
        }

        $thumbnail = $hashedName.'.'.$type;

        file_put_contents($pathToVideosFolder.'/'.$thumbnail, $data);

    }

    $description = '';
    $title = '';
    if(isset($_POST) && $_POST['description']){
        $description = trim(htmlspecialchars($_POST['description']));
    }
    
    if(isset($_POST) && $_POST['title']){
        $title = trim(htmlspecialchars($_POST['title']));
    }
    global $wpdb;
    $created_date = $updated_date = current_time ( 'Y-m-d h:i:s' );
    $current_user = wp_get_current_user();
    $display_name = $title ? $title : pathinfo($_FILES['upfile']['name'])['filename'];
    $download_name = $hashedName.'.'.$ext;
    $duration = 0;
    $metadata = wp_read_video_metadata($pathToVideosFolder.'/'.$download_name);

    if($metadata) $duration = $metadata['length_formatted'];

    $query = "INSERT INTO " . $wpdb->prefix . "videos
                                		(user_id, display_name, download_name, thumbnail, description, video_format, duration, created_date, updated_date, is_published)
                           				 VALUES ('$current_user->ID','$display_name','$download_name','$thumbnail','$description','$ext','$duration','$created_date','$updated_date', 0)";

    $wpdb->query ( $query );
    echo 'File is uploaded successfully.';

} catch (RuntimeException $e) {

    echo $e->getMessage();

}
