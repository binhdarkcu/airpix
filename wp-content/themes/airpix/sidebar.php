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
            <li class="<?php if(is_home()) echo 'active';?>"><a href="<?php echo HOME_URL;?>" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <?php if( current_user_can('administrator') || current_user_can('renter')):?>
                <li class="<?php if(is_page('my-videos')) echo 'active';?>"><a href="<?php echo HOME_URL;?>/my-videos" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>My Videos</a></li>
            <?php endif;?>
            <li class="<?php if(is_page('search-pilots')) echo 'active';?>"><a href="<?php echo HOME_URL;?>/search-pilots" class="user-icon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>Search Pilots</a></li>
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
                    <p>Copyright © 2018 Air Pix. All Rights Reserved</p>
                </div>
            </div>
        </div>
</div>
