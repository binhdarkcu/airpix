<?php
global $wpdb;

$post_id = get_the_ID() ? get_the_ID():-1;

$query = "SELECT V.*, U.display_name as user_name "
        . "FROM " . $wpdb->prefix . "videos  AS V "
        . "INNER JOIN ".$wpdb->prefix."users AS U "
        . "ON V.user_id = U.ID AND V.is_published = TRUE AND V.post_id = ".$post_id." "
        . "LIMIT 1";

$row = $wpdb->get_row ( $query );

$uploadUri = site_url().'/wp-content/uploads/uploaded-videos/';?>

<?php $thumbnail = trim($row->thumbnail) ? $uploadUri.$row->thumbnail:'images/t1.jpg'?>
    <div class="col-md-4 resent-grid recommended-grid slider-top-grids">
        <div class="resent-grid-img recommended-grid-img">
            <a href="<?php echo get_permalink($row->post_id)?>"  class="show-video" style="background:url(<?php echo $thumbnail;?>) no-repeat; background-size: cover;width: 100%;min-height: 205px;"></a>
            <div class="time">
                <div class="clck">
                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                </div>
                <p><?php echo $row->duration;?></p>
            </div>

        </div>
        <div class="resent-grid-info recommended-grid-info">
            <h3><a href="<?php echo site_url().'/videos/?vid='.$row->id;?>" class="title title-info"><?php echo $row->display_name;?></a></h3>
            <p class="description"><?php echo $row->description;?></p>
            <ul>
                <li><p class="author author-info"><a href="<?php echo site_url();?>" class="author"><?php echo $row->user_name;?></a></p></li>
                <li class="right-list"><p class="views views-info">
                    <a class="fb-share" href="javascript:fbShare('<?php echo site_url().'/videos/'.$row->id;?>', 'Fb Share', 'Facebook share popup', 'http://goo.gl/dS52U', 520, 350)">Share</a>
                </p></li>
            </ul>
        </div>
    </div>