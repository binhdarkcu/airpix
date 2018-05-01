<?php /* Template Name: MY Video */ ?>
<?php require_once( ABSPATH . 'wp-admin/includes/media.php' );?>
<?php get_header()?>
<!-- upload -->
<?php get_sidebar();?>
<!--Redirect user to homepage if not logged in-->
<?php if(!is_user_logged_in()):?>
    <script type="text/javascript">
        location.href = "<?php echo site_url();?>";
    </script>
<?php endif;?>

<?php
global $wpdb;
$vid = get_query_var("vid");
$videoId = ( int ) htmlentities(strip_tags($vid),ENT_QUOTES);
try {
    $query = "SELECT * FROM " . $wpdb->prefix . "videos WHERE id=$videoId";

    //If not admin, only show videos have been published
    if(!current_user_can('administrator')){
        $query.=" AND is_published = TRUE";
    }

    $row = $wpdb->get_row ( $query );

    $uploadUri = site_url().'/wp-content/uploads/uploaded-videos/';

    if (is_object ( $row )) {
        //load video
    }else{
        echo '<script type="text/javascript">location.href="'.site_url().'"</script>';
        die();
    }
} catch ( Exception $e ) {
    echo '<script type="text/javascript">location.href="'.site_url().'"</script>';
    die();
}

?>
<div class="col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-2 main video-viewer">
    <div id="view-video">
        <video id="element-video-player" preload="auto" controls="controls" width="640" height="360" style="width:100%;height:100%;">
            <source src="<?php echo site_url().'/wp-content/plugins/video-management/api/get_video.php?vid='.$vid;?>" type='video/mp4'>
            Your browser does not support the video tag.
        </video>
    </div>
    <div class="top-grids">
        <div class="recommended-info video-title">
            <h3><?php echo $row->display_name;?></h3>
        </div>
        <h3>User comments section:</h3>
        <script>
            function fbShare(url, title, descr, image, winWidth, winHeight) {
                var winTop = (screen.height / 2) - (winHeight / 2);
                var winLeft = (screen.width / 2) - (winWidth / 2);
                window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + descr + '&p[url]=' + url + '&p[images][0]=' + image, 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0,width=' + winWidth + ',height=' + winHeight);
            }
        </script>
    </div>
</div>
<div class="col-sm-3 col-md-3  main video-viewer">
    Show list of related videos
</div>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#element-video-player').mediaelementplayer();
    })
</script>
<div class="clearfix"/>
<?php get_footer()?>

<!---728x90--->
