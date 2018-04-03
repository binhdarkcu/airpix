<?php
//require libs
require_once('../../../../wp-load.php');
require_once('../includes/VideoStream.php');

$uploads = wp_upload_dir();
$baseDir = $uploads ['basedir'];
$baseDir = str_replace ( "\\", "/", $baseDir );
$pathToVideosFolder = $baseDir . '/uploaded-videos';
$filePath = $pathToVideosFolder.'/2ecf7dd304bf8234a8dbf993a9b683123ccda0831522292996.mp4';
//$stream = new VideoStream($filePath);
//$stream->start();
//Verify nonce
if(isset($_GET)){
    
}
var_dump(wp_verify_nonce($_GET['wp_nonce'], 'unique_video_id_'.$_GET['vid']));
echo '<pre>';
var_dump($_GET);
echo '</pre>';