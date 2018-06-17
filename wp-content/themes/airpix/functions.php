<?php

//Define constants
define('TEMPLATE_PATH', get_bloginfo('template_url'));
define('HOME_URL', get_home_url());
define('BlOG_NAME', get_bloginfo('blog_name'));
define('SLOGAN', get_bloginfo('description'));
define('STATUS_OK', "OK");
define('STATUS_ERROR', "ERROR");
//Hooks
add_action('wp_enqueue_scripts', 'ajax_enqueue');
add_action('init', 'create_posttype');
add_action('init', 'add_get_val');
add_action('wp_ajax_update_location', 'update_user_location');
add_action( 'add_meta_boxes', 'wpdocs_register_meta_boxes' );
add_action( 'save_post', 'wpdocs_save_meta_box' );
//get param on url
function add_get_val() {
    global $wp;
    $wp->add_query_var('vid');
}

//get user role by id
function get_user_roles_by_user_id($user_id) {
    $user = get_userdata($user_id);
    return empty($user) ? array() : $user->roles;
}

//create custom postype
function create_posttype() {

    $label = array(
        'name' => 'AirPix Videos',
        'singular_name' => 'Video'
    );

    $args = array(
        'labels' => $label,
        'description' => 'Airpix Video Post type',
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'author',
            'thumbnail',
            'comments',
            'trackbacks',
            'revisions',
            'custom-fields'
        ),
        'taxonomies' => array('category', 'post_tag'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-video-alt3',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'publicly_queryable' => true,
        'capability_type' => 'post',
        'rewrite' => array('slug' => 'videos')
    );

    register_post_type('airpix_video', $args);
}

//create admin ajax url
function ajax_enqueue() {
    wp_enqueue_script('ajax-script', get_template_directory_uri() . '/js/airpix.js', array('jquery'));
    wp_localize_script('ajax-script', 'globalConfig', array(
        'admin_ajax_url' => admin_url('admin-ajax.php'),
        'pilots' => get_pilots()
        ));
}

function update_user_location() {
    $current_user = wp_get_current_user();

    $lat = $_POST['lat'];
    $lng = $_POST['lng'];

    //default messages
    $result = array(
        'message' => $lat . ":" . $lng,
        'status' => STATUS_OK
    );

    //user is logged in
    if ($current_user) {
        update_user_meta($current_user->ID, 'user_position', json_encode(array('lat' => $lat, 'lng' => $lng)));
    } else {
        $result['message'] = 'You are not logged in';
        $result['status'] = STATUS_ERROR;
    }

    echo json_encode($result);
    // Don't forget to stop execution afterward.
    wp_die();
}

function get_pilots(){
    
    $current_user = wp_get_current_user();
    
    $result = array();
    
    $args = array(
        'role' => 'pilot'
    );
    
    //exclude current user position
    if($current_user->ID){
        $args['exclude'] = array($current_user->ID);
    }
    
    $pilots = get_users($args);

    foreach ($pilots as $pilot){
        $result[] = array(
            'ID' => $pilot->data->ID,
            'user_nicename' => $pilot->data->user_nicename,
            'display_name' => $pilot->data->display_name,
            'user_email' => $pilot->data->user_email,
            'position' => get_user_meta($pilot->data->ID, 'user_position', true),
            'drone_info' => get_user_meta($pilot->data->ID, 'user_drone_info', true)
        );
    }
    
    return $result;
}
/**
 * Register meta box(es).
 */
function wpdocs_register_meta_boxes() {
    add_meta_box( 'meta-box-id', __( 'Video Preview', 'textdomain' ), 'wpdocs_my_display_callback', 'airpix_video', 'advanced', 'high' );
}
 
/**
 * Meta box display callback.
 *
 * @param WP_Post $post Current post object.
 */
function wpdocs_my_display_callback( $post ) {
    // Display code/markup goes here. Don't forget to include nonces!
    global $wpdb;
    $query = "SELECT * FROM " . $wpdb->prefix . "videos WHERE post_id = $post->ID";
    $query.= " LIMIT 1";
    $row = $wpdb->get_row ( $query );
    
    //unlimited echo works
    echo '<div id="view-video">';
    echo '<video id="element-video-player" preload="auto" controls="controls" width="640" height="360" style="width:100%;height:100%;">';
    echo '<source src="'. site_url().'/wp-content/plugins/video-management/api/get_video.php?vid='.$row->id.'type="video/mp4">';
    echo 'Your browser does not support the video tag.';
    echo '</video>';
    echo '</div>';
    echo '<script type="text/javascript">';
    echo 'jQuery(document).ready(function(){ jQuery("#element-video-player").mediaelementplayer(); })';
    echo '</script>';
}
 
/**
 * Save meta box content.
 *
 * @param int $post_id Post ID
 */
function wpdocs_save_meta_box( $post_id ) {
    // Save logic goes here. Don't forget to include nonce checks!
}

add_action('edit_form_after_title', function() {
    global $post, $wp_meta_boxes;
    do_meta_boxes(get_current_screen(), 'advanced', $post);
    unset($wp_meta_boxes[get_post_type($post)]['advanced']);
});