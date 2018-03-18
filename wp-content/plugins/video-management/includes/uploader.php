<?php
require_once('../../../../wp-load.php');
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
                'jpg' => 'image/jpeg',
                'png' => 'image/png',
                'gif' => 'image/gif',
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

    global $wpdb;
    $created_date = $updated_date = current_time ( 'Y-m-d h:i:s' );
    $thumbnail = '';
    $user_id = 1;
    $display_name = pathinfo($_FILES['upfile']['name'])['filename'];
    $download_name = $hashedName.'.'.$ext;
    $description = 'des';

    $query = "INSERT INTO " . $wpdb->prefix . "videos 
                                		(user_id, display_name, download_name, thumbnail, description, video_format, created_date, updated_date) 
                           				 VALUES ('$user_id','$display_name','$download_name','$thumbnail','$description','$ext','$created_date','$updated_date')";

    $wpdb->query ( $query );
    echo 'File is uploaded successfully.';

} catch (RuntimeException $e) {

    echo $e->getMessage();

}