<?php require_once( ABSPATH . 'wp-admin/includes/media.php' );?>
<?php get_header()?>
<!-- upload -->
<div class="col-sm-3 col-md-2 sidebar">
    <div class="top-navigation">
        <div class="t-menu">MENU</div>
        <div class="t-img">
            <img src="images/lines.png" alt="">
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="drop-navigation drop-navigation">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="index.html" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li><a href="shows.html" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>TV Shows</a></li>
            <li><a href="history.html" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>History</a></li>

            <li><a href="news.html" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>News</a></li>
        </ul>
        <!-- script-for-menu -->
        <script>
            $( ".top-navigation" ).click(function() {
                $( ".drop-navigation" ).slideToggle( 300, function() {
                    // Animation complete.
                });
            });
        </script>
        <div class="side-bottom">
            <div class="side-bottom-icons">
                <ul class="nav2">
                    <li><a href="#" class="facebook"> </a></li>
                    <li><a href="#" class="facebook twitter"> </a></li>
                    <li><a href="#" class="facebook chrome"> </a></li>
                    <li><a href="#" class="facebook dribbble"> </a></li>
                </ul>
            </div>
            <div class="copyright">
                <p>Copyright © 2015 My Play. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
            </div>
        </div>
    </div>
</div>
<!--Redirect user to homepage if not logged in-->
<?php if(!is_user_logged_in()):?>
<script type="text/javascript">
    location.href = "<?php echo site_url();?>";
</script>
<?php endif;;?>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="top-grids">
            <div class="recommended-info">
                <h3>Recent Videos</h3>
            </div>

            <?php
            global $wpdb;

            $current_user = wp_get_current_user();

            if(!$current_user) return wp_redirect('/');

            $query = "SELECT V.*, U.display_name as user_name FROM " . $wpdb->prefix . "videos  AS V  INNER JOIN ".$wpdb->prefix."users AS U ON V.user_id = $current_user->ID AND V.user_id = U.ID ORDER BY V.created_date desc";
            $rows = $wpdb->get_results ( $query, 'ARRAY_A' );
            $rowCount = sizeof ( $rows );
            $uploadUri = site_url().'/wp-content/uploads/uploaded-videos/'
            ?>
            <?php foreach ($rows as $row):?>

                <?php $thumbnail = trim($row['thumbnail']) ? $uploadUri.$row['thumbnail']:'images/t1.jpg'?>
                <div class="col-md-4 resent-grid recommended-grid slider-top-grids">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="#video-player-popup" data-src="<?php echo $uploadUri.$row['download_name']?>" class="show-video"><img src="<?php echo $thumbnail;?>" alt=""/></a>
                        <div class="time">
                            <p><?php echo $row['duration']?></p>
                        </div>
                        <div class="clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info">
                        <h3><a href="<?php echo site_url();?>" class="title title-info"><?php echo $row['display_name']?></a></h3>
                        <ul>
                            <li><p class="author author-info"><a href="<?php echo site_url();?>" class="author"><?php echo $row['user_name']?></a></p></li>
                            <li class="right-list"><p class="views views-info">125 views</p></li>
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

<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery ('.show-video').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in',
            callbacks: {
                close: function() {
                    jQuery('.mejs-offscreen, .mejs-container').remove();
                },
                beforeOpen: function(){
                    var videoSrc = this.st.el.data('src');
                    jQuery('<video>', {
                        id: 'video-player',
                        src: videoSrc,
                        width: 640,
                        height: 360
                    }).appendTo('#video-player-popup');

                    jQuery('#video-player').mediaelementplayer();
                }
            }
        });
    })
</script>

<?php get_footer()?>

<!---728x90--->
