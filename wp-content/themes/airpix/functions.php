<?php
//Define constants
define('TEMPLATE_PATH',get_bloginfo('template_url'));
define('HOME_URL',get_home_url());
define('BlOG_NAME',get_bloginfo('blog_name'));
define('SLOGAN', get_bloginfo('description'));
define('STATUS_OK', "OK");
define('STATUS_ERROR', "ERROR");
//Hooks
add_action( 'wp_enqueue_scripts', 'ajax_enqueue' );
add_action( 'init', 'create_posttype' );
add_action('init','add_get_val');
add_action( 'wp_ajax_update_location', 'update_user_location' );

//get param on url
function add_get_val() {
    global $wp;
    $wp->add_query_var('vid');
}
//get user role by id
function get_user_roles_by_user_id( $user_id ) {
    $user = get_userdata( $user_id );
    return empty( $user ) ? array() : $user->roles;
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
        'taxonomies' => array( 'category', 'post_tag' ), 
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
      wp_enqueue_script( 'ajax-script', get_template_directory_uri() . '/js/airpix.js', array('jquery') );
      wp_localize_script( 'ajax-script', 'ajaxConfig', array( 'url' => admin_url( 'admin-ajax.php' ) ) );
 }
 
 function update_user_location(){
    $current_user = wp_get_current_user();
    
    $lat = $_POST['lat'];
    $lng = $_POST['lng'];
    
    //default messages
    $result = array(
        'message'=> $lat.":".$lng,
        'status' => STATUS_OK
    );
    
    //user is logged in
    if($current_user){
        update_user_meta($current_user->ID, 'user_position', json_encode(array('lat'=> $lat, 'lng' => $lng)));
    }else{
        $result['message'] = 'You are not logged in';
        $result['status'] = STATUS_ERROR;
    }
    
    echo json_encode($result);
    // Don't forget to stop execution afterward.
    wp_die();
 }