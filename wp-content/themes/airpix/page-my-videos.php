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
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="top-grids">
            <div class="recommended-info">
                <h3>My Videos</h3>
            </div>
            <script>
                function fbShare(url, title, descr, image, winWidth, winHeight) {
                    var winTop = (screen.height / 2) - (winHeight / 2);
                    var winLeft = (screen.width / 2) - (winWidth / 2);
                    window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + descr + '&p[url]=' + url + '&p[images][0]=' + image, 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0,width=' + winWidth + ',height=' + winHeight);
                }
            </script>
            <?php
            global $wpdb;

            $current_user = wp_get_current_user();

            if(!$current_user) return wp_redirect('/');

            $query = "SELECT V.*, U.display_name as user_name "
                    . "FROM " . $wpdb->prefix . "videos  AS V  "
                    . "INNER JOIN ".$wpdb->prefix."users AS U "
                    . "ON V.user_id = $current_user->ID "
                    . "AND V.user_id = U.ID AND is_published = TRUE "
                    . "ORDER BY V.created_date desc";
            $rows = $wpdb->get_results ( $query, 'ARRAY_A' );
            $rowCount = sizeof ( $rows );
            $uploadUri = site_url().'/wp-content/uploads/uploaded-videos/';
            ?>
            <?php foreach ($rows as $row):?>

                <?php $thumbnail = trim($row['thumbnail']) ? $uploadUri.$row['thumbnail']:'images/t1.jpg'?>
                <div class="col-md-4 resent-grid recommended-grid slider-top-grids">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="<?php echo site_url().'/videos/?vid='.$row['id']?>"  class="show-video" style="background:url(<?php echo $thumbnail;?>) no-repeat; background-size: cover;width: 100%;min-height: 205px;"></a>
                        <div class="time">
                            <div class="clck">
                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                            </div>
                            <p><?php echo $row['duration']?></p>
                        </div>

                    </div>
                    <div class="resent-grid-info recommended-grid-info">
                        <h3><a href="<?php echo site_url().'/videos/?vid='.$row['id']?>" class="title title-info"><?php echo $row['display_name']?></a></h3>
                        <ul>
                            <li><p class="author author-info"><a href="<?php echo site_url();?>" class="author"><?php echo $row['user_name']?></a></p></li>
                            <li class="right-list"><p class="views views-info">
                                <a class="fb-share" href="javascript:fbShare('<?php echo site_url().'/videos/'.$row['id']?>', 'Fb Share', 'Facebook share popup', 'http://goo.gl/dS52U', 520, 350)">Share</a>
                            </p></li>
                        </ul>
                    </div>

                </div>
            <?php endforeach;?>
        </div>
    </div>
    <div id="video-player-popup" class="mfp-hide">
        <!--        <video id="video-player" width="640" height="360" src=""></video>-->
    </div>
</div>
<div class="clearfix"> </div>

<?php get_footer()?>

<!---728x90--->
