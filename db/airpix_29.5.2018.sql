-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 05:36 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airpix`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 29, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:10:56', '2018-05-02 02:10:56', 'Good', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 0, 1),
(3, 29, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:11:04', '2018-05-02 02:11:04', 'Really ?', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 2, 1),
(4, 29, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:11:27', '2018-05-02 02:11:27', '@admin: Sure', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 2, 1),
(5, 4, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:26:11', '2018-05-02 02:26:11', 'Nice video', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://airpix.local', 'yes'),
(2, 'home', 'https://airpix.local', 'yes'),
(3, 'blogname', 'Air Pix', 'yes'),
(4, 'blogdescription', 'Share all you need!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'cqthanh.zx@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"videos/?$\";s:32:\"index.php?post_type=airpix_video\";s:39:\"videos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=airpix_video&feed=$matches[1]\";s:34:\"videos/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=airpix_video&feed=$matches[1]\";s:26:\"videos/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=airpix_video&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"videos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"videos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"videos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"videos/([^/]+)/embed/?$\";s:45:\"index.php?airpix_video=$matches[1]&embed=true\";s:27:\"videos/([^/]+)/trackback/?$\";s:39:\"index.php?airpix_video=$matches[1]&tb=1\";s:47:\"videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?airpix_video=$matches[1]&feed=$matches[2]\";s:42:\"videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?airpix_video=$matches[1]&feed=$matches[2]\";s:35:\"videos/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?airpix_video=$matches[1]&paged=$matches[2]\";s:42:\"videos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?airpix_video=$matches[1]&cpage=$matches[2]\";s:31:\"videos/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?airpix_video=$matches[1]&page=$matches[2]\";s:23:\"videos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"videos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"videos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";i:1;s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";i:2;s:37:\"user-role-editor/user-role-editor.php\";i:3;s:37:\"video-management/video-management.php\";i:4;s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'airpix', 'yes'),
(41, 'stylesheet', 'airpix', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'pilot', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '2', 'yes'),
(73, 'page_comments', '1', 'yes'),
(74, 'comments_per_page', '5', 'yes'),
(75, 'default_comments_page', 'oldest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:31:\"advanced-access-manager/aam.php\";a:2:{i:0;s:3:\"AAM\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:91:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:6:\"renter\";a:2:{s:4:\"name\";s:6:\"Renter\";s:12:\"capabilities\";a:39:{s:4:\"read\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:18:\"read_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:17:\"manage_categories\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:13:\"publish_pages\";b:1;s:10:\"edit_pages\";b:1;s:12:\"delete_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"edit_others_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"manage_links\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:7:\"level_3\";b:1;s:7:\"level_4\";b:1;s:7:\"level_5\";b:1;s:7:\"level_6\";b:1;s:7:\"level_7\";b:1;}}s:5:\"pilot\";a:2:{s:4:\"name\";s:5:\"Pilot\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1527609176;a:1:{s:24:\"rm_chronos_task_exe_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:22:\"rm_automation_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1527629446;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527672662;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527691758;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523894266;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, '_transient_random_seed', '28c7eb185768ca1fb5efedf0833ffd7b', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1527604525;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(477, '_site_transient_timeout_theme_roots', '1527606327', 'no'),
(478, '_site_transient_theme_roots', 'a:5:{s:12:\"airpix-video\";s:7:\"/themes\";s:10:\"airpix/css\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(138, 'wpfront-user-role-editor-db-version', '2.14.1', 'yes'),
(185, 'hsabffe_hide_admin_bar', 'hide', 'yes'),
(182, 'wpmembers_utfields', 'a:0:{}', 'yes'),
(183, 'wpmembers_usfields', 'a:0:{}', 'yes'),
(171, 'current_theme', 'Air pix', 'yes'),
(172, 'theme_mods_airpix', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525657845;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(346, '_transient_twentyfifteen_categories', '1', 'yes'),
(343, 'wpac', 'a:5:{s:6:\"enable\";s:1:\"1\";s:20:\"alwaysIncludeScripts\";s:1:\"1\";s:5:\"debug\";s:1:\"1\";s:12:\"disableCache\";s:1:\"1\";s:13:\"enableByQuery\";s:1:\"1\";}', 'yes'),
(173, 'theme_switched', '', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(492, '_site_transient_timeout_ure_caps_readable', '1527606429', 'no'),
(134, 'nsl-version', '3.0.4', 'yes'),
(135, 'widget_nextend_social_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:6:\"4.40.1\";}', 'yes'),
(274, 'wp_backup_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:84:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:6:\"renter\";a:2:{s:4:\"name\";s:6:\"Renter\";s:12:\"capabilities\";a:39:{s:4:\"read\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:18:\"read_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:17:\"manage_categories\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:13:\"publish_pages\";b:1;s:10:\"edit_pages\";b:1;s:12:\"delete_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"edit_others_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"manage_links\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:7:\"level_3\";b:1;s:7:\"level_4\";b:1;s:7:\"level_5\";b:1;s:7:\"level_6\";b:1;s:7:\"level_7\";b:1;}}s:5:\"pilot\";a:2:{s:4:\"name\";s:5:\"Pilot\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;}}}', 'no'),
(275, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(276, 'rm_option_front_sub_page_id', '27', 'yes'),
(277, 'rm_option_front_login_page_id', '28', 'yes'),
(278, 'rm_option_inserted_sample_data', 'O:8:\"stdClass\":1:{s:5:\"forms\";a:2:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"2\";s:9:\"form_type\";s:1:\"1\";}i:1;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:9:\"form_type\";s:1:\"0\";}}}', 'no'),
(279, 'rm_option_install_date', '1525225973', 'no'),
(280, 'rm_option_install_type', 'basic', 'no'),
(281, 'rm_option_last_update_time', '1525225973', 'no'),
(282, 'rm_option_ex_chronos_db_version', '1', 'no'),
(283, 'rm_option_last_activation_time', '1525225973', 'no'),
(284, 'rm_option_db_version', '4.9', 'no'),
(285, 'widget_rm_otp_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_rm_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'rm_option_automation_intro_time', '1525225976', 'no'),
(289, 'rm_option_rm_version', '3.8.1.9', 'yes'),
(293, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525658036;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(430, '_site_transient_browser_37852581c9557110c7bab064af517413', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(483, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1527648345', 'no'),
(484, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1527648345', 'no'),
(485, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1527605145', 'no'),
(486, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1527648345', 'no'),
(487, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://blog.akismet.com/2018/05/28/version-4-0-7-of-the-akismet-wordpress-plugin-is-now-available/\'>Akismet: Version 4.0.7 of the Akismet WordPress Plugin Is Now Available</a></li><li><a class=\'rsswidget\' href=\'https://blog.akismet.com/2018/05/26/version-4-0-6-of-the-akismet-wordpress-plugin-is-now-available/\'>Akismet: Version 4.0.6 of the Akismet WordPress Plugin Is Now Available</a></li><li><a class=\'rsswidget\' href=\'https://poststatus.com/the-history-of-the-web-and-wordpresss-15th-birthday-draft-podcast/\'>Post Status: The History of the Web, and WordPress’s 15th Birthday — Draft Podcast</a></li></ul></div>', 'no'),
(141, 'WPLANG', '', 'yes'),
(142, 'new_admin_email', 'cqthanh.zx@gmail.com', 'yes'),
(150, 'wpmembers_settings', 'a:20:{s:7:\"version\";s:7:\"3.1.9.3\";s:6:\"notify\";s:1:\"0\";s:7:\"mod_reg\";s:1:\"0\";s:7:\"captcha\";s:1:\"0\";s:7:\"use_exp\";s:1:\"0\";s:9:\"use_trial\";s:1:\"0\";s:8:\"warnings\";s:1:\"0\";s:7:\"dropins\";s:1:\"0\";s:10:\"user_pages\";a:3:{s:7:\"profile\";s:2:\"10\";s:8:\"register\";s:1:\"8\";s:5:\"login\";s:1:\"6\";}s:6:\"cssurl\";s:74:\"http://airpix.local/wp-content/plugins/wp-members/css/generic-no-float.css\";s:5:\"style\";s:74:\"http://airpix.local/wp-content/plugins/wp-members/css/generic-no-float.css\";s:6:\"attrib\";s:1:\"0\";s:10:\"post_types\";a:0:{}s:9:\"form_tags\";a:1:{s:7:\"default\";s:20:\"Registration Default\";}s:5:\"email\";a:2:{s:4:\"from\";s:0:\"\";s:9:\"from_name\";s:0:\"\";}s:5:\"block\";a:2:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";}s:12:\"show_excerpt\";a:2:{s:4:\"post\";i:0;s:4:\"page\";i:0;}s:10:\"show_login\";a:2:{s:4:\"post\";i:0;s:4:\"page\";i:0;}s:8:\"show_reg\";a:2:{s:4:\"post\";i:0;s:4:\"page\";i:0;}s:6:\"autoex\";a:2:{s:4:\"post\";a:3:{s:7:\"enabled\";i:0;s:6:\"length\";i:0;s:4:\"text\";s:0:\"\";}s:4:\"page\";a:3:{s:7:\"enabled\";i:0;s:6:\"length\";i:0;s:4:\"text\";s:0:\"\";}}}', 'yes'),
(147, 'new_user_register_mail_subject', 'Registration Successful', 'yes'),
(148, 'new_user_register_mail_body', 'We are pleased to confirm your registration for #site_name#. Below is your login credential.\r\n<br><br>\r\n<strong>Username</strong> : #user_name#\r\n<br>\r\n<strong>Password</strong> : #user_password#\r\n<br>\r\n<strong>Site Link</strong> : #site_url#\r\n<br><br>\r\nThank You', 'yes'),
(149, 'widget_register_wid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'wpmembers_fields', 'a:18:{i:0;a:7:{i:0;i:1;i:1;s:10:\"First Name\";i:2;s:10:\"first_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:1;a:7:{i:0;i:2;i:1;s:9:\"Last Name\";i:2;s:9:\"last_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:2;a:7:{i:0;i:3;i:1;s:9:\"Address 1\";i:2;s:5:\"addr1\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:3;a:7:{i:0;i:4;i:1;s:9:\"Address 2\";i:2;s:5:\"addr2\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:4;a:7:{i:0;i:5;i:1;s:4:\"City\";i:2;s:4:\"city\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:5;a:7:{i:0;i:6;i:1;s:5:\"State\";i:2;s:8:\"thestate\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:6;a:7:{i:0;i:7;i:1;s:3:\"Zip\";i:2;s:3:\"zip\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:7;a:7:{i:0;i:8;i:1;s:7:\"Country\";i:2;s:7:\"country\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:8;a:7:{i:0;i:9;i:1;s:9:\"Day Phone\";i:2;s:6:\"phone1\";i:3;s:4:\"text\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:9;a:7:{i:0;i:10;i:1;s:5:\"Email\";i:2;s:10:\"user_email\";i:3;s:5:\"email\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:10;a:7:{i:0;i:11;i:1;s:13:\"Confirm Email\";i:2;s:13:\"confirm_email\";i:3;s:5:\"email\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:11;a:7:{i:0;i:12;i:1;s:7:\"Website\";i:2;s:8:\"user_url\";i:3;s:3:\"url\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"y\";}i:12;a:7:{i:0;i:13;i:1;s:17:\"Biographical Info\";i:2;s:11:\"description\";i:3;s:8:\"textarea\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"y\";}i:13;a:7:{i:0;i:14;i:1;s:8:\"Password\";i:2;s:8:\"password\";i:3;s:8:\"password\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:14;a:7:{i:0;i:15;i:1;s:16:\"Confirm Password\";i:2;s:16:\"confirm_password\";i:3;s:8:\"password\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:15;a:9:{i:0;i:16;i:1;s:3:\"TOS\";i:2;s:3:\"tos\";i:3;s:8:\"checkbox\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";i:7;s:5:\"agree\";i:8;s:1:\"n\";}i:16;a:8:{i:0;s:2:\"17\";i:1;s:4:\"Role\";i:2;s:16:\"aripix_user_role\";i:3;s:6:\"select\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";i:7;a:2:{i:0;s:11:\"Pilot|pilot\";i:1;s:13:\"Renter|renter\";}}i:17;a:10:{i:0;s:2:\"18\";i:1;s:5:\"Drone\";i:2;s:12:\"airpix_drone\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";s:11:\"placeholder\";s:22:\"Drone name, model..etc\";s:7:\"pattern\";s:0:\"\";s:5:\"title\";s:0:\"\";}}', 'yes'),
(152, 'wpmembers_tos', 'Put your TOS (Terms of Service) text here.  You can use HTML markup.', 'yes'),
(153, 'wpmembers_dialogs', 'a:9:{s:14:\"restricted_msg\";s:119:\"This content is restricted to site members.  If you are an existing user, please log in.  New users may register below.\";s:4:\"user\";s:50:\"Sorry, that username is taken, please try another.\";s:5:\"email\";s:74:\"Sorry, that email address already has an account.<br />Please try another.\";s:7:\"success\";s:124:\"Congratulations! Your registration was successful.<br /><br />You may now log in using the password that was emailed to you.\";s:11:\"editsuccess\";s:29:\"Your information was updated!\";s:11:\"pwdchangerr\";s:53:\"Passwords did not match.<br /><br />Please try again.\";s:16:\"pwdchangesuccess\";s:30:\"Password successfully changed!\";s:11:\"pwdreseterr\";s:65:\"Either the username or email address do not exist in our records.\";s:15:\"pwdresetsuccess\";s:135:\"Password successfully reset!<br /><br />An email containing a new password has been sent to the email address on file for your account.\";}', 'yes'),
(154, 'wpmembers_email_newreg', 'a:2:{s:4:\"subj\";s:37:\"Your registration info for [blogname]\";s:4:\"body\";s:269:\"Thank you for registering for [blogname]\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in here:\r\n[reglink]\r\n\r\nYou may change your password here:\r\n[user-profile]\r\n\";}', 'no'),
(155, 'wpmembers_email_newmod', 'a:2:{s:4:\"subj\";s:40:\"Thank you for registering for [blogname]\";s:4:\"body\";s:173:\"Thank you for registering for [blogname]. \r\nYour registration has been received and is pending approval.\r\nYou will receive login instructions upon approval of your account\r\n\";}', 'no'),
(156, 'wpmembers_email_appmod', 'a:2:{s:4:\"subj\";s:50:\"Your registration for [blogname] has been approved\";s:4:\"body\";s:300:\"Your registration for [blogname] has been approved.\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in and change your password here:\r\n[user-profile]\r\n\r\nYou originally registered at:\r\n[reglink]\r\n\";}', 'no'),
(157, 'wpmembers_email_repass', 'a:2:{s:4:\"subj\";s:34:\"Your password reset for [blogname]\";s:4:\"body\";s:157:\"Your password for [blogname] has been reset\r\n\r\nYour new password is included below. You may wish to retain a copy for your records.\r\n\r\npassword: [password]\r\n\";}', 'no'),
(158, 'wpmembers_email_notify', 'a:2:{s:4:\"subj\";s:36:\"New user registration for [blogname]\";s:4:\"body\";s:194:\"The following user registered for [blogname]:\r\n\r\nusername: [username]\r\nemail: [email]\r\n\r\n[fields]\r\nThis user registered here:\r\n[reglink]\r\n\r\nuser IP: [user-ip]\r\n\r\nactivate user: [activate-user]\r\n\";}', 'no'),
(159, 'wpmembers_email_footer', '----------------------------------\r\nThis is an automated message from [blogname]\r\nPlease do not reply to this address', 'no'),
(160, 'wpmembers_email_getuser', 'a:2:{s:4:\"subj\";s:23:\"Username for [blogname]\";s:4:\"body\";s:64:\"Your username for [blogname] is below.\r\n\r\nusername: [username]\r\n\";}', 'no'),
(161, 'wpmembers_style', 'http://airpix.local/wp-content/plugins/wp-members/css/generic-no-float.css', 'yes'),
(162, 'widget_widget_wpmemwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(496, 'rm_option_default_form_id', '3', 'no'),
(481, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1527648332', 'no'),
(479, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527604530;s:7:\"checked\";a:4:{s:12:\"airpix-video\";s:3:\"1.9\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(480, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1527604532;s:7:\"checked\";a:12:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";s:4:\"1.10\";s:39:\"easy-video-player/easy-video-player.php\";s:5:\"1.1.7\";s:39:\"frontend-uploader/frontend-uploader.php\";s:5:\"1.3.1\";s:9:\"hello.php\";s:3:\"1.6\";s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";s:5:\"1.0.0\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:5:\"3.0.4\";s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";s:7:\"3.8.1.9\";s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";s:5:\"2.4.3\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.40.1\";s:37:\"video-management/video-management.php\";s:3:\"1.0\";s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";s:5:\"1.5.1\";}s:8:\"response\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/all-404-redirect-to-homepage\";s:4:\"slug\";s:28:\"all-404-redirect-to-homepage\";s:6:\"plugin\";s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/all-404-redirect-to-homepage/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-404-redirect-to-homepage.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/all-404-redirect-to-homepage/assets/icon-256x256.png?rev=1515215\";s:2:\"1x\";s:81:\"https://ps.w.org/all-404-redirect-to-homepage/assets/icon-128x128.png?rev=1515215\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/all-404-redirect-to-homepage/assets/banner-772x250.png?rev=1515218\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:5:\"3.0.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:70:\"w.org/plugins/custom-registration-form-builder-with-submission-manager\";s:4:\"slug\";s:56:\"custom-registration-form-builder-with-submission-manager\";s:6:\"plugin\";s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";s:11:\"new_version\";s:7:\"3.8.3.3\";s:3:\"url\";s:87:\"https://wordpress.org/plugins/custom-registration-form-builder-with-submission-manager/\";s:7:\"package\";s:99:\"https://downloads.wordpress.org/plugin/custom-registration-form-builder-with-submission-manager.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:109:\"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/icon-256x256.png?rev=1715056\";s:2:\"1x\";s:109:\"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/icon-128x128.png?rev=1715056\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:111:\"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/banner-772x250.jpg?rev=1424640\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:124:\"<ul>\n<li>Fixed: Submit button label issue.</li>\n<li>Added: Session Management Option.</li>\n<li>Other minor fixes.</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:4:\"4.42\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/user-role-editor.4.42.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:39:\"easy-video-player/easy-video-player.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/easy-video-player\";s:4:\"slug\";s:17:\"easy-video-player\";s:6:\"plugin\";s:39:\"easy-video-player/easy-video-player.php\";s:11:\"new_version\";s:5:\"1.1.7\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/easy-video-player/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/easy-video-player.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/easy-video-player/assets/icon-128x128.png?rev=1137715\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/easy-video-player/assets/banner-772x250.png?rev=1169314\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"frontend-uploader/frontend-uploader.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/frontend-uploader\";s:4:\"slug\";s:17:\"frontend-uploader\";s:6:\"plugin\";s:39:\"frontend-uploader/frontend-uploader.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/frontend-uploader/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/frontend-uploader.1.3.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/frontend-uploader_81a69d.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/frontend-uploader/assets/banner-772x250.png?rev=698759\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/hide-admin-bar-from-front-end\";s:4:\"slug\";s:29:\"hide-admin-bar-from-front-end\";s:6:\"plugin\";s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/hide-admin-bar-from-front-end/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/hide-admin-bar-from-front-end.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/hide-admin-bar-from-front-end/assets/icon-128x128.png?rev=1396990\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/hide-admin-bar-from-front-end/assets/banner-772x250.png?rev=1396986\";}s:11:\"banners_rtl\";a:0:{}}s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:51:\"w.org/plugins/twitter-facebook-google-plusone-share\";s:4:\"slug\";s:37:\"twitter-facebook-google-plusone-share\";s:6:\"plugin\";s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";s:11:\"new_version\";s:5:\"2.4.3\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/twitter-facebook-google-plusone-share/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/twitter-facebook-google-plusone-share.2.4.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:81:\"https://s.w.org/plugins/geopattern-icon/twitter-facebook-google-plusone-share.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/wp-ajaxify-comments\";s:4:\"slug\";s:19:\"wp-ajaxify-comments\";s:6:\"plugin\";s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-ajaxify-comments/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wp-ajaxify-comments.1.5.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:70:\"https://s.w.org/plugins/geopattern-icon/wp-ajaxify-comments_ffffff.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/wp-ajaxify-comments/assets/banner-772x250.jpg?rev=687697\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(411, 'WPGMZA_OTHER_SETTINGS', 'a:5:{s:30:\"wpgmza_settings_map_streetview\";s:3:\"yes\";s:24:\"wpgmza_settings_map_zoom\";s:3:\"yes\";s:23:\"wpgmza_settings_map_pan\";s:3:\"yes\";s:24:\"wpgmza_settings_map_type\";s:3:\"yes\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(412, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(413, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(414, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(415, 'wpgmza_db_version', '7.0.04', 'yes'),
(416, 'wpgmaps_current_version', '7.0.04', 'yes'),
(417, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(418, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(419, 'WPGMZA_FIRST_TIME', '7.0.04', 'yes'),
(420, 'wpgmza_stats', 'a:2:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2018-05-16 01:50:45\";s:14:\"first_accessed\";s:19:\"2018-05-16 01:50:45\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2018-05-16 01:51:37\";s:14:\"first_accessed\";s:19:\"2018-05-16 01:50:58\";}}', 'yes'),
(421, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:17:\"45.32744091729053\";s:24:\"map_default_starting_lng\";s:19:\"-111.58833787048343\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:9;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(429, '_site_transient_timeout_browser_37852581c9557110c7bab064af517413', '1527925968', 'no'),
(482, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2018.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2018-06-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Belgrade, Serbia\";s:7:\"country\";s:2:\"RS\";s:8:\"latitude\";d:44.808497000000003;s:9:\"longitude\";d:20.432285;}}}}', 'no'),
(490, '_transient_timeout_plugin_slugs', '1527692219', 'no'),
(491, '_transient_plugin_slugs', 'a:12:{i:0;s:19:\"akismet/akismet.php\";i:1;s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";i:2;s:39:\"easy-video-player/easy-video-player.php\";i:3;s:39:\"frontend-uploader/frontend-uploader.php\";i:4;s:9:\"hello.php\";i:5;s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";i:6;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:7;s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";i:8;s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";i:9;s:37:\"user-role-editor/user-role-editor.php\";i:10;s:37:\"video-management/video-management.php\";i:11;s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";}', 'no'),
(493, '_site_transient_ure_caps_readable', '', 'no'),
(494, '_site_transient_timeout_available_translations', '1527617038', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(495, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-24 19:38:49\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 13:41:14\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 20:33:12\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 05:10:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 09:40:36\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 17:34:31\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 10:10:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-22 15:43:53\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-02 14:47:26\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-30 10:09:04\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 10:45:12\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 20:17:27\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-17 05:20:05\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 09:54:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:59:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-29 16:28:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 17:06:15\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-23 18:34:33\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 19:32:51\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-27 05:22:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-30 07:44:25\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 17:00:17\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-21 22:04:16\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 14:06:52\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-10 18:19:59\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-01 05:40:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-31 18:09:34\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 21:01:10\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-02 12:51:15\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-28 10:17:26\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-29 06:31:41\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-16 18:46:39\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 02:27:09\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 19:40:23\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-28 10:55:13\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 11:50:29\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 14:27:57\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 08:04:00\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-23 12:42:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 09:27:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-30 07:37:06\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:37:35\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 18:30:41\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-02 11:15:15\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 15:56:45\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 08:50:10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-25 10:30:04\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-25 20:12:50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 12:42:33\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-14 15:26:30\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-28 22:32:11\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 08:24:25\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 04:16:06\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-03 16:24:16\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'default'),
(4, 4, '_edit_lock', '1525227806:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1524385915:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_wp_page_template', 'default'),
(10, 8, '_edit_lock', '1524062852:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_wp_page_template', 'default'),
(13, 10, '_edit_lock', '1524062897:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_wp_page_template', 'default'),
(16, 12, '_edit_lock', '1524375936:1'),
(17, 14, '_edit_last', '1'),
(18, 14, '_wp_page_template', 'default'),
(19, 14, '_edit_lock', '1524062957:1'),
(75, 49, '_wp_desired_post_slug', 'animated-product-demo-video-treatful-2'),
(73, 49, '_wp_trash_meta_status', 'publish'),
(74, 49, '_wp_trash_meta_time', '1527415204'),
(72, 44, '_edit_lock', '1527391146:1'),
(46, 29, '_edit_last', '1'),
(50, 31, '_edit_lock', '1525228158:1'),
(49, 29, '_edit_lock', '1525226889:1'),
(51, 31, '_edit_last', '1'),
(54, 4, '_wp_trash_meta_status', 'publish'),
(55, 4, '_wp_trash_meta_time', '1525312454'),
(56, 4, '_wp_desired_post_slug', 'videos'),
(57, 4, '_wp_trash_meta_comments_status', 'a:1:{i:5;s:1:\"1\";}'),
(58, 33, '_edit_lock', '1525312546:1'),
(59, 33, '_edit_last', '1'),
(60, 33, '_wp_trash_meta_status', 'publish'),
(61, 33, '_wp_trash_meta_time', '1525312691'),
(62, 33, '_wp_desired_post_slug', 'ggsd'),
(63, 35, '_edit_lock', '1525312560:1'),
(64, 35, '_edit_last', '1'),
(65, 35, '_wp_trash_meta_status', 'publish'),
(66, 35, '_wp_trash_meta_time', '1525312704'),
(67, 35, '_wp_desired_post_slug', 'asdsa'),
(70, 45, '_edit_lock', '1526436196:1'),
(71, 45, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-04-15 09:30:46', '2018-04-15 09:30:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://airpix.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-15 09:30:46', '2018-04-15 09:30:46', '', 0, 'http://airpix.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-18 14:49:32', '2018-04-18 14:49:32', '', 'Videos', '', 'trash', 'open', 'open', '', 'videos__trashed', '', '', '2018-05-03 01:54:14', '2018-05-03 01:54:14', '', 0, 'http://airpix.local/?page_id=4', 0, 'page', '', 1),
(5, 1, '2018-04-18 14:49:32', '2018-04-18 14:49:32', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-18 14:49:32', '2018-04-18 14:49:32', '', 4, 'http://airpix.local/index.php/2018/04/18/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-18 14:49:42', '2018-04-18 14:49:42', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-04-18 14:49:42', '2018-04-18 14:49:42', '', 0, 'http://airpix.local/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-18 14:49:42', '2018-04-18 14:49:42', '', 'Login', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-18 14:49:42', '2018-04-18 14:49:42', '', 6, 'http://airpix.local/index.php/2018/04/18/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-18 14:49:52', '2018-04-18 14:49:52', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2018-04-18 14:49:52', '2018-04-18 14:49:52', '', 0, 'http://airpix.local/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-04-18 14:49:52', '2018-04-18 14:49:52', '', 'Register', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-18 14:49:52', '2018-04-18 14:49:52', '', 8, 'http://airpix.local/index.php/2018/04/18/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-18 14:50:08', '2018-04-18 14:50:08', '', 'User Profile', '', 'publish', 'closed', 'closed', '', 'user-profile', '', '', '2018-04-18 14:50:08', '2018-04-18 14:50:08', '', 0, 'http://airpix.local/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-18 14:50:08', '2018-04-18 14:50:08', '', 'User Profile', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-18 14:50:08', '2018-04-18 14:50:08', '', 10, 'http://airpix.local/index.php/2018/04/18/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-18 14:50:46', '2018-04-18 14:50:46', '', 'Upload', '', 'publish', 'closed', 'closed', '', 'upload', '', '', '2018-04-18 14:50:46', '2018-04-18 14:50:46', '', 0, 'http://airpix.local/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-18 14:50:46', '2018-04-18 14:50:46', '', 'Upload', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-18 14:50:46', '2018-04-18 14:50:46', '', 12, 'http://airpix.local/index.php/2018/04/18/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-18 14:50:57', '2018-04-18 14:50:57', '', 'My Videos', '', 'publish', 'closed', 'closed', '', 'my-videos', '', '', '2018-04-18 14:50:57', '2018-04-18 14:50:57', '', 0, 'http://airpix.local/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-04-18 14:50:57', '2018-04-18 14:50:57', '', 'My Videos', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-04-18 14:50:57', '2018-04-18 14:50:57', '', 14, 'http://airpix.local/index.php/2018/04/18/14-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-05-27 10:00:04', '2018-05-27 10:00:04', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Animated Product Demo Video - Treatful', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-05-27 10:00:04', '2018-05-27 10:00:04', '', 49, 'https://airpix.local/49-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-05-27 09:59:08', '2018-05-27 09:59:08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Animated Product Demo Video - Treatful', '', 'trash', 'open', 'open', '', 'animated-product-demo-video-treatful-2__trashed', '', '', '2018-05-27 10:00:04', '2018-05-27 10:00:04', '', 0, 'https://airpix.local/videos/animated-product-demo-video-treatful-2/', 0, 'airpix_video', '', 0),
(48, 1, '2018-05-27 09:57:33', '2018-05-27 09:57:33', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Animated Product Demo Video - Treatful', '', 'publish', 'open', 'open', '', 'animated-product-demo-video-treatful', '', '', '2018-05-27 09:57:33', '2018-05-27 09:57:33', '', 0, 'https://airpix.local/videos/animated-product-demo-video-treatful/', 0, 'airpix_video', '', 0),
(46, 1, '2018-05-16 02:05:22', '2018-05-16 02:05:22', '', 'Search Pilots', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-16 02:05:22', '2018-05-16 02:05:22', '', 45, 'http://airpix.local/45-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-05-02 01:52:52', '2018-05-02 01:52:52', '[RM_Front_Submissions]', 'Submissions', '', 'publish', 'closed', 'closed', '', 'rm_submissions', '', '', '2018-05-02 01:52:52', '2018-05-02 01:52:52', '', 0, 'http://airpix.local/rm_submissions/', 0, 'page', '', 0),
(28, 1, '2018-05-02 01:52:52', '2018-05-02 01:52:52', '[RM_Login]', 'Login', '', 'publish', 'closed', 'closed', '', 'rm_login', '', '', '2018-05-02 01:52:52', '2018-05-02 01:52:52', '', 0, 'http://airpix.local/rm_login/', 0, 'page', '', 0),
(29, 1, '2018-05-02 02:10:30', '2018-05-02 02:10:30', '', 'New post', '', 'publish', 'open', 'open', '', 'new-post', '', '', '2018-05-02 02:10:30', '2018-05-02 02:10:30', '', 0, 'http://airpix.local/?p=29', 0, 'post', '', 3),
(30, 1, '2018-05-02 02:10:30', '2018-05-02 02:10:30', '', 'New post', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-05-02 02:10:30', '2018-05-02 02:10:30', '', 29, 'http://airpix.local/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-05-02 02:31:38', '2018-05-02 02:31:38', 'ga', 'Test new post', '', 'publish', 'open', 'open', '', 'test-new-post', '', '', '2018-05-02 02:31:38', '2018-05-02 02:31:38', '', 0, 'http://airpix.local/?p=31', 0, 'post', '', 0),
(32, 1, '2018-05-02 02:31:38', '2018-05-02 02:31:38', 'ga', 'Test new post', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-05-02 02:31:38', '2018-05-02 02:31:38', '', 31, 'http://airpix.local/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-05-03 01:57:58', '2018-05-03 01:57:58', 'sdsds', 'ggsd', '', 'trash', 'open', 'open', '', 'ggsd__trashed', '', '', '2018-05-03 01:58:11', '2018-05-03 01:58:11', '', 0, 'http://airpix.local/?post_type=sanpham&#038;p=33', 0, 'sanpham', '', 0),
(34, 1, '2018-05-03 01:57:58', '2018-05-03 01:57:58', 'sdsds', 'ggsd', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-05-03 01:57:58', '2018-05-03 01:57:58', '', 33, 'http://airpix.local/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-05-03 01:58:20', '2018-05-03 01:58:20', 'sads', 'asdsa', '', 'trash', 'open', 'open', '', 'asdsa__trashed', '', '', '2018-05-03 01:58:25', '2018-05-03 01:58:25', '', 0, 'http://airpix.local/?post_type=sanpham&#038;p=35', 0, 'sanpham', '', 0),
(36, 1, '2018-05-03 01:58:20', '2018-05-03 01:58:20', 'sads', 'asdsa', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-05-03 01:58:20', '2018-05-03 01:58:20', '', 35, 'http://airpix.local/35-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-05-16 02:05:22', '2018-05-16 02:05:22', '', 'Search Pilots', '', 'publish', 'closed', 'closed', '', 'search-pilots', '', '', '2018-05-16 02:05:22', '2018-05-16 02:05:22', '', 0, 'http://airpix.local/?page_id=45', 0, 'page', '', 0),
(47, 1, '2018-05-26 07:52:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-26 07:52:48', '0000-00-00 00:00:00', '', 0, 'http://airpix.local/?p=47', 0, 'post', '', 0),
(44, 1, '2018-05-14 10:47:13', '2018-05-14 10:47:13', 'Video description', 'Video test', '', 'publish', 'open', 'open', '', 'video-test', '', '', '2018-05-14 10:47:13', '2018-05-14 10:47:13', '', 0, 'http://airpix.local/videos/video-test/', 0, 'airpix_video', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_fields`
--

CREATE TABLE `wp_rm_fields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `page_no` int(6) UNSIGNED NOT NULL DEFAULT '1',
  `field_label` text COLLATE utf8mb4_unicode_ci,
  `field_type` text COLLATE utf8mb4_unicode_ci,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `field_order` int(6) DEFAULT NULL,
  `field_show_on_user_page` tinyint(1) DEFAULT NULL,
  `is_field_primary` tinyint(1) NOT NULL DEFAULT '0',
  `field_is_editable` tinyint(1) NOT NULL DEFAULT '0',
  `field_options` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rm_fields`
--

INSERT INTO `wp_rm_fields` (`field_id`, `form_id`, `page_no`, `field_label`, `field_type`, `field_value`, `field_order`, `field_show_on_user_page`, `is_field_primary`, `field_is_editable`, `field_options`) VALUES
(1, 1, 1, 'Your Email', 'Email', NULL, 2, NULL, 1, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";N;s:27:\"field_is_required_min_range\";N;s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:22:\"rm_form_default_fields\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";s:1:\"1\";s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";N;s:9:\"help_text\";s:73:\"Please enter an email address where we can send response to your message.\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe158\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";N;}'),
(2, 1, 1, 'Your Name', 'Textbox', NULL, 0, 1, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:28:\"Please enter your full name.\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe7fd\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(3, 1, 1, 'Your Phone Number', 'Number', NULL, 1, 1, 0, 1, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:2:\"14\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:43:\"Phone number can help us reach you quickly.\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe0b0\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(4, 1, 1, 'Message', 'Textarea', NULL, 3, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:28:\"Type in your message here...\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";s:0:\"\";s:19:\"field_textarea_rows\";s:0:\"\";s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe0b7\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(5, 2, 1, 'Email', 'Email', NULL, 3, NULL, 1, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";N;s:27:\"field_is_required_min_range\";N;s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:22:\"rm_form_default_fields\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";s:1:\"1\";s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";N;s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe0be\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";N;}'),
(6, 2, 1, 'First Name', 'Fname', NULL, 1, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe7fd\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(7, 2, 1, 'Last Name', 'Lname', NULL, 2, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe7fd\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(8, 2, 1, 'Website', 'Website', NULL, 4, NULL, 0, 1, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:30:\"URL of your website (optional)\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe894\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(9, 2, 1, 'Do you agree with our terms and conditions?', 'Terms', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempor metus nec elit auctor venenatis non facilisis nibh. In lorem neque, vulputate id metus id, rhoncus convallis eros. In urna erat, accumsan quis pretium nec, posuere in arcu. Nulla eleifend aliquet accumsan. Pellentesque consectetur sollicitudin orci nec suscipit. Donec sit amet risus suscipit, gravida nulla semper, interdum tellus. In cursus ultricies turpis, quis suscipit massa faucibus et. Vestibulum euismod est ac vehicula viverra. Aliquam quis est quis eros feugiat varius a non ligula.', 6, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:13:\"Yes, I agree.\";}'),
(10, 2, 1, 'Divider', 'Divider', NULL, 0, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(11, 2, 1, 'Divider', 'Divider', NULL, 5, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(12, 2, 1, 'Divider', 'Divider', NULL, 7, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(13, 3, 1, 'Email', 'Email', NULL, 99999999, 0, 1, 0, 'O:8:\"stdClass\":64:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:5:\"Email\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";N;s:27:\"field_is_required_min_range\";N;s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:22:\"rm_form_default_fields\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";i:0;s:21:\"field_is_other_option\";N;s:9:\"help_text\";N;s:4:\"icon\";N;s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";N;s:11:\"date_format\";N;s:14:\"field_meta_add\";N;s:10:\"conditions\";N;s:16:\"link_same_window\";N;s:9:\"link_page\";N;s:9:\"link_href\";N;s:9:\"link_type\";N;s:12:\"yt_auto_play\";N;s:9:\"yt_repeat\";N;s:17:\"yt_related_videos\";N;s:15:\"yt_player_width\";N;s:9:\"rm_widget\";N;s:16:\"yt_player_height\";N;s:8:\"if_width\";N;s:9:\"if_height\";N;s:18:\"field_address_type\";N;s:23:\"field_ca_address1_label\";N;s:23:\"field_ca_address2_label\";N;s:19:\"field_ca_city_label\";N;s:20:\"field_ca_state_label\";N;s:22:\"field_ca_country_label\";N;s:18:\"field_ca_zip_label\";N;s:16:\"field_ca_city_en\";N;s:17:\"field_ca_state_en\";N;s:15:\"field_ca_zip_en\";N;s:19:\"field_ca_country_en\";N;s:20:\"field_ca_address1_en\";N;s:20:\"field_ca_address2_en\";N;s:13:\"ca_state_type\";N;s:21:\"field_ca_address1_req\";N;s:17:\"field_ca_city_req\";N;s:16:\"field_ca_zip_req\";N;s:20:\"field_ca_country_req\";N;s:18:\"field_ca_state_req\";N;s:21:\"field_ca_address2_req\";N;s:29:\"field_ca_label_as_placeholder\";N;s:20:\"field_ca_lmark_label\";N;s:17:\"field_ca_lmark_en\";N;s:18:\"field_ca_lmark_req\";N;s:20:\"field_ca_state_codes\";N;s:28:\"field_ca_country_america_can\";N;s:24:\"field_ca_country_limited\";N;s:26:\"field_ca_en_country_search\";N;}'),
(14, 3, 1, 'First Name', 'Fname', NULL, 100000000, NULL, 0, 0, 'O:8:\"stdClass\":64:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";s:0:\"\";s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":4:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";s:0:\"\";s:11:\"date_format\";N;s:14:\"field_meta_add\";s:0:\"\";s:10:\"conditions\";N;s:16:\"link_same_window\";N;s:9:\"link_page\";N;s:9:\"link_href\";N;s:9:\"link_type\";N;s:12:\"yt_auto_play\";N;s:9:\"yt_repeat\";N;s:17:\"yt_related_videos\";N;s:15:\"yt_player_width\";N;s:9:\"rm_widget\";N;s:16:\"yt_player_height\";N;s:8:\"if_width\";N;s:9:\"if_height\";N;s:18:\"field_address_type\";N;s:23:\"field_ca_address1_label\";N;s:23:\"field_ca_address2_label\";N;s:19:\"field_ca_city_label\";N;s:20:\"field_ca_state_label\";N;s:22:\"field_ca_country_label\";N;s:18:\"field_ca_zip_label\";N;s:16:\"field_ca_city_en\";N;s:17:\"field_ca_state_en\";N;s:15:\"field_ca_zip_en\";N;s:19:\"field_ca_country_en\";N;s:20:\"field_ca_address1_en\";N;s:20:\"field_ca_address2_en\";N;s:13:\"ca_state_type\";N;s:21:\"field_ca_address1_req\";N;s:17:\"field_ca_city_req\";N;s:16:\"field_ca_zip_req\";N;s:20:\"field_ca_country_req\";N;s:18:\"field_ca_state_req\";N;s:21:\"field_ca_address2_req\";N;s:29:\"field_ca_label_as_placeholder\";N;s:20:\"field_ca_lmark_label\";N;s:17:\"field_ca_lmark_en\";N;s:18:\"field_ca_lmark_req\";N;s:20:\"field_ca_state_codes\";N;s:28:\"field_ca_country_america_can\";N;s:24:\"field_ca_country_limited\";N;s:26:\"field_ca_en_country_search\";N;}'),
(15, 3, 1, 'Last Name', 'Lname', NULL, 100000001, NULL, 0, 0, 'O:8:\"stdClass\":64:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";s:0:\"\";s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":4:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";s:0:\"\";s:11:\"date_format\";N;s:14:\"field_meta_add\";s:0:\"\";s:10:\"conditions\";N;s:16:\"link_same_window\";N;s:9:\"link_page\";N;s:9:\"link_href\";N;s:9:\"link_type\";N;s:12:\"yt_auto_play\";N;s:9:\"yt_repeat\";N;s:17:\"yt_related_videos\";N;s:15:\"yt_player_width\";N;s:9:\"rm_widget\";N;s:16:\"yt_player_height\";N;s:8:\"if_width\";N;s:9:\"if_height\";N;s:18:\"field_address_type\";N;s:23:\"field_ca_address1_label\";N;s:23:\"field_ca_address2_label\";N;s:19:\"field_ca_city_label\";N;s:20:\"field_ca_state_label\";N;s:22:\"field_ca_country_label\";N;s:18:\"field_ca_zip_label\";N;s:16:\"field_ca_city_en\";N;s:17:\"field_ca_state_en\";N;s:15:\"field_ca_zip_en\";N;s:19:\"field_ca_country_en\";N;s:20:\"field_ca_address1_en\";N;s:20:\"field_ca_address2_en\";N;s:13:\"ca_state_type\";N;s:21:\"field_ca_address1_req\";N;s:17:\"field_ca_city_req\";N;s:16:\"field_ca_zip_req\";N;s:20:\"field_ca_country_req\";N;s:18:\"field_ca_state_req\";N;s:21:\"field_ca_address2_req\";N;s:29:\"field_ca_label_as_placeholder\";N;s:20:\"field_ca_lmark_label\";N;s:17:\"field_ca_lmark_en\";N;s:18:\"field_ca_lmark_req\";N;s:20:\"field_ca_state_codes\";N;s:28:\"field_ca_country_america_can\";N;s:24:\"field_ca_country_limited\";N;s:26:\"field_ca_en_country_search\";N;}'),
(16, 3, 1, 'Role', 'Select', 'Pilot, Renter', 100000002, NULL, 0, 0, 'O:8:\"stdClass\":64:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";s:0:\"\";s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";s:5:\"Pilot\";s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":4:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";s:0:\"\";s:11:\"date_format\";N;s:14:\"field_meta_add\";s:0:\"\";s:10:\"conditions\";a:2:{s:5:\"rules\";a:0:{}s:8:\"settings\";a:0:{}}s:16:\"link_same_window\";N;s:9:\"link_page\";N;s:9:\"link_href\";N;s:9:\"link_type\";N;s:12:\"yt_auto_play\";N;s:9:\"yt_repeat\";N;s:17:\"yt_related_videos\";N;s:15:\"yt_player_width\";N;s:9:\"rm_widget\";N;s:16:\"yt_player_height\";N;s:8:\"if_width\";N;s:9:\"if_height\";N;s:18:\"field_address_type\";N;s:23:\"field_ca_address1_label\";N;s:23:\"field_ca_address2_label\";N;s:19:\"field_ca_city_label\";N;s:20:\"field_ca_state_label\";N;s:22:\"field_ca_country_label\";N;s:18:\"field_ca_zip_label\";N;s:16:\"field_ca_city_en\";N;s:17:\"field_ca_state_en\";N;s:15:\"field_ca_zip_en\";N;s:19:\"field_ca_country_en\";N;s:20:\"field_ca_address1_en\";N;s:20:\"field_ca_address2_en\";N;s:13:\"ca_state_type\";N;s:21:\"field_ca_address1_req\";N;s:17:\"field_ca_city_req\";N;s:16:\"field_ca_zip_req\";N;s:20:\"field_ca_country_req\";N;s:18:\"field_ca_state_req\";N;s:21:\"field_ca_address2_req\";N;s:29:\"field_ca_label_as_placeholder\";N;s:20:\"field_ca_lmark_label\";N;s:17:\"field_ca_lmark_en\";N;s:18:\"field_ca_lmark_req\";N;s:20:\"field_ca_state_codes\";N;s:28:\"field_ca_country_america_can\";N;s:24:\"field_ca_country_limited\";N;s:26:\"field_ca_en_country_search\";N;}'),
(17, 3, 1, 'Drone', 'Textbox', NULL, 100000003, NULL, 0, 0, 'O:8:\"stdClass\":64:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:24:\"Drone name, model, ..etc\";s:14:\"field_timezone\";s:0:\"\";s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":4:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";s:0:\"\";s:11:\"date_format\";N;s:14:\"field_meta_add\";s:0:\"\";s:10:\"conditions\";N;s:16:\"link_same_window\";N;s:9:\"link_page\";N;s:9:\"link_href\";N;s:9:\"link_type\";N;s:12:\"yt_auto_play\";N;s:9:\"yt_repeat\";N;s:17:\"yt_related_videos\";N;s:15:\"yt_player_width\";N;s:9:\"rm_widget\";N;s:16:\"yt_player_height\";N;s:8:\"if_width\";N;s:9:\"if_height\";N;s:18:\"field_address_type\";N;s:23:\"field_ca_address1_label\";N;s:23:\"field_ca_address2_label\";N;s:19:\"field_ca_city_label\";N;s:20:\"field_ca_state_label\";N;s:22:\"field_ca_country_label\";N;s:18:\"field_ca_zip_label\";N;s:16:\"field_ca_city_en\";N;s:17:\"field_ca_state_en\";N;s:15:\"field_ca_zip_en\";N;s:19:\"field_ca_country_en\";N;s:20:\"field_ca_address1_en\";N;s:20:\"field_ca_address2_en\";N;s:13:\"ca_state_type\";N;s:21:\"field_ca_address1_req\";N;s:17:\"field_ca_city_req\";N;s:16:\"field_ca_zip_req\";N;s:20:\"field_ca_country_req\";N;s:18:\"field_ca_state_req\";N;s:21:\"field_ca_address2_req\";N;s:29:\"field_ca_label_as_placeholder\";N;s:20:\"field_ca_lmark_label\";N;s:17:\"field_ca_lmark_en\";N;s:18:\"field_ca_lmark_req\";N;s:20:\"field_ca_state_codes\";N;s:28:\"field_ca_country_america_can\";N;s:24:\"field_ca_country_limited\";N;s:26:\"field_ca_en_country_search\";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_forms`
--

CREATE TABLE `wp_rm_forms` (
  `form_id` int(6) UNSIGNED NOT NULL,
  `form_name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type` int(6) DEFAULT NULL,
  `form_user_role` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_user_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_should_send_email` tinyint(1) DEFAULT NULL,
  `form_redirect` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_redirect_to_page` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_redirect_to_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_should_auto_expire` tinyint(1) DEFAULT NULL,
  `form_options` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rm_forms`
--

INSERT INTO `wp_rm_forms` (`form_id`, `form_name`, `form_type`, `form_user_role`, `default_user_role`, `form_should_send_email`, `form_redirect`, `form_redirect_to_page`, `form_redirect_to_url`, `form_should_auto_expire`, `form_options`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Sample Contact Form', 0, NULL, NULL, 1, 'none', '0', NULL, NULL, 'O:8:\"stdClass\":59:{s:13:\"hide_username\";N;s:23:\"form_is_opt_in_checkbox\";N;s:19:\"mailchimp_relations\";N;s:16:\"form_opt_in_text\";N;s:21:\"form_should_user_pick\";N;s:20:\"form_is_unique_token\";N;s:16:\"form_description\";s:202:\"A standard contact form to get your started right away with RegistrationMagic. This form has Name, Phone No., Email and Message fields. To add this form to a page or post, use shortcode [rm_form ID=\"1\"]\";s:21:\"form_user_field_label\";N;s:16:\"form_custom_text\";s:45:\"Please fill out the form below to contact us.\";s:20:\"form_success_message\";s:69:\"Thank you! We have received your message and will reply back shortly.\";s:18:\"form_email_subject\";s:29:\"We have received your message\";s:18:\"form_email_content\";s:411:\"Dear {{Textbox_1234}},\r\n\r\nThis is a confirmation of the message you submitted through our site. We shall get back to you soon.\r\n\r\nFor your reference, below is a copy of your message. If any information is incorrect, please submit the form again with correct information.\r\n\r\nThank you!\r\n\r\nYour Name: {{Textbox_1234}}\r\n\r\nYour Phone: {{Number_1235}}\r\n\r\nYour Email: {{Email_1233}}\r\n\r\nMessage: {{Textarea_1236}}\";s:21:\"form_submit_btn_label\";s:4:\"Send\";s:21:\"form_submit_btn_color\";N;s:25:\"form_submit_btn_bck_color\";N;s:15:\"form_expired_by\";N;s:22:\"form_submissions_limit\";N;s:16:\"form_expiry_date\";N;s:25:\"form_message_after_expiry\";N;s:14:\"mailchimp_list\";N;s:22:\"mailchimp_mapped_email\";N;s:27:\"mailchimp_mapped_first_name\";N;s:26:\"mailchimp_mapped_last_name\";N;s:25:\"should_export_submissions\";i:0;s:25:\"export_submissions_to_url\";N;s:10:\"form_pages\";N;s:14:\"access_control\";N;s:14:\"style_btnfield\";N;s:10:\"style_form\";N;s:15:\"style_textfield\";N;s:10:\"auto_login\";N;s:12:\"cc_relations\";N;s:7:\"cc_list\";N;s:19:\"form_opt_in_text_cc\";N;s:26:\"form_is_opt_in_checkbox_cc\";N;s:12:\"aw_relations\";N;s:7:\"aw_list\";N;s:19:\"form_opt_in_text_aw\";N;s:26:\"form_is_opt_in_checkbox_aw\";N;s:14:\"enable_captcha\";s:7:\"default\";s:16:\"enable_mailchimp\";N;s:15:\"enable_ccontact\";N;s:13:\"enable_aweber\";N;s:20:\"display_progress_bar\";s:7:\"default\";s:18:\"sub_limit_antispam\";N;s:15:\"placeholder_css\";N;s:15:\"btn_hover_color\";N;s:20:\"field_bg_focus_color\";N;s:16:\"text_focus_color\";N;s:13:\"style_section\";N;s:11:\"style_label\";N;s:18:\"post_expiry_action\";N;s:19:\"post_expiry_form_id\";N;s:14:\"no_prev_button\";i:1;s:18:\"user_auto_approval\";s:7:\"default\";s:25:\"form_opt_in_default_state\";N;s:28:\"form_opt_in_default_state_cc\";N;s:28:\"form_opt_in_default_state_aw\";N;s:18:\"ordered_form_pages\";N;}', '2016-12-15 06:31:04', 1, '2016-12-15 06:51:04', 1),
(2, 'Sample Registration Form', 1, 'a:0:{}', 'subscriber', 1, 'none', '0', NULL, NULL, 'O:8:\"stdClass\":59:{s:13:\"hide_username\";i:0;s:23:\"form_is_opt_in_checkbox\";N;s:19:\"mailchimp_relations\";N;s:16:\"form_opt_in_text\";N;s:21:\"form_should_user_pick\";N;s:20:\"form_is_unique_token\";N;s:16:\"form_description\";s:415:\"This is a sample registration form that can be used to register users on your WordPress site. The form includes Username, Password, First Name, Last Name, Email, Website and Terms and Conditions fields. Feel free to edit them, remove them or add new ones as it suits your needs.\r\n\r\nPlease note, T&C field currently has dummy text. You will need to paste actual text of your terms and condition by editing the field.\";s:21:\"form_user_field_label\";s:0:\"\";s:16:\"form_custom_text\";s:48:\"Register with us by filling out the form below.\";s:20:\"form_success_message\";s:105:\"Thank you for registering with us! Once your account is active, we\'ll send you an email with the details.\";s:18:\"form_email_subject\";s:10:\"Thank you!\";s:18:\"form_email_content\";s:183:\"Hello {{Fname_1238}},\r\n\r\nThank you for registering with us. You will soon receive an account activation email. After that you can log into our website through login page.\r\n\r\nRegards.\";s:21:\"form_submit_btn_label\";s:0:\"\";s:21:\"form_submit_btn_color\";N;s:25:\"form_submit_btn_bck_color\";N;s:15:\"form_expired_by\";N;s:22:\"form_submissions_limit\";N;s:16:\"form_expiry_date\";N;s:25:\"form_message_after_expiry\";N;s:14:\"mailchimp_list\";N;s:22:\"mailchimp_mapped_email\";N;s:27:\"mailchimp_mapped_first_name\";N;s:26:\"mailchimp_mapped_last_name\";N;s:25:\"should_export_submissions\";i:0;s:25:\"export_submissions_to_url\";N;s:10:\"form_pages\";N;s:14:\"access_control\";N;s:14:\"style_btnfield\";s:0:\"\";s:10:\"style_form\";s:0:\"\";s:15:\"style_textfield\";s:0:\"\";s:10:\"auto_login\";N;s:12:\"cc_relations\";N;s:7:\"cc_list\";N;s:19:\"form_opt_in_text_cc\";N;s:26:\"form_is_opt_in_checkbox_cc\";N;s:12:\"aw_relations\";N;s:7:\"aw_list\";N;s:19:\"form_opt_in_text_aw\";N;s:26:\"form_is_opt_in_checkbox_aw\";N;s:14:\"enable_captcha\";s:7:\"default\";s:16:\"enable_mailchimp\";N;s:15:\"enable_ccontact\";N;s:13:\"enable_aweber\";N;s:20:\"display_progress_bar\";s:7:\"default\";s:18:\"sub_limit_antispam\";N;s:15:\"placeholder_css\";s:0:\"\";s:15:\"btn_hover_color\";s:0:\"\";s:20:\"field_bg_focus_color\";s:0:\"\";s:16:\"text_focus_color\";s:0:\"\";s:13:\"style_section\";s:0:\"\";s:11:\"style_label\";s:0:\"\";s:18:\"post_expiry_action\";N;s:19:\"post_expiry_form_id\";N;s:14:\"no_prev_button\";i:1;s:18:\"user_auto_approval\";s:7:\"default\";s:25:\"form_opt_in_default_state\";N;s:28:\"form_opt_in_default_state_cc\";N;s:28:\"form_opt_in_default_state_aw\";N;s:18:\"ordered_form_pages\";N;}', '2016-12-15 07:19:35', 1, '2016-12-15 09:16:52', 1),
(3, 'Register', 1, NULL, 'subscriber', NULL, NULL, NULL, NULL, NULL, 'O:8:\"stdClass\":66:{s:23:\"form_is_opt_in_checkbox\";N;s:19:\"mailchimp_relations\";N;s:16:\"form_opt_in_text\";N;s:21:\"form_should_user_pick\";N;s:20:\"form_is_unique_token\";N;s:16:\"form_description\";N;s:21:\"form_user_field_label\";N;s:16:\"form_custom_text\";N;s:20:\"form_success_message\";N;s:18:\"form_email_subject\";N;s:18:\"form_email_content\";N;s:21:\"form_submit_btn_label\";s:6:\"Submit\";s:21:\"form_submit_btn_color\";N;s:25:\"form_submit_btn_bck_color\";N;s:15:\"form_expired_by\";N;s:22:\"form_submissions_limit\";N;s:16:\"form_expiry_date\";N;s:25:\"form_message_after_expiry\";N;s:14:\"mailchimp_list\";N;s:22:\"mailchimp_mapped_email\";N;s:27:\"mailchimp_mapped_first_name\";N;s:26:\"mailchimp_mapped_last_name\";N;s:25:\"should_export_submissions\";N;s:25:\"export_submissions_to_url\";N;s:10:\"form_pages\";N;s:14:\"access_control\";N;s:14:\"style_btnfield\";N;s:10:\"style_form\";N;s:15:\"style_textfield\";N;s:10:\"auto_login\";N;s:12:\"cc_relations\";N;s:7:\"cc_list\";N;s:19:\"form_opt_in_text_cc\";N;s:26:\"form_is_opt_in_checkbox_cc\";N;s:12:\"aw_relations\";N;s:7:\"aw_list\";N;s:19:\"form_opt_in_text_aw\";N;s:26:\"form_is_opt_in_checkbox_aw\";N;s:14:\"enable_captcha\";N;s:16:\"enable_mailchimp\";N;s:15:\"enable_ccontact\";N;s:13:\"enable_aweber\";N;s:20:\"display_progress_bar\";N;s:18:\"sub_limit_antispam\";N;s:15:\"placeholder_css\";N;s:15:\"btn_hover_color\";N;s:20:\"field_bg_focus_color\";N;s:16:\"text_focus_color\";N;s:13:\"style_section\";N;s:11:\"style_label\";N;s:18:\"post_expiry_action\";N;s:19:\"post_expiry_form_id\";N;s:25:\"form_opt_in_default_state\";N;s:16:\"show_total_price\";N;s:20:\"form_nu_notification\";N;s:32:\"form_user_activated_notification\";N;s:31:\"form_activate_user_notification\";N;s:26:\"form_admin_ns_notification\";N;s:18:\"admin_notification\";N;s:11:\"admin_email\";N;s:19:\"form_next_btn_label\";N;s:19:\"form_prev_btn_label\";N;s:14:\"form_btn_align\";s:6:\"center\";s:30:\"form_admin_ns_notification_sub\";s:23:\" New Form Notification \";s:24:\"form_nu_notification_sub\";s:8:\"New User\";s:36:\"form_user_activated_notification_sub\";s:17:\"Account Activated\";}', '2018-05-14 10:29:05', 1, '2018-05-14 10:37:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_front_users`
--

CREATE TABLE `wp_rm_front_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity_time` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_notes`
--

CREATE TABLE `wp_rm_notes` (
  `note_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_date` datetime NOT NULL,
  `published_by` bigint(20) DEFAULT NULL,
  `last_edit_date` datetime DEFAULT NULL,
  `last_edited_by` bigint(20) DEFAULT NULL,
  `note_options` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_paypal_fields`
--

CREATE TABLE `wp_rm_paypal_fields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `class` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_label` longtext COLLATE utf8mb4_unicode_ci,
  `option_price` longtext COLLATE utf8mb4_unicode_ci,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `require` longtext COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `extra_options` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_paypal_logs`
--

CREATE TABLE `wp_rm_paypal_logs` (
  `id` int(6) UNSIGNED NOT NULL,
  `submission_id` int(6) DEFAULT NULL,
  `form_id` int(6) DEFAULT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `posted_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_proc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill` longtext COLLATE utf8mb4_unicode_ci,
  `ex_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_rules`
--

CREATE TABLE `wp_rm_rules` (
  `rule_id` int(6) UNSIGNED NOT NULL,
  `type` int(6) DEFAULT NULL,
  `attr_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_value` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operator` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_sent_mails`
--

CREATE TABLE `wp_rm_sent_mails` (
  `mail_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub` longtext COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `sent_on` datetime DEFAULT NULL,
  `headers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `exdata` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read_by_user` tinyint(1) NOT NULL DEFAULT '0',
  `was_sent_success` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_sessions`
--

CREATE TABLE `wp_rm_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rm_sessions`
--

INSERT INTO `wp_rm_sessions` (`id`, `data`, `timestamp`) VALUES
('3nn736rborhuekutm1d627f1b3', '', 1527605363),
('bgcb5205ppmbsban4go20rvgv1', 'rm_sessionform_3_1|a:1:{s:18:\"pfbc-form_3_1-form\";s:11074:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:7:{s:6:\"action\";s:56:\"/wp-content/themes/airpix/images/u12.png?rmcb=1527608134\";s:2:\"id\";s:8:\"form_3_1\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:50:\"rmagic-form rmagic-form-btn-center form-horizontal\";s:4:\"name\";s:7:\"rm_form\";s:6:\"number\";i:1;s:5:\"style\";N;}s:12:\"\0*\0_elements\";a:18:{i:0;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:49:\"<div id=\"rm_stat_container\" style=\"display:none\">\";s:2:\"id\";s:18:\"form_3_1-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:7:\"stat_id\";s:5:\"value\";s:8:\"__uninit\";s:5:\"style\";s:12:\"display:none\";s:2:\"id\";s:18:\"form_3_1-element-1\";}s:8:\"\0*\0label\";s:8:\"RM_Stats\";s:13:\"\0*\0validation\";a:0:{}}i:2;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:18:\"form_3_1-element-2\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:3;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:62:\"<div class=\"rmformpage_form_3_1\" id=\"rm_form_page_form_3_1_1\">\";s:2:\"id\";s:18:\"form_3_1-element-3\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:29:\"<fieldset class=\'rmfieldset\'>\";s:2:\"id\";s:18:\"form_3_1-element-4\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:16:\"Element_Username\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"username\";s:5:\"value\";s:0:\"\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Username\";s:2:\"id\";s:18:\"form_3_1-element-5\";}s:8:\"\0*\0label\";s:8:\"Username\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:6;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:3:\"pwd\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Password\";s:2:\"id\";s:18:\"rm_reg_form_pw_3_1\";s:9:\"minlength\";i:7;s:10:\"labelstyle\";N;s:5:\"style\";N;}s:8:\"\0*\0label\";s:8:\"Password\";s:13:\"\0*\0validation\";a:2:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:17:\"Validation_RegExp\":2:{s:10:\"\0*\0message\";s:55:\"Error: The %element% must be atleast 7 characters long.\";s:10:\"\0*\0pattern\";s:7:\"/.{7,}/\";}}}i:7;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:21:\"password_confirmation\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:16:\"Confirm Password\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:2:\"id\";s:22:\"rm_reg_form_pw_reentry\";}s:8:\"\0*\0label\";s:20:\"Enter password again\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:8;O:17:\"Element_UserEmail\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:8:\"Email_13\";s:11:\"placeholder\";s:5:\"Email\";s:5:\"class\";s:22:\"rm_form_default_fields\";s:8:\"required\";s:0:\"\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-8\";}s:8:\"\0*\0label\";s:5:\"Email\";s:13:\"\0*\0validation\";a:4:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}i:2;O:20:\"Validation_UserEmail\":2:{s:10:\"\0*\0message\";s:26:\"User email already exists.\";s:10:\"\0*\0handler\";O:23:\"RM_User_Email_Validator\":1:{s:11:\"\0*\0field_id\";s:2:\"13\";}}i:3;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}}}i:9;O:13:\"Element_Fname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Fname_14\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-9\";}s:8:\"\0*\0label\";s:10:\"First Name\";s:13:\"\0*\0validation\";a:0:{}}i:10;O:13:\"Element_Lname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Lname_15\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-10\";}s:8:\"\0*\0label\";s:9:\"Last Name\";s:13:\"\0*\0validation\";a:0:{}}i:11;O:14:\"Element_Select\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"name\";s:9:\"Select_16\";s:8:\"required\";s:0:\"\";s:5:\"value\";a:1:{i:0;s:5:\"Pilot\";}s:2:\"id\";s:19:\"form_3_1-element-11\";}s:8:\"\0*\0label\";s:4:\"Role\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:12;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"Textbox_17\";s:11:\"placeholder\";s:24:\"Drone name, model, ..etc\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-12\";}s:8:\"\0*\0label\";s:5:\"Drone\";s:13:\"\0*\0validation\";a:0:{}}i:13;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:11:\"</fieldset>\";s:2:\"id\";s:19:\"form_3_1-element-13\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:14;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:19:\"form_3_1-element-14\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:15;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:2:\"id\";s:28:\"rm_next_form_page_button_3_1\";s:5:\"class\";s:27:\"rm_next_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:16;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:5:\"class\";s:31:\"rm_noscript_btn btn btn-primary\";s:2:\"id\";s:19:\"form_3_1-element-16\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:17;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:5280:\"                \r\n   <pre class=\'rm-pre-wrapper-for-script-tags\'><script>\r\n                \r\nif (typeof window[\'rm_multipage\'] == \'undefined\') {\r\n\r\n    rm_multipage = {\r\n        global_page_no_form_3_1: 1\r\n    };\r\n\r\n}\r\nelse\r\n rm_multipage.global_page_no_form_3_1 = 1;\r\n\r\nfunction gotonext_form_3_1(){\r\n	\r\n        maxpage = 1 ;\r\n                jQuery.validator.setDefaults({errorClass: \'rm-form-field-invalid-msg\',\r\n                                        ignore:\':hidden,.ignore\',wrapper:\'div\',\r\n                                       errorPlacement: function(error, element) {\r\n                                                            //error.appendTo(element.closest(\'.rminput\'));\r\n                                                            error.appendTo(element.closest(\'div\'));\r\n                                                          },\r\n                                      rules: {        \r\n        password: {\r\n            required: true,\r\n            minlength: 7\r\n        },\r\n        password_confirmation: {\r\n            required: true,\r\n            equalTo: \"#rm_reg_form_pw_3_1\"\r\n        }\r\n            },\r\n        messages: {\r\n        password_confirmation: {\r\n            equalTo: \"Passwords do not match\"\r\n        }\r\n            }\r\n                                    });\r\n        if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length > 0)\r\n        {\r\n            var valid = jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").valid();\r\n                       \r\n            if(!valid)\r\n            {\r\n                setTimeout(function(){ jQuery(\"#rm_next_form_page_button_3_1\").removeProp(\'disabled\');}, 1000);\r\n                var error_element= jQuery(document).find(\"input.rm-form-field-invalid-msg\")[0];\r\n                if(error_element){\r\n                    error_element.focus();\r\n                }\r\n                return false;\r\n            }\r\n        }\r\n        \r\n        /* Server validation for Username and Email field */\r\n        for(var i=0;i<rm_validation_attr.length;i++){\r\n            var validation_flag= true;\r\n            jQuery(\"[\" + rm_validation_attr[i] + \"=0]\").each(function(){\r\n               validation_flag= false;\r\n               return false;\r\n            });\r\n            \r\n            if(!validation_flag)\r\n              return;\r\n        }\r\n        \r\n        \r\n        rm_multipage.global_page_no_form_3_1++;\r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n        \r\n            if(maxpage <= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1++;\r\n        }\r\n            \r\n	\r\n	if(maxpage < rm_multipage.global_page_no_form_3_1)\r\n	{\r\n		rm_multipage.global_page_no_form_3_1 = maxpage;\r\n		jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n		return;\r\n	}\r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});  \r\n    jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',false);\r\n        rmInitGoogleApi();\r\n}\r\nfunction gotoprev_form_3_1(){\r\n	\r\n	maxpage = 1 ;\r\n	rm_multipage.global_page_no_form_3_1--;\r\n        jQuery(\"#rm_next_form_page_button_3_1\").attr(\'type\',\'button\');        \r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n            if(1 >= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        rm_multipage.global_page_no_form_3_1 = 1;\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1--;\r\n        }\r\n        \r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});\r\n        \r\n        if(rm_multipage.global_page_no_form_3_1 <= 1)\r\n        {\r\n            rm_multipage.global_page_no_form_3_1 = 1;\r\n            jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n        }\r\n}\r\n\r\n\r\njQuery(document).ready( function(){\r\n\r\n})          \r\n</script></pre>\";s:2:\"id\";s:19:\"form_3_1-element-17\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";}rm_sessionrm_login_form|a:2:{s:18:\"pfbc-form_3_1-form\";s:11074:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:7:{s:6:\"action\";s:56:\"/wp-content/themes/airpix/images/u12.png?rmcb=1527608134\";s:2:\"id\";s:8:\"form_3_1\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:50:\"rmagic-form rmagic-form-btn-center form-horizontal\";s:4:\"name\";s:7:\"rm_form\";s:6:\"number\";i:1;s:5:\"style\";N;}s:12:\"\0*\0_elements\";a:18:{i:0;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:49:\"<div id=\"rm_stat_container\" style=\"display:none\">\";s:2:\"id\";s:18:\"form_3_1-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:7:\"stat_id\";s:5:\"value\";s:8:\"__uninit\";s:5:\"style\";s:12:\"display:none\";s:2:\"id\";s:18:\"form_3_1-element-1\";}s:8:\"\0*\0label\";s:8:\"RM_Stats\";s:13:\"\0*\0validation\";a:0:{}}i:2;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:18:\"form_3_1-element-2\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:3;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:62:\"<div class=\"rmformpage_form_3_1\" id=\"rm_form_page_form_3_1_1\">\";s:2:\"id\";s:18:\"form_3_1-element-3\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:29:\"<fieldset class=\'rmfieldset\'>\";s:2:\"id\";s:18:\"form_3_1-element-4\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:16:\"Element_Username\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"username\";s:5:\"value\";s:0:\"\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Username\";s:2:\"id\";s:18:\"form_3_1-element-5\";}s:8:\"\0*\0label\";s:8:\"Username\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:6;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:3:\"pwd\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Password\";s:2:\"id\";s:18:\"rm_reg_form_pw_3_1\";s:9:\"minlength\";i:7;s:10:\"labelstyle\";N;s:5:\"style\";N;}s:8:\"\0*\0label\";s:8:\"Password\";s:13:\"\0*\0validation\";a:2:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:17:\"Validation_RegExp\":2:{s:10:\"\0*\0message\";s:55:\"Error: The %element% must be atleast 7 characters long.\";s:10:\"\0*\0pattern\";s:7:\"/.{7,}/\";}}}i:7;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:21:\"password_confirmation\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:16:\"Confirm Password\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:2:\"id\";s:22:\"rm_reg_form_pw_reentry\";}s:8:\"\0*\0label\";s:20:\"Enter password again\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:8;O:17:\"Element_UserEmail\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:8:\"Email_13\";s:11:\"placeholder\";s:5:\"Email\";s:5:\"class\";s:22:\"rm_form_default_fields\";s:8:\"required\";s:0:\"\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-8\";}s:8:\"\0*\0label\";s:5:\"Email\";s:13:\"\0*\0validation\";a:4:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}i:2;O:20:\"Validation_UserEmail\":2:{s:10:\"\0*\0message\";s:26:\"User email already exists.\";s:10:\"\0*\0handler\";O:23:\"RM_User_Email_Validator\":1:{s:11:\"\0*\0field_id\";s:2:\"13\";}}i:3;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}}}i:9;O:13:\"Element_Fname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Fname_14\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-9\";}s:8:\"\0*\0label\";s:10:\"First Name\";s:13:\"\0*\0validation\";a:0:{}}i:10;O:13:\"Element_Lname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Lname_15\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-10\";}s:8:\"\0*\0label\";s:9:\"Last Name\";s:13:\"\0*\0validation\";a:0:{}}i:11;O:14:\"Element_Select\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"name\";s:9:\"Select_16\";s:8:\"required\";s:0:\"\";s:5:\"value\";a:1:{i:0;s:5:\"Pilot\";}s:2:\"id\";s:19:\"form_3_1-element-11\";}s:8:\"\0*\0label\";s:4:\"Role\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:12;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"Textbox_17\";s:11:\"placeholder\";s:24:\"Drone name, model, ..etc\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-12\";}s:8:\"\0*\0label\";s:5:\"Drone\";s:13:\"\0*\0validation\";a:0:{}}i:13;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:11:\"</fieldset>\";s:2:\"id\";s:19:\"form_3_1-element-13\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:14;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:19:\"form_3_1-element-14\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:15;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:2:\"id\";s:28:\"rm_next_form_page_button_3_1\";s:5:\"class\";s:27:\"rm_next_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:16;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:5:\"class\";s:31:\"rm_noscript_btn btn btn-primary\";s:2:\"id\";s:19:\"form_3_1-element-16\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:17;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:5280:\"                \r\n   <pre class=\'rm-pre-wrapper-for-script-tags\'><script>\r\n                \r\nif (typeof window[\'rm_multipage\'] == \'undefined\') {\r\n\r\n    rm_multipage = {\r\n        global_page_no_form_3_1: 1\r\n    };\r\n\r\n}\r\nelse\r\n rm_multipage.global_page_no_form_3_1 = 1;\r\n\r\nfunction gotonext_form_3_1(){\r\n	\r\n        maxpage = 1 ;\r\n                jQuery.validator.setDefaults({errorClass: \'rm-form-field-invalid-msg\',\r\n                                        ignore:\':hidden,.ignore\',wrapper:\'div\',\r\n                                       errorPlacement: function(error, element) {\r\n                                                            //error.appendTo(element.closest(\'.rminput\'));\r\n                                                            error.appendTo(element.closest(\'div\'));\r\n                                                          },\r\n                                      rules: {        \r\n        password: {\r\n            required: true,\r\n            minlength: 7\r\n        },\r\n        password_confirmation: {\r\n            required: true,\r\n            equalTo: \"#rm_reg_form_pw_3_1\"\r\n        }\r\n            },\r\n        messages: {\r\n        password_confirmation: {\r\n            equalTo: \"Passwords do not match\"\r\n        }\r\n            }\r\n                                    });\r\n        if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length > 0)\r\n        {\r\n            var valid = jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").valid();\r\n                       \r\n            if(!valid)\r\n            {\r\n                setTimeout(function(){ jQuery(\"#rm_next_form_page_button_3_1\").removeProp(\'disabled\');}, 1000);\r\n                var error_element= jQuery(document).find(\"input.rm-form-field-invalid-msg\")[0];\r\n                if(error_element){\r\n                    error_element.focus();\r\n                }\r\n                return false;\r\n            }\r\n        }\r\n        \r\n        /* Server validation for Username and Email field */\r\n        for(var i=0;i<rm_validation_attr.length;i++){\r\n            var validation_flag= true;\r\n            jQuery(\"[\" + rm_validation_attr[i] + \"=0]\").each(function(){\r\n               validation_flag= false;\r\n               return false;\r\n            });\r\n            \r\n            if(!validation_flag)\r\n              return;\r\n        }\r\n        \r\n        \r\n        rm_multipage.global_page_no_form_3_1++;\r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n        \r\n            if(maxpage <= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1++;\r\n        }\r\n            \r\n	\r\n	if(maxpage < rm_multipage.global_page_no_form_3_1)\r\n	{\r\n		rm_multipage.global_page_no_form_3_1 = maxpage;\r\n		jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n		return;\r\n	}\r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});  \r\n    jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',false);\r\n        rmInitGoogleApi();\r\n}\r\nfunction gotoprev_form_3_1(){\r\n	\r\n	maxpage = 1 ;\r\n	rm_multipage.global_page_no_form_3_1--;\r\n        jQuery(\"#rm_next_form_page_button_3_1\").attr(\'type\',\'button\');        \r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n            if(1 >= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        rm_multipage.global_page_no_form_3_1 = 1;\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1--;\r\n        }\r\n        \r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});\r\n        \r\n        if(rm_multipage.global_page_no_form_3_1 <= 1)\r\n        {\r\n            rm_multipage.global_page_no_form_3_1 = 1;\r\n            jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n        }\r\n}\r\n\r\n\r\njQuery(document).ready( function(){\r\n\r\n})          \r\n</script></pre>\";s:2:\"id\";s:19:\"form_3_1-element-17\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";s:23:\"pfbc-rm_login_form-form\";s:2029:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:4:{s:6:\"action\";s:0:\"\";s:2:\"id\";s:13:\"rm_login_form\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:15:\"form-horizontal\";}s:12:\"\0*\0_elements\";a:6:{i:0;O:14:\"Element_Hidden\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:6:\"hidden\";s:4:\"name\";s:7:\"rm_slug\";s:5:\"value\";s:13:\"rm_login_form\";s:2:\"id\";s:23:\"rm_login_form-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"username\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:14:\"Enter Username\";s:2:\"id\";s:23:\"rm_login_form-element-1\";}s:8:\"\0*\0label\";s:8:\"Username\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:2;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:3:\"pwd\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:14:\"Enter Password\";s:2:\"id\";s:23:\"rm_login_form-element-2\";}s:8:\"\0*\0label\";s:8:\"Password\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:3;O:16:\"Element_Checkbox\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:8:\"checkbox\";s:4:\"name\";s:10:\"remember[]\";s:5:\"value\";a:1:{i:0;i:1;}s:2:\"id\";s:23:\"rm_login_form-element-3\";}s:8:\"\0*\0label\";s:11:\"Remember me\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:5:\"Login\";s:4:\"name\";s:6:\"submit\";s:2:\"id\";s:13:\"rm_submit_btn\";s:5:\"class\";s:35:\"rm_btn rm_login_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:136:\"<div class=\"rm_forgot_pass\"><a href=\"https://airpix.local/wp-login.php?action=lostpassword\" target=\"blank\">Lost your password?</a></div>\";s:2:\"id\";s:23:\"rm_login_form-element-5\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";}', 1527608134),
('d4mq7tifcvr90t2moq74c926t2', '', 1527604533),
('fnsvm631s86ldisqdt8hum2c41', 'rm_sessionform_3_1|a:1:{s:18:\"pfbc-form_3_1-form\";s:11019:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:7:{s:6:\"action\";s:17:\"/?rmcb=1527605129\";s:2:\"id\";s:8:\"form_3_1\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:50:\"rmagic-form rmagic-form-btn-center form-horizontal\";s:4:\"name\";s:7:\"rm_form\";s:6:\"number\";i:1;s:5:\"style\";N;}s:12:\"\0*\0_elements\";a:18:{i:0;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:49:\"<div id=\"rm_stat_container\" style=\"display:none\">\";s:2:\"id\";s:18:\"form_3_1-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:7:\"stat_id\";s:5:\"value\";s:8:\"__uninit\";s:5:\"style\";s:12:\"display:none\";s:2:\"id\";s:18:\"form_3_1-element-1\";}s:8:\"\0*\0label\";s:8:\"RM_Stats\";s:13:\"\0*\0validation\";a:0:{}}i:2;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:18:\"form_3_1-element-2\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:3;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:62:\"<div class=\"rmformpage_form_3_1\" id=\"rm_form_page_form_3_1_1\">\";s:2:\"id\";s:18:\"form_3_1-element-3\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:29:\"<fieldset class=\'rmfieldset\'>\";s:2:\"id\";s:18:\"form_3_1-element-4\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:16:\"Element_Username\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"username\";s:5:\"value\";s:0:\"\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Username\";s:2:\"id\";s:18:\"form_3_1-element-5\";}s:8:\"\0*\0label\";s:8:\"Username\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:6;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:3:\"pwd\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Password\";s:2:\"id\";s:18:\"rm_reg_form_pw_3_1\";s:9:\"minlength\";i:7;s:10:\"labelstyle\";N;s:5:\"style\";N;}s:8:\"\0*\0label\";s:8:\"Password\";s:13:\"\0*\0validation\";a:2:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:17:\"Validation_RegExp\":2:{s:10:\"\0*\0message\";s:55:\"Error: The %element% must be atleast 7 characters long.\";s:10:\"\0*\0pattern\";s:7:\"/.{7,}/\";}}}i:7;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:21:\"password_confirmation\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:16:\"Confirm Password\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:2:\"id\";s:22:\"rm_reg_form_pw_reentry\";}s:8:\"\0*\0label\";s:20:\"Enter password again\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:8;O:17:\"Element_UserEmail\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:8:\"Email_13\";s:11:\"placeholder\";s:5:\"Email\";s:5:\"class\";s:22:\"rm_form_default_fields\";s:8:\"required\";s:0:\"\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-8\";}s:8:\"\0*\0label\";s:5:\"Email\";s:13:\"\0*\0validation\";a:4:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}i:2;O:20:\"Validation_UserEmail\":2:{s:10:\"\0*\0message\";s:26:\"User email already exists.\";s:10:\"\0*\0handler\";O:23:\"RM_User_Email_Validator\":1:{s:11:\"\0*\0field_id\";s:2:\"13\";}}i:3;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}}}i:9;O:13:\"Element_Fname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Fname_14\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-9\";}s:8:\"\0*\0label\";s:10:\"First Name\";s:13:\"\0*\0validation\";a:0:{}}i:10;O:13:\"Element_Lname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Lname_15\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-10\";}s:8:\"\0*\0label\";s:9:\"Last Name\";s:13:\"\0*\0validation\";a:0:{}}i:11;O:14:\"Element_Select\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"name\";s:9:\"Select_16\";s:8:\"required\";s:0:\"\";s:5:\"value\";a:0:{}s:2:\"id\";s:19:\"form_3_1-element-11\";}s:8:\"\0*\0label\";s:4:\"Role\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:12;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"Textbox_17\";s:11:\"placeholder\";s:24:\"Drone name, model, ..etc\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-12\";}s:8:\"\0*\0label\";s:5:\"Drone\";s:13:\"\0*\0validation\";a:0:{}}i:13;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:11:\"</fieldset>\";s:2:\"id\";s:19:\"form_3_1-element-13\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:14;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:19:\"form_3_1-element-14\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:15;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:2:\"id\";s:28:\"rm_next_form_page_button_3_1\";s:5:\"class\";s:27:\"rm_next_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:16;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:5:\"class\";s:31:\"rm_noscript_btn btn btn-primary\";s:2:\"id\";s:19:\"form_3_1-element-16\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:17;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:5280:\"                \r\n   <pre class=\'rm-pre-wrapper-for-script-tags\'><script>\r\n                \r\nif (typeof window[\'rm_multipage\'] == \'undefined\') {\r\n\r\n    rm_multipage = {\r\n        global_page_no_form_3_1: 1\r\n    };\r\n\r\n}\r\nelse\r\n rm_multipage.global_page_no_form_3_1 = 1;\r\n\r\nfunction gotonext_form_3_1(){\r\n	\r\n        maxpage = 1 ;\r\n                jQuery.validator.setDefaults({errorClass: \'rm-form-field-invalid-msg\',\r\n                                        ignore:\':hidden,.ignore\',wrapper:\'div\',\r\n                                       errorPlacement: function(error, element) {\r\n                                                            //error.appendTo(element.closest(\'.rminput\'));\r\n                                                            error.appendTo(element.closest(\'div\'));\r\n                                                          },\r\n                                      rules: {        \r\n        password: {\r\n            required: true,\r\n            minlength: 7\r\n        },\r\n        password_confirmation: {\r\n            required: true,\r\n            equalTo: \"#rm_reg_form_pw_3_1\"\r\n        }\r\n            },\r\n        messages: {\r\n        password_confirmation: {\r\n            equalTo: \"Passwords do not match\"\r\n        }\r\n            }\r\n                                    });\r\n        if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length > 0)\r\n        {\r\n            var valid = jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").valid();\r\n                       \r\n            if(!valid)\r\n            {\r\n                setTimeout(function(){ jQuery(\"#rm_next_form_page_button_3_1\").removeProp(\'disabled\');}, 1000);\r\n                var error_element= jQuery(document).find(\"input.rm-form-field-invalid-msg\")[0];\r\n                if(error_element){\r\n                    error_element.focus();\r\n                }\r\n                return false;\r\n            }\r\n        }\r\n        \r\n        /* Server validation for Username and Email field */\r\n        for(var i=0;i<rm_validation_attr.length;i++){\r\n            var validation_flag= true;\r\n            jQuery(\"[\" + rm_validation_attr[i] + \"=0]\").each(function(){\r\n               validation_flag= false;\r\n               return false;\r\n            });\r\n            \r\n            if(!validation_flag)\r\n              return;\r\n        }\r\n        \r\n        \r\n        rm_multipage.global_page_no_form_3_1++;\r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n        \r\n            if(maxpage <= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1++;\r\n        }\r\n            \r\n	\r\n	if(maxpage < rm_multipage.global_page_no_form_3_1)\r\n	{\r\n		rm_multipage.global_page_no_form_3_1 = maxpage;\r\n		jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n		return;\r\n	}\r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});  \r\n    jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',false);\r\n        rmInitGoogleApi();\r\n}\r\nfunction gotoprev_form_3_1(){\r\n	\r\n	maxpage = 1 ;\r\n	rm_multipage.global_page_no_form_3_1--;\r\n        jQuery(\"#rm_next_form_page_button_3_1\").attr(\'type\',\'button\');        \r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n            if(1 >= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        rm_multipage.global_page_no_form_3_1 = 1;\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1--;\r\n        }\r\n        \r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});\r\n        \r\n        if(rm_multipage.global_page_no_form_3_1 <= 1)\r\n        {\r\n            rm_multipage.global_page_no_form_3_1 = 1;\r\n            jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n        }\r\n}\r\n\r\n\r\njQuery(document).ready( function(){\r\n\r\n})          \r\n</script></pre>\";s:2:\"id\";s:19:\"form_3_1-element-17\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";}rm_sessionrm_login_form|a:0:{}rm_sessionadd-field|a:0:{}', 1527608147),
('rgovvmajfpahvso3k89mn9duo2', '', 1527605576);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_stats`
--

CREATE TABLE `wp_rm_stats` (
  `stat_id` int(11) NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ua_string` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visited_on` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted_on` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `submission_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rm_stats`
--

INSERT INTO `wp_rm_stats` (`stat_id`, `form_id`, `user_ip`, `ua_string`, `browser_name`, `visited_on`, `submitted_on`, `time_taken`, `submission_id`) VALUES
(1, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294649', NULL, NULL, NULL),
(2, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294662', NULL, NULL, NULL),
(3, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294670', NULL, NULL, NULL),
(4, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294804', NULL, NULL, NULL),
(5, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294805', NULL, NULL, NULL),
(6, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294836', NULL, NULL, NULL),
(7, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294855', NULL, NULL, NULL),
(8, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294867', NULL, NULL, NULL),
(9, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294870', NULL, NULL, NULL),
(10, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294873', NULL, NULL, NULL),
(11, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526294875', NULL, NULL, NULL),
(12, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526435339', NULL, NULL, NULL),
(13, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436215', NULL, NULL, NULL),
(14, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436287', NULL, NULL, NULL),
(15, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436571', NULL, NULL, NULL),
(16, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436685', NULL, NULL, NULL),
(17, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436769', NULL, NULL, NULL),
(18, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436779', NULL, NULL, NULL),
(19, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436806', NULL, NULL, NULL),
(20, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436866', NULL, NULL, NULL),
(21, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436936', NULL, NULL, NULL),
(22, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436977', NULL, NULL, NULL),
(23, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526436983', NULL, NULL, NULL),
(24, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526437066', NULL, NULL, NULL),
(25, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526437092', NULL, NULL, NULL),
(26, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526437096', NULL, NULL, NULL),
(27, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526437111', NULL, NULL, NULL),
(28, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527321200', NULL, NULL, NULL),
(29, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527321226', NULL, NULL, NULL),
(30, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527321241', NULL, NULL, NULL),
(31, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527391253', NULL, NULL, NULL),
(32, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527391320', NULL, NULL, NULL),
(33, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527391336', NULL, NULL, NULL),
(34, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527391346', NULL, NULL, NULL),
(35, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527392621', NULL, NULL, NULL),
(36, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527392755', NULL, NULL, NULL),
(37, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527402994', NULL, NULL, NULL),
(38, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527402998', NULL, NULL, NULL),
(39, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527403423', NULL, NULL, NULL),
(40, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527403774', NULL, NULL, NULL),
(41, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527403875', NULL, NULL, NULL),
(42, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527403884', NULL, NULL, NULL),
(43, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527404158', NULL, NULL, NULL),
(44, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527404231', NULL, NULL, NULL),
(45, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527404303', NULL, NULL, NULL),
(46, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527404360', NULL, NULL, NULL),
(47, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527404422', NULL, NULL, NULL),
(48, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527404969', NULL, NULL, NULL),
(49, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527405033', NULL, NULL, NULL),
(50, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527405404', NULL, NULL, NULL),
(51, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527405806', NULL, NULL, NULL),
(52, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527405879', NULL, NULL, NULL),
(53, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527405931', NULL, NULL, NULL),
(54, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406080', NULL, NULL, NULL),
(55, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406361', NULL, NULL, NULL),
(56, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406401', NULL, NULL, NULL),
(57, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406568', NULL, NULL, NULL),
(58, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406591', NULL, NULL, NULL),
(59, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406660', NULL, NULL, NULL),
(60, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406743', NULL, NULL, NULL),
(61, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527406933', NULL, NULL, NULL),
(62, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527407222', NULL, NULL, NULL),
(63, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527407295', NULL, NULL, NULL),
(64, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527407607', NULL, NULL, NULL),
(65, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527407622', NULL, NULL, NULL),
(66, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527407662', NULL, NULL, NULL),
(67, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408340', NULL, NULL, NULL),
(68, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408398', NULL, NULL, NULL),
(69, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408426', NULL, NULL, NULL),
(70, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408497', NULL, NULL, NULL),
(71, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408525', NULL, NULL, NULL),
(72, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408580', NULL, NULL, NULL),
(73, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408586', NULL, NULL, NULL),
(74, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408601', NULL, NULL, NULL),
(75, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408613', NULL, NULL, NULL),
(76, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408627', NULL, NULL, NULL),
(77, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408738', NULL, NULL, NULL),
(78, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408954', NULL, NULL, NULL),
(79, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527408968', NULL, NULL, NULL),
(80, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409175', NULL, NULL, NULL),
(81, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409313', NULL, NULL, NULL),
(82, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409342', NULL, NULL, NULL),
(83, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409360', NULL, NULL, NULL),
(84, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409392', NULL, NULL, NULL),
(85, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409421', NULL, NULL, NULL),
(86, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409462', NULL, NULL, NULL),
(87, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409547', NULL, NULL, NULL),
(88, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409619', NULL, NULL, NULL),
(89, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409625', NULL, NULL, NULL),
(90, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409651', NULL, NULL, NULL),
(91, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409663', NULL, NULL, NULL),
(92, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409674', NULL, NULL, NULL),
(93, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409792', NULL, NULL, NULL),
(94, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409794', NULL, NULL, NULL),
(95, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409924', NULL, NULL, NULL),
(96, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527409938', NULL, NULL, NULL),
(97, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410048', NULL, NULL, NULL),
(98, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410062', NULL, NULL, NULL),
(99, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410078', NULL, NULL, NULL),
(100, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410107', NULL, NULL, NULL),
(101, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410149', NULL, NULL, NULL),
(102, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410158', NULL, NULL, NULL),
(103, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410190', NULL, NULL, NULL),
(104, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410195', NULL, NULL, NULL),
(105, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410331', NULL, NULL, NULL),
(106, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410345', NULL, NULL, NULL),
(107, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410347', NULL, NULL, NULL),
(108, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410450', NULL, NULL, NULL),
(109, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410461', NULL, NULL, NULL),
(110, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410511', NULL, NULL, NULL),
(111, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410514', NULL, NULL, NULL),
(112, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410656', NULL, NULL, NULL),
(113, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410671', NULL, NULL, NULL),
(114, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410683', NULL, NULL, NULL),
(115, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410838', NULL, NULL, NULL),
(116, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410848', NULL, NULL, NULL),
(117, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410907', NULL, NULL, NULL),
(118, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527410910', NULL, NULL, NULL),
(119, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527411138', NULL, NULL, NULL),
(120, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527411779', NULL, NULL, NULL),
(121, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527411901', NULL, NULL, NULL),
(122, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527411957', NULL, NULL, NULL),
(123, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527411994', NULL, NULL, NULL),
(124, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412263', NULL, NULL, NULL),
(125, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412503', NULL, NULL, NULL),
(126, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412566', NULL, NULL, NULL),
(127, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412662', NULL, NULL, NULL),
(128, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412734', NULL, NULL, NULL),
(129, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412772', NULL, NULL, NULL),
(130, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527412971', NULL, NULL, NULL),
(131, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413166', NULL, NULL, NULL),
(132, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413187', NULL, NULL, NULL),
(133, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413191', NULL, NULL, NULL),
(134, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413276', NULL, NULL, NULL),
(135, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413418', NULL, NULL, NULL),
(136, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413628', NULL, NULL, NULL),
(137, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413705', NULL, NULL, NULL),
(138, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413906', NULL, NULL, NULL),
(139, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413915', NULL, NULL, NULL),
(140, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413946', NULL, NULL, NULL),
(141, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527413971', NULL, NULL, NULL),
(142, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527414023', NULL, NULL, NULL),
(143, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527414564', NULL, NULL, NULL),
(144, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527414570', NULL, NULL, NULL),
(145, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527414902', NULL, NULL, NULL),
(146, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415024', NULL, NULL, NULL),
(147, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415155', NULL, NULL, NULL),
(148, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415167', NULL, NULL, NULL),
(149, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415555', NULL, NULL, NULL),
(150, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415606', NULL, NULL, NULL),
(151, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415614', NULL, NULL, NULL),
(152, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415744', NULL, NULL, NULL),
(153, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415750', NULL, NULL, NULL),
(154, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415882', NULL, NULL, NULL),
(155, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415889', NULL, NULL, NULL),
(156, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415893', NULL, NULL, NULL),
(157, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527415909', NULL, NULL, NULL),
(158, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527604526', NULL, NULL, NULL),
(159, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527604528', '1527604948', 420, NULL),
(160, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527604962', NULL, NULL, NULL),
(161, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527604969', '1527605159', 190, NULL),
(162, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605121', NULL, NULL, NULL),
(163, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605166', '1527605248', 82, NULL),
(164, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605264', '1527605288', 24, NULL),
(165, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605299', '1527605363', 64, NULL),
(166, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605370', '1527605410', 40, NULL),
(167, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605414', NULL, NULL, NULL),
(168, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605518', NULL, NULL, NULL),
(169, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605573', '1527605597', 24, NULL),
(170, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605740', '1527605765', 25, NULL),
(171, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605855', NULL, NULL, NULL),
(172, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527605919', '1527606222', 303, NULL),
(173, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527606536', '1527607154', 618, NULL),
(174, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527607166', '1527607230', 64, NULL),
(175, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527607234', '1527608045', 811, NULL),
(176, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527608050', NULL, NULL, NULL),
(177, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527608068', '1527608129', 61, NULL),
(178, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Chrome', '1527608134', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_submissions`
--

CREATE TABLE `wp_rm_submissions` (
  `submission_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `user_email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_id` int(6) NOT NULL DEFAULT '0',
  `last_child` int(6) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_on` datetime DEFAULT NULL,
  `unique_token` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rm_submissions`
--

INSERT INTO `wp_rm_submissions` (`submission_id`, `form_id`, `data`, `user_email`, `child_id`, `last_child`, `is_read`, `submitted_on`, `unique_token`) VALUES
(1, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:11:\"User test 1\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:9:\"User test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"ggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user1@example.com', 0, 1, 0, '2018-05-29 14:42:28', '315276049487807'),
(2, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user2@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"ggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user2@example.com', 0, 2, 0, '2018-05-29 14:43:13', '315276049935779'),
(3, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user2@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"ggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user2@example.com', 0, 3, 0, '2018-05-29 14:45:59', '315276051596410'),
(4, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"Test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"ggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user1@example.com', 0, 4, 0, '2018-05-29 14:46:34', '315276051949714'),
(5, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"Test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"ggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user1@example.com', 0, 5, 0, '2018-05-29 14:47:15', '315276052351662'),
(6, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"Test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"ggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user1@example.com', 0, 6, 0, '2018-05-29 14:47:28', '315276052487572'),
(7, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"user1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"Test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'user1@example.com', 0, 7, 0, '2018-05-29 14:48:08', '315276052883084'),
(8, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:18:\"pilot1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:6:\"MH-370\";s:4:\"type\";s:7:\"Textbox\";}}', 'pilot1@example.com', 0, 8, 0, '2018-05-29 14:49:23', '315276053633885'),
(9, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:19:\"renter1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:3:\"N/A\";s:4:\"type\";s:7:\"Textbox\";}}', 'renter1@example.com', 0, 9, 0, '2018-05-29 14:50:10', '315276054102833'),
(10, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:18:\"renter@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'renter@example.com', 0, 10, 0, '2018-05-29 14:53:17', '315276055971219'),
(11, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:19:\"example@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:3:\"tst\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'example@example.com', 0, 11, 0, '2018-05-29 14:56:05', '31527605765997'),
(12, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"gasds@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:5:\"terst\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:5:\"rtest\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'gasds@example.com', 0, 12, 0, '2018-05-29 14:59:08', '315276059484353'),
(13, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"gasds@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:5:\"terst\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:5:\"rtest\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'gasds@example.com', 0, 13, 0, '2018-05-29 15:00:15', '315276060151884'),
(14, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"gasds@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:5:\"terst\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:5:\"rtest\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'gasds@example.com', 0, 14, 0, '2018-05-29 15:00:59', '315276060593302'),
(15, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:17:\"gasds@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:5:\"terst\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:5:\"rtest\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:4:\"gggg\";s:4:\"type\";s:7:\"Textbox\";}}', 'gasds@example.com', 0, 15, 0, '2018-05-29 15:03:42', '315276062225798'),
(16, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 16, 0, '2018-05-29 15:09:36', '315276065768390'),
(17, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 17, 0, '2018-05-29 15:10:31', '315276066319401'),
(18, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 18, 0, '2018-05-29 15:14:47', '315276068876798'),
(19, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 19, 0, '2018-05-29 15:15:12', '315276069123356'),
(20, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 20, 0, '2018-05-29 15:15:46', '315276069468995'),
(21, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 21, 0, '2018-05-29 15:16:52', '315276070122981'),
(22, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 22, 0, '2018-05-29 15:17:37', '315276070572416'),
(23, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:13:\"asda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:3:\"tes\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:4:\"test\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"ff\";s:4:\"type\";s:7:\"Textbox\";}}', 'asda@eaaa.com', 0, 23, 0, '2018-05-29 15:19:13', '315276071535289'),
(24, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:15:\"asdsda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:2:\"sd\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:8:\"sasdfsdf\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:5:\"sdsds\";s:4:\"type\";s:7:\"Textbox\";}}', 'asdsda@eaaa.com', 0, 24, 0, '2018-05-29 15:19:57', '31527607197343'),
(25, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:15:\"asdsda@eaaa.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:2:\"sd\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:8:\"sasdfsdf\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:5:\"sdsds\";s:4:\"type\";s:7:\"Textbox\";}}', 'asdsda@eaaa.com', 0, 25, 0, '2018-05-29 15:20:30', '315276072301117'),
(26, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:18:\"pilot1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:6:\"Plilot\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:5:\"Pilot\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:6:\"MH-370\";s:4:\"type\";s:7:\"Textbox\";}}', 'pilot1@example.com', 0, 26, 0, '2018-05-29 15:34:05', '315276080455308'),
(27, 3, 'a:5:{i:13;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:19:\"renter1@example.com\";s:4:\"type\";s:5:\"Email\";}i:14;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"First Name\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:5:\"Fname\";}i:15;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Last Name\";s:5:\"value\";s:6:\"renter\";s:4:\"type\";s:5:\"Lname\";}i:16;O:8:\"stdClass\":3:{s:5:\"label\";s:4:\"Role\";s:5:\"value\";s:6:\"Renter\";s:4:\"type\";s:6:\"Select\";}i:17;O:8:\"stdClass\":3:{s:5:\"label\";s:5:\"Drone\";s:5:\"value\";s:2:\"NA\";s:4:\"type\";s:7:\"Textbox\";}}', 'renter1@example.com', 0, 27, 0, '2018-05-29 15:35:29', '315276081298834');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_submission_fields`
--

CREATE TABLE `wp_rm_submission_fields` (
  `sub_field_id` int(6) UNSIGNED NOT NULL,
  `submission_id` int(6) DEFAULT NULL,
  `field_id` int(6) DEFAULT NULL,
  `form_id` int(6) DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rm_submission_fields`
--

INSERT INTO `wp_rm_submission_fields` (`sub_field_id`, `submission_id`, `field_id`, `form_id`, `value`) VALUES
(1, 1, 13, 3, 'user1@example.com'),
(2, 1, 14, 3, 'User test 1'),
(3, 1, 15, 3, 'User test'),
(4, 1, 16, 3, 'Pilot'),
(5, 1, 17, 3, 'ggg'),
(6, 2, 13, 3, 'user2@example.com'),
(7, 2, 14, 3, 'test'),
(8, 2, 15, 3, 'test'),
(9, 2, 16, 3, 'Pilot'),
(10, 2, 17, 3, 'ggg'),
(11, 3, 13, 3, 'user2@example.com'),
(12, 3, 14, 3, 'test'),
(13, 3, 15, 3, 'test'),
(14, 3, 16, 3, 'Pilot'),
(15, 3, 17, 3, 'ggg'),
(16, 4, 13, 3, 'user1@example.com'),
(17, 4, 14, 3, 'Test'),
(18, 4, 15, 3, 'test'),
(19, 4, 16, 3, 'Pilot'),
(20, 4, 17, 3, 'ggg'),
(21, 5, 13, 3, 'user1@example.com'),
(22, 5, 14, 3, 'Test'),
(23, 5, 15, 3, 'test'),
(24, 5, 16, 3, 'Pilot'),
(25, 5, 17, 3, 'ggg'),
(26, 6, 13, 3, 'user1@example.com'),
(27, 6, 14, 3, 'Test'),
(28, 6, 15, 3, 'test'),
(29, 6, 16, 3, 'Pilot'),
(30, 6, 17, 3, 'ggg'),
(31, 7, 13, 3, 'user1@example.com'),
(32, 7, 14, 3, 'Test'),
(33, 7, 15, 3, 'test'),
(34, 7, 16, 3, 'Pilot'),
(35, 7, 17, 3, 'gggg'),
(36, 8, 13, 3, 'pilot1@example.com'),
(37, 8, 14, 3, 'Pilot'),
(38, 8, 15, 3, 'Pilot'),
(39, 8, 16, 3, 'Pilot'),
(40, 8, 17, 3, 'MH-370'),
(41, 9, 13, 3, 'renter1@example.com'),
(42, 9, 14, 3, 'Renter'),
(43, 9, 15, 3, 'Renter'),
(44, 9, 16, 3, 'Renter'),
(45, 9, 17, 3, 'N/A'),
(46, 10, 13, 3, 'renter@example.com'),
(47, 10, 14, 3, 'test'),
(48, 10, 15, 3, 'test'),
(49, 10, 16, 3, 'Renter'),
(50, 10, 17, 3, 'gggg'),
(51, 11, 13, 3, 'example@example.com'),
(52, 11, 14, 3, 'test'),
(53, 11, 15, 3, 'tst'),
(54, 11, 16, 3, 'Renter'),
(55, 11, 17, 3, 'gggg'),
(56, 12, 13, 3, 'gasds@example.com'),
(57, 12, 14, 3, 'terst'),
(58, 12, 15, 3, 'rtest'),
(59, 12, 16, 3, 'Renter'),
(60, 12, 17, 3, 'gggg'),
(61, 13, 13, 3, 'gasds@example.com'),
(62, 13, 14, 3, 'terst'),
(63, 13, 15, 3, 'rtest'),
(64, 13, 16, 3, 'Renter'),
(65, 13, 17, 3, 'gggg'),
(66, 14, 13, 3, 'gasds@example.com'),
(67, 14, 14, 3, 'terst'),
(68, 14, 15, 3, 'rtest'),
(69, 14, 16, 3, 'Renter'),
(70, 14, 17, 3, 'gggg'),
(71, 15, 13, 3, 'gasds@example.com'),
(72, 15, 14, 3, 'terst'),
(73, 15, 15, 3, 'rtest'),
(74, 15, 16, 3, 'Renter'),
(75, 15, 17, 3, 'gggg'),
(76, 16, 13, 3, 'asda@eaaa.com'),
(77, 16, 14, 3, 'tes'),
(78, 16, 15, 3, 'test'),
(79, 16, 16, 3, 'Renter'),
(80, 16, 17, 3, 'ff'),
(81, 17, 13, 3, 'asda@eaaa.com'),
(82, 17, 14, 3, 'tes'),
(83, 17, 15, 3, 'test'),
(84, 17, 16, 3, 'Renter'),
(85, 17, 17, 3, 'ff'),
(86, 18, 13, 3, 'asda@eaaa.com'),
(87, 18, 14, 3, 'tes'),
(88, 18, 15, 3, 'test'),
(89, 18, 16, 3, 'Renter'),
(90, 18, 17, 3, 'ff'),
(91, 19, 13, 3, 'asda@eaaa.com'),
(92, 19, 14, 3, 'tes'),
(93, 19, 15, 3, 'test'),
(94, 19, 16, 3, 'Renter'),
(95, 19, 17, 3, 'ff'),
(96, 20, 13, 3, 'asda@eaaa.com'),
(97, 20, 14, 3, 'tes'),
(98, 20, 15, 3, 'test'),
(99, 20, 16, 3, 'Renter'),
(100, 20, 17, 3, 'ff'),
(101, 21, 13, 3, 'asda@eaaa.com'),
(102, 21, 14, 3, 'tes'),
(103, 21, 15, 3, 'test'),
(104, 21, 16, 3, 'Renter'),
(105, 21, 17, 3, 'ff'),
(106, 22, 13, 3, 'asda@eaaa.com'),
(107, 22, 14, 3, 'tes'),
(108, 22, 15, 3, 'test'),
(109, 22, 16, 3, 'Renter'),
(110, 22, 17, 3, 'ff'),
(111, 23, 13, 3, 'asda@eaaa.com'),
(112, 23, 14, 3, 'tes'),
(113, 23, 15, 3, 'test'),
(114, 23, 16, 3, 'Renter'),
(115, 23, 17, 3, 'ff'),
(116, 24, 13, 3, 'asdsda@eaaa.com'),
(117, 24, 14, 3, 'sd'),
(118, 24, 15, 3, 'sasdfsdf'),
(119, 24, 16, 3, 'Pilot'),
(120, 24, 17, 3, 'sdsds'),
(121, 25, 13, 3, 'asdsda@eaaa.com'),
(122, 25, 14, 3, 'sd'),
(123, 25, 15, 3, 'sasdfsdf'),
(124, 25, 16, 3, 'Pilot'),
(125, 25, 17, 3, 'sdsds'),
(126, 26, 13, 3, 'pilot1@example.com'),
(127, 26, 14, 3, 'Plilot'),
(128, 26, 15, 3, 'Pilot'),
(129, 26, 16, 3, 'Pilot'),
(130, 26, 17, 3, 'MH-370'),
(131, 27, 13, 3, 'renter1@example.com'),
(132, 27, 14, 3, 'Renter'),
(133, 27, 15, 3, 'renter'),
(134, 27, 16, 3, 'Renter'),
(135, 27, 17, 3, 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_tasks`
--

CREATE TABLE `wp_rm_tasks` (
  `task_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `must_rules` text COLLATE utf8mb4_unicode_ci,
  `any_rules` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `actions` text COLLATE utf8mb4_unicode_ci,
  `task_order` int(6) DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rm_task_exe_log`
--

CREATE TABLE `wp_rm_task_exe_log` (
  `texe_log_id` int(6) UNSIGNED NOT NULL,
  `task_id` int(6) DEFAULT NULL,
  `action` int(6) DEFAULT NULL,
  `sub_ids` longtext COLLATE utf8mb4_unicode_ci,
  `user_ids` longtext COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_social_users`
--

CREATE TABLE `wp_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(29, 1, 0),
(31, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"41b2b30a3ac3f404fb988949d767e3a82605b13d7b2f8aa4753c8691999e9351\";a:4:{s:10:\"expiration\";i:1528814729;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1527605129;}}'),
(676, 39, 'RM_UMETA_SUB_ID', '27'),
(675, 39, 'RM_UMETA_FORM_ID', '3'),
(674, 39, 'rm_user_status', '0'),
(673, 39, 'dismissed_wp_pointers', ''),
(672, 39, 'wp_user_level', '7'),
(671, 39, 'wp_capabilities', 'a:1:{s:6:\"renter\";b:1;}'),
(215, 1, 'closedpostboxes_page', 'a:0:{}'),
(216, 1, 'metaboxhidden_page', 'a:3:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '47'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'signup_ip', 'none'),
(214, 12, 'session_tokens', 'a:1:{s:64:\"25dc58eeca5d3e4e99fa56ec5a592b2f7eeaec4d0fc8fff18089c3aa18ca7e18\";a:4:{s:10:\"expiration\";i:1524543491;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524370691;}}'),
(213, 12, 'wpmem_reg_url', ''),
(209, 12, 'wp_user_level', '7'),
(203, 12, 'comment_shortcuts', 'false'),
(204, 12, 'admin_color', 'fresh'),
(205, 12, 'use_ssl', '0'),
(206, 12, 'show_admin_bar_front', 'true'),
(207, 12, 'locale', ''),
(208, 12, 'wp_capabilities', 'a:1:{s:6:\"renter\";b:1;}'),
(210, 12, 'aripix_user_role', 'renter'),
(211, 12, 'airpix_drone', 'MH-370'),
(212, 12, 'wpmem_reg_ip', '127.0.0.1'),
(202, 12, 'syntax_highlighting', 'true'),
(201, 12, 'rich_editing', 'true'),
(200, 12, 'description', ''),
(199, 12, 'last_name', 'Che'),
(198, 12, 'first_name', 'Thanh'),
(197, 12, 'nickname', 'cqthanh'),
(670, 39, 'locale', ''),
(669, 39, 'show_admin_bar_front', 'true'),
(668, 39, 'use_ssl', '0'),
(667, 39, 'admin_color', 'fresh'),
(666, 39, 'comment_shortcuts', 'false'),
(217, 1, 'user_position', '{\"lat\":\"10.746903\",\"lng\":\"106.67629199999999\"}'),
(664, 39, 'rich_editing', 'true'),
(665, 39, 'syntax_highlighting', 'true'),
(663, 39, 'description', ''),
(662, 39, 'last_name', 'renter'),
(661, 39, 'first_name', 'Renter'),
(660, 39, 'nickname', 'renter'),
(659, 38, 'RM_UMETA_SUB_ID', '26'),
(658, 38, 'RM_UMETA_FORM_ID', '3'),
(657, 38, 'rm_user_status', '0'),
(656, 38, 'dismissed_wp_pointers', ''),
(655, 38, 'wp_user_level', '1'),
(654, 38, 'wp_capabilities', 'a:1:{s:5:\"pilot\";b:1;}'),
(653, 38, 'locale', ''),
(652, 38, 'show_admin_bar_front', 'true'),
(651, 38, 'use_ssl', '0'),
(650, 38, 'admin_color', 'fresh'),
(649, 38, 'comment_shortcuts', 'false'),
(648, 38, 'syntax_highlighting', 'true'),
(647, 38, 'rich_editing', 'true'),
(646, 38, 'description', ''),
(645, 38, 'last_name', 'Pilot'),
(643, 38, 'nickname', 'pilot'),
(644, 38, 'first_name', 'Plilot');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BcWAQRRNDik7K.fBjZxJlz.CeiqaZL/', 'admin', 'cqthanh.zx@gmail.com', '', '2018-04-15 09:30:46', '', 0, 'admin'),
(12, 'cqthanh', '$P$B/iAs21mCEHIb.PgScZ6BBcGY9cZ2a0', 'cqthanh', 'cqthanh@tma.com.vn', '', '2018-04-22 04:17:48', '', 0, 'cqthanh'),
(38, 'pilot', '$P$B9sOCoOr8DRzJKyIaGey893dM49A/n/', 'pilot', 'pilot1@example.com', '', '2018-05-29 15:34:05', '', 0, 'pilot'),
(39, 'renter', '$P$BbPKVEEp/naz0hwlSAMzHlHm7xyLiG/', 'renter', 'renter1@example.com', '', '2018-05-29 15:35:29', '', 0, 'renter');

-- --------------------------------------------------------

--
-- Table structure for table `wp_videos`
--

CREATE TABLE `wp_videos` (
  `id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `display_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` tinytext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `video_format` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` mediumint(9) NOT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_videos`
--

INSERT INTO `wp_videos` (`id`, `user_id`, `display_name`, `download_name`, `thumbnail`, `description`, `video_format`, `duration`, `post_id`, `is_published`, `created_date`, `updated_date`) VALUES
(2, 1, 'Video test', '0181d7880acf0c443a57cd2510a5b81447fa577e1526294832.mp4', '0181d7880acf0c443a57cd2510a5b81447fa577e1526294832.png', 'Video description', 'mp4', '1:00', 44, 1, '2018-05-14 10:47:13', '2018-05-14 10:47:13'),
(3, 1, 'Animated Product Demo Video - Treatful', '59669c8490a1fecf1ae0bffa9e21fdb4cf0768261527415053.mp4', '59669c8490a1fecf1ae0bffa9e21fdb4cf0768261527415053.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'mp4', '1:00', 48, 1, '2018-05-27 09:57:33', '2018-05-27 09:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfront_ure_login_redirect`
--

CREATE TABLE `wp_wpfront_ure_login_redirect` (
  `id` bigint(20) NOT NULL,
  `role` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `url` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deny_wpadmin` tinyint(1) DEFAULT NULL,
  `disable_toolbar` tinyint(1) DEFAULT NULL,
  `logout_url` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfront_ure_options`
--

CREATE TABLE `wp_wpfront_ure_options` (
  `id` bigint(20) NOT NULL,
  `option_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_wpfront_ure_options`
--

INSERT INTO `wp_wpfront_ure_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'wp_wpfront_ure_options-db-version', '2.14.1'),
(2, 'attachment_capabilities_processed', '1'),
(3, 'user_permission_capabilities_processed', '1'),
(4, 'wp_wpfront_ure_login_redirect-db-version', '2.14.1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0J`s�cB@�`�g��]�');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.327441', '-111.588338', '45.32744091729053,-111.58833787048343', 9, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:14:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_rm_fields`
--
ALTER TABLE `wp_rm_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_rm_forms`
--
ALTER TABLE `wp_rm_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_rm_front_users`
--
ALTER TABLE `wp_rm_front_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rm_notes`
--
ALTER TABLE `wp_rm_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_rm_paypal_fields`
--
ALTER TABLE `wp_rm_paypal_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_rm_paypal_logs`
--
ALTER TABLE `wp_rm_paypal_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rm_rules`
--
ALTER TABLE `wp_rm_rules`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `wp_rm_sent_mails`
--
ALTER TABLE `wp_rm_sent_mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `wp_rm_sessions`
--
ALTER TABLE `wp_rm_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rm_stats`
--
ALTER TABLE `wp_rm_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `wp_rm_submissions`
--
ALTER TABLE `wp_rm_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `wp_rm_submission_fields`
--
ALTER TABLE `wp_rm_submission_fields`
  ADD PRIMARY KEY (`sub_field_id`);

--
-- Indexes for table `wp_rm_tasks`
--
ALTER TABLE `wp_rm_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `wp_rm_task_exe_log`
--
ALTER TABLE `wp_rm_task_exe_log`
  ADD PRIMARY KEY (`texe_log_id`);

--
-- Indexes for table `wp_social_users`
--
ALTER TABLE `wp_social_users`
  ADD KEY `ID` (`ID`,`type`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_videos`
--
ALTER TABLE `wp_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpfront_ure_login_redirect`
--
ALTER TABLE `wp_wpfront_ure_login_redirect`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_wpfront_ure_options`
--
ALTER TABLE `wp_wpfront_ure_options`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wp_rm_fields`
--
ALTER TABLE `wp_rm_fields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_rm_forms`
--
ALTER TABLE `wp_rm_forms`
  MODIFY `form_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_rm_front_users`
--
ALTER TABLE `wp_rm_front_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_notes`
--
ALTER TABLE `wp_rm_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_paypal_fields`
--
ALTER TABLE `wp_rm_paypal_fields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_paypal_logs`
--
ALTER TABLE `wp_rm_paypal_logs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_rules`
--
ALTER TABLE `wp_rm_rules`
  MODIFY `rule_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_sent_mails`
--
ALTER TABLE `wp_rm_sent_mails`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_stats`
--
ALTER TABLE `wp_rm_stats`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `wp_rm_submissions`
--
ALTER TABLE `wp_rm_submissions`
  MODIFY `submission_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_rm_submission_fields`
--
ALTER TABLE `wp_rm_submission_fields`
  MODIFY `sub_field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `wp_rm_tasks`
--
ALTER TABLE `wp_rm_tasks`
  MODIFY `task_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_task_exe_log`
--
ALTER TABLE `wp_rm_task_exe_log`
  MODIFY `texe_log_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_videos`
--
ALTER TABLE `wp_videos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wpfront_ure_login_redirect`
--
ALTER TABLE `wp_wpfront_ure_login_redirect`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpfront_ure_options`
--
ALTER TABLE `wp_wpfront_ure_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
