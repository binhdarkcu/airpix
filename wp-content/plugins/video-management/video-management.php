<?php
/*
 * Plugin Name: Video Management
 * Plugin URI: http://127.0.0.1
 * Author URI: http://127.0.0.1
 * Description:This is beautiful responsive video grid with responsive lightbox.Add any number of video from admin panel.
 * Author: Admin
 * Version:1.0
 */

class WP_Video_Management{

  // Constructor
    function __construct() {

        add_action( 'admin_menu', array( $this, 'wpa_add_menu' ));
        add_action ( 'wp_enqueue_scripts', 'wpa_plugin_styles_scripts' );
        add_shortcode('video_list', array($this, 'create_video_grid_view'));
        register_activation_hook( __FILE__, array( $this, 'wpa_install' ) );
        register_deactivation_hook( __FILE__, array( $this, 'wpa_uninstall' ) );
    }



    /*
      * Actions perform at loading of admin menu
      */

    function wpa_add_menu() {
        $hook_suffix = add_menu_page( 'Video Management', 'Manage Videos', 'manage_options', 'manage-videos', array( $this, 'display_videos_management_page' ));

        add_action('load-'.$hook_suffix, array($this, 'wpa_admin_styles_scripts'));

//        add_submenu_page( 'analytify-dashboard', 'Analytify simple' . ' Dashboard', ' Dashboard', 'manage_options', 'analytify-dashboard', array(
//                              __CLASS__,
//                             'wpa_page_file_path'
//                            ));

//        add_submenu_page( 'analytify-dashboard', 'Analytify simple' . ' Settings', '<b style="color:#f9845b">Settings</b>', 'manage_options', 'analytify-settings', array(
//                              __CLASS__,
//                             'wpa_page_file_path'
//                            ));
    }

    function wpa_admin_styles_scripts(){
        wp_enqueue_style ( 'style', plugins_url ( '/css/style.css', __FILE__ ) );
        wp_enqueue_script ( 'jquery' );
        wp_enqueue_script ( 'video-management', plugins_url ( '/js/video-management.js', __FILE__ ) );
    }

    function wpa_plugin_styles_scripts(){
        if (! is_admin()) {
            wp_enqueue_style ( 'style', plugins_url ( '/css/style.css', __FILE__ ) );
            wp_enqueue_style ( 'video-js', plugins_url ( '/css/video-js.css', __FILE__ ) );
            wp_enqueue_script ( 'jquery' );
            wp_enqueue_script ( 'video', plugins_url ( '/js/video.js', __FILE__ ) );
        }
    }

    function display_videos_management_page() {
        include_once( 'views/management.php' );
    }

    function create_video_grid_view(){
        $this->wpa_plugin_styles_scripts();
        include_once('views/video-grid.php');
    }
    /*
     * Actions perform on loading of menu pages
     */
    function wpa_page_file_path() {



    }

    /*
     * Actions perform on activation of plugin
     */
    function wpa_install() {
        global $wpdb;
        $table_name = $wpdb->prefix . "videos";
        $charset_collate = $wpdb->get_charset_collate();

        $sql = "CREATE TABLE IF NOT EXISTS $table_name (
		id mediumint(9) NOT NULL AUTO_INCREMENT,
		user_id mediumint(9) NOT NULL ,
		display_name tinytext DEFAULT '' NOT NULL,
		download_name tinytext DEFAULT '' NOT NULL,
		thumbnail tinytext DEFAULT '' NULL,
		description text NULL,
		video_format varchar(50) NOT NULL,
        created_date datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
		updated_date datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
		PRIMARY KEY  (id)
	) $charset_collate;";

        require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
        dbDelta( $sql );

        $uploads = wp_upload_dir();
        $baseDir = $uploads ['basedir'];
        $baseDir = str_replace ( "\\", "/", $baseDir );
        $pathToVideosFolder = $baseDir . '/uploaded-videos';
        wp_mkdir_p ( $pathToVideosFolder );
    }

    /*
     * Actions perform on de-activation of plugin
     */
    function wpa_uninstall() {



    }


}


new WP_Video_Management();
?>
