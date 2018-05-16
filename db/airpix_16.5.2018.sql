-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 04:19 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-15 09:30:46', '2018-04-15 09:30:46', 'Hi, this is a comment.\r\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\r\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 29, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:10:56', '2018-05-02 02:10:56', 'Good', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 0, 1),
(3, 29, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:11:04', '2018-05-02 02:11:04', 'Really ?', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 2, 1),
(4, 29, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:11:27', '2018-05-02 02:11:27', '@admin: Sure', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 2, 1),
(5, 4, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-02 02:26:11', '2018-05-02 02:26:11', 'Nice video', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36', '', 0, 1),
(6, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-03 02:22:11', '2018-05-03 02:22:11', 'asdsa', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(7, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-03 02:22:17', '2018-05-03 02:22:17', 'asdsadsadsa', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(8, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-03 02:22:27', '2018-05-03 02:22:27', 'asdsads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 7, 1),
(9, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 01:49:14', '2018-05-07 01:49:14', 'Test post comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(10, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 01:59:42', '2018-05-07 01:59:42', 'sdasdsads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(11, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 01:59:51', '2018-05-07 01:59:51', 'sadsadsads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(12, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:00:09', '2018-05-07 02:00:09', 'sadadsds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(13, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:05:54', '2018-05-07 02:05:54', 'dsfsdfdsfds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(14, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:06:03', '2018-05-07 02:06:03', 'asdsadsa', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(15, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:06:18', '2018-05-07 02:06:18', 'asdsadsadsaasdasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(16, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:06:27', '2018-05-07 02:06:27', 'dfsfdsfds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(17, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:08:10', '2018-05-07 02:08:10', 'fdgdfgdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(18, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:08:26', '2018-05-07 02:08:26', 'dfgdfgdfgf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(19, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:12:23', '2018-05-07 02:12:23', 'sadsdsds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(20, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:18:35', '2018-05-07 02:18:35', 'sdsadsa', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(21, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:18:51', '2018-05-07 02:18:51', 'asdsads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(22, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:20:44', '2018-05-07 02:20:44', 'sadsds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(23, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:20:51', '2018-05-07 02:20:51', 'aaaaaaaaaaaaaaaaaaaaaa', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(24, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:25:22', '2018-05-07 02:25:22', 'fghfghfg', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(25, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:25:31', '2018-05-07 02:25:31', 'dfgdfgdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(26, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:26:23', '2018-05-07 02:26:23', 'asdsadsadsasadsads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(27, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:26:31', '2018-05-07 02:26:31', 'asdsds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(28, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:26:39', '2018-05-07 02:26:39', 'sadsadsadsa', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(29, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:26:46', '2018-05-07 02:26:46', 'dfsdfds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(30, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:26:54', '2018-05-07 02:26:54', 'asdsad', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(31, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:27:02', '2018-05-07 02:27:02', 'sdfdsfdsdfs', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(32, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:27:12', '2018-05-07 02:27:12', 'asdsadsad', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(33, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:27:20', '2018-05-07 02:27:20', 'dsadsadas', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(34, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:27:33', '2018-05-07 02:27:33', 'sdfdsfds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(35, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:28:00', '2018-05-07 02:28:00', 'ghghjgh', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(36, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:28:47', '2018-05-07 02:28:47', 'asdsadsaasdsads', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(37, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:29:32', '2018-05-07 02:29:32', 'sadasds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(38, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-07 02:29:55', '2018-05-07 02:29:55', 'asdasds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1),
(39, 40, 'admin', 'cqthanh.zx@gmail.com', '', '127.0.0.1', '2018-05-08 01:49:41', '2018-05-08 01:49:41', 'Nice video', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.30 Safari/537.36', '', 0, 1);

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
(1, 'siteurl', 'http://airpix.local', 'yes'),
(2, 'home', 'http://airpix.local', 'yes'),
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
(33, 'active_plugins', 'a:4:{i:0;s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";i:1;s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";i:2;s:37:\"video-management/video-management.php\";i:3;s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";}', 'yes'),
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
(109, 'cron', 'a:5:{i:1526439176;a:1:{s:24:\"rm_chronos_task_exe_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:22:\"rm_automation_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1526463046;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1526463062;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1526482158;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523894266;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, '_transient_random_seed', '28c7eb185768ca1fb5efedf0833ffd7b', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1526435334;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(395, '_site_transient_timeout_theme_roots', '1526437137', 'no'),
(396, '_site_transient_theme_roots', 'a:5:{s:12:\"airpix-video\";s:7:\"/themes\";s:10:\"airpix/css\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(397, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1526435339;s:7:\"checked\";a:4:{s:12:\"airpix-video\";s:3:\"1.9\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(138, 'wpfront-user-role-editor-db-version', '2.14.1', 'yes'),
(185, 'hsabffe_hide_admin_bar', 'hide', 'yes'),
(182, 'wpmembers_utfields', 'a:0:{}', 'yes'),
(183, 'wpmembers_usfields', 'a:0:{}', 'yes'),
(171, 'current_theme', 'Air pix', 'yes'),
(172, 'theme_mods_airpix', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525657845;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(346, '_transient_twentyfifteen_categories', '1', 'yes'),
(343, 'wpac', 'a:5:{s:6:\"enable\";s:1:\"1\";s:20:\"alwaysIncludeScripts\";s:1:\"1\";s:5:\"debug\";s:1:\"1\";s:12:\"disableCache\";s:1:\"1\";s:13:\"enableByQuery\";s:1:\"1\";}', 'yes'),
(404, '_transient_timeout_plugin_slugs', '1526522511', 'no'),
(405, '_transient_plugin_slugs', 'a:13:{i:0;s:19:\"akismet/akismet.php\";i:1;s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";i:2;s:39:\"easy-video-player/easy-video-player.php\";i:3;s:39:\"frontend-uploader/frontend-uploader.php\";i:4;s:9:\"hello.php\";i:5;s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";i:6;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:7;s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";i:8;s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";i:9;s:37:\"user-role-editor/user-role-editor.php\";i:10;s:37:\"video-management/video-management.php\";i:11;s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";i:12;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'no'),
(173, 'theme_switched', '', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(133, 'recently_activated', 'a:1:{s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1526436111;}', 'yes'),
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
(381, '_site_transient_browser_69d7a095ed4c294adfb6735eefae9e4d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.40\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(406, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1526478593', 'no'),
(407, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1526478593', 'no'),
(408, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1526435393', 'no'),
(409, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1526478593', 'no'),
(410, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\'>The Month in WordPress: April 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/to-free-up-resources-wordpress-org-plugin-review-team-begins-closing-unused-plugins\'>WPTavern: To Free Up Resources, WordPress.org Plugin Review Team Begins Closing Unused Plugins</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-4-9-6-rc1-released\'>WPTavern: WordPress 4.9.6 RC1 Released</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-315-wordpress-4-9-6-gutenberg-and-stolen-goats\'>WPTavern: WPWeekly Episode 315 – WordPress 4.9.6, Gutenberg, and Stolen Goats</a></li></ul></div>', 'no'),
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
(402, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1526478591', 'no'),
(403, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1526435391', 'no'),
(399, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1526478590', 'no'),
(400, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1526478591', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(401, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Fri, 11 May 2018 00:19:09 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43269\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April. The WordPress 15th Anniversary is Coming On May 27 2018, WordPress will turn 15 years old — this is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4981:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"Store\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"wp15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"May 27, 2018 is the 15th anniversary of the first WordPress release ﻿— and we can&#8217;t wait to celebrate! Party time! Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun: Check the WordPress 15th Anniversary website to see [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3948:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&#038;ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=2188&amp;ssl=1 2188w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=300%2C236&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=768%2C605&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=1024%2C806&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 342px) 100vw, 342px\" data-recalc-dims=\"1\" /></figure>\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:188:\"GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3914:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.9.5 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 19:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"WordPress 4.9.5 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6347:\"<p>WordPress 4.9.5 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.5:</p>\n\n<ol>\n    <li>Don&#x27;t treat <code>localhost</code> as same host by default.</li>\n    <li>Use safe redirects when redirecting the login page if SSL is forced.</li>\n    <li>Make sure the version string is correctly escaped for use in generator tags.</li>\n</ol>\n\n<p>Thank you to the reporters of these issues for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">﻿coordinated security disclosure</a>: <a href=\"https://profiles.wordpress.org/xknown\">xknown</a> of the WordPress Security Team, <a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh (nitstorm)</a>, and <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> of the WordPress Security Team.</p>\n\n<p>Twenty-five other bugs were fixed in WordPress 4.9.5. Particularly of note were:</p>\n\n<ul>\n    <li>The previous styles on caption shortcodes have been restored.</li>\n    <li>Cropping on touch screen devices is now supported.</li>\n    <li>A variety of strings such as error messages have been updated for better clarity.</li>\n    <li>The position of an attachment placeholder during uploads has been fixed.</li>\n    <li>Custom nonce functionality in the REST API JavaScript client has been made consistent throughout the code base.</li>\n    <li>Improved compatibility with PHP 7.2.</li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">This post has more information about all of the issues fixed in 4.9.5 if you&#x27;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.5</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.5:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a>, and <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5645\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/04/the-month-in-wordpress-march-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Apr 2018 08:00:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5632\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:317:\"With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March. WordPress Now Powers 30% of the Internet Over the last 15 years, the popularity and usage of [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4328:\"<p>With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March.\n\n</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress Now Powers 30% of the Internet</h2>\n\n<p>Over the last 15 years, the popularity and usage of WordPress has been steadily growing. That growth hit a significant milestone this month when <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">W3Techs reported that WordPress now powers over 30% of sites on the web.</a></p>\n\n<p>The percentage is determined based on W3Techs’ review of the top 10 million sites on the web, and it’s a strong indicator of the popularity and flexibility of WordPress as a platform.</p>\n\n<p>If you would like to have hand in helping to grow WordPress even further, <a href=\"https://make.wordpress.org/\">you can get involved today</a>.</p>\n\n<h2>WordPress Jargon Glossary Goes Live</h2>\n\n<p>The WordPress Marketing Team has been hard at work lately putting together <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">a comprehensive glossary of WordPress jargon</a> to help newcomers to the project become more easily acquainted with things.</p>\n\n<p>The glossary <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">is available here</a> along with a downloadable PDF to make it simpler to reference offline.</p>\n\n<p>Publishing this resource is part of an overall effort to make WordPress more easily accessible for people who are not so familiar with the project. If you would like to assist the Marketing Team with this, you can follow <a href=\"https://make.wordpress.org/marketing/\">the team blog</a> and join the #marketing channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>.</p>\n\n<h2>Focusing on Privacy in WordPress</h2>\n\n<p>Online privacy has been in the news this month for all the wrong reasons. It has reinforced the commitment of the GDPR Compliance Team to continue working on enhancements to WordPress core that allow site owners to improve privacy standards.</p>\n\n<p>The team&#x27;s work, and the wider privacy project, spans four areas: Adding tools which will allow site administrators to collect the information they need about their sites, examining the plugin guidelines with privacy in mind, enhancing privacy standards in WordPress core, and creating documentation focused on best practices in online privacy.</p>\n\n<p>To get involved with the project, you can <a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">view the roadmap</a>, <a href=\"https://make.wordpress.org/core/tag/gdpr-compliance/\">follow the updates</a>, <a href=\"https://core.trac.wordpress.org/query?status=!closed&amp;keywords=~gdpr\">submit patches</a>, and join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat\">Making WordPress Slack group</a>. Office hours are 15:00 UTC on Wednesdays.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>The WordPress Foundation has published <a href=\"https://wordpressfoundation.org/2017-annual-report/\">their annual report for 2017</a> showing just how much the community has grown over the last year.</li>\n    <li>The dates for WordCamp US <a href=\"https://2018.us.wordcamp.org/2018/03/13/announcing-wordcamp-us-2018/\">have been announced</a> — this flagship WordCamp event will be held on 7-9 December this year in Nashville, Tennessee.</li>\n    <li>WordPress 4.9.5 is due for release on April 3 — <a href=\"https://make.wordpress.org/core/2018/03/21/wordpress-4-9-5-beta/\">find out more here</a>.</li>\n    <li>Version 2.5 of Gutenberg, the new editor for WordPress core, <a href=\"https://make.wordpress.org/core/2018/03/29/whats-new-in-gutenberg-29th-march/\">was released this month</a> with a host of great improvements.</li>\n    <li>WordSesh, a virtual WordPress conference, <a href=\"http://wordsesh.com/\">is returning in July this year</a>.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em><br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5632\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: February 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/03/the-month-in-wordpress-february-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Mar 2018 08:41:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5613\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month. WordPress 4.9.3 &#38; 4.9.4 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5936:\"<p>Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress 4.9.3 &amp; 4.9.4</h2>\n\n<p>Early in the month, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">version 4.9.3 of WordPress was released</a>, including a number of important bug fixes. Unfortunately it introduced a bug that prevented many sites from automatically updating to future releases. To remedy this issue, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\">version 4.9.4 was released</a> the following day requiring many people to manually update their sites.</p>\n\n<p>While this kind of issue is always regrettable, the good thing is that it was fixed quickly, and that not all sites had updated to 4.9.3 yet, which meant they bypassed the bug in that version.</p>\n\n<p>You can find out more technical information about this issue <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">on the Core development blog</a>.</p>\n\n<h2>The WordCamp Incubator is Back</h2>\n\n<p>In 2016, the Global Community Team ran an experimental program to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event. This program was dubbed the WordCamp Incubator, and it was so successful in the three cities where it ran that <a href=\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\">the program is back for 2018</a>.</p>\n\n<p>Right now, the Community Team is looking for cities to be a part of this year’s incubator by <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\">taking applications</a>. Additionally, each incubator community will need an experienced WordCamp organizer to assist them as a co-lead organizer for their event — if that sounds interesting to you, then you can <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-co-lead-application\">fill in the application form for co-leads</a>.</p>\n\n<p>You can find out further information about the WordCamp Incubator <a href=\"https://make.wordpress.org/community/2018/02/19/wordcamp-incubator-program-2018-announcement/\">on the Community Team blog</a>.</p>\n\n<h2>WordPress Meetup Roundtables scheduled for March</h2>\n\n<p>In order to assist local WordPress meetup organizers with running their meetup groups, some members of the Community Team have organized <a href=\"https://make.wordpress.org/community/2018/02/23/wordpress-meetup-roundtables-scheduled-for-march/\">weekly meetup roundtable discussions through the month of March</a>.</p>\n\n<p>These will be run as video chats at 16:00 UTC every Wednesday this month and will be a great place for meetup organizers to come together and help each other out with practical ideas and advice.</p>\n\n<p>If you are not already in the WordPress meetup program and would like to join, you can find out more information in <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the WordPress Meetup Organizer Handbook</a>.</p>\n\n<h2>GDPR Compliance in WordPress Core</h2>\n\n<p>The General Data Protection Regulation (GDPR) is an upcoming regulation that will affect all online services across Europe. In order to prepare for this, a working group has been formed to make sure that WordPress is compliant with the GDPR regulations.</p>\n\n<p>Aside from the fact that this will be a requirement for the project going forward, it will also have an important and significant impact on the privacy and security of WordPress as a whole. The working group has posted <a href=\"https://make.wordpress.org/core/2018/02/19/proposed-roadmap-tools-for-gdpr-compliance/\">their proposed roadmap</a> for this project and it looks very promising.</p>\n\n<p>To get involved in building WordPress Core, jump into the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>WPShout published <a href=\"https://wpshout.com/complete-guide-wordpress-security/\">a thorough guide to WordPress security</a>.</li>\n    <li>The Community Team has published interesting statistics from the WordCamp program in <a href=\"https://make.wordpress.org/community/2018/02/27/wordcamps-in-2016/\">2016</a> and <a href=\"https://make.wordpress.org/community/2018/02/28/wordcamps-in-2017/\">2017</a>.</li>\n    <li><a href=\"https://make.wordpress.org/community/2018/02/15/potential-addition-of-a-new-onboarding-team/\">An intriguing proposal has been made</a> for a new ‘Onboarding’ team to be started in the WordPress project.</li>\n    <li>The new editing experience for WordPress, named Gutenberg, continues to be actively developed with <a href=\"https://make.wordpress.org/core/2018/02/16/whats-new-in-gutenberg-16th-february/\">a feature-packed release</a> this past month.</li>\n    <li>The Advanced WordPress Facebook group <a href=\"https://www.youtube.com/watch?v=4vS_jR5-nIo\">held an interview with WordPress co-founder, Matt Mullenweg</a> about the Gutenberg project.</li>\n    <li><a href=\"https://make.wordpress.org/meta/2018/02/27/two-factor-authentication-on-wp-org/\">Two factor authentication is on its way to the WordPress.org network</a> — this will be a great improvement to the overall security of the project.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5613\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordCamp Incubator 2.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 22:53:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5577\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"WordCamps are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2450:\"<p><a href=\"https://central.wordcamp.org/\">WordCamps</a> are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over 120 WordCamps being hosted around the world in 2017.<br /></p>\n\n<p>Sometimes though, passionate and enthusiastic community members can’t pull together enough people in their community to make a WordCamp happen. To address this, we introduced <a href=\"https://wordpress.org/news/2016/02/experiment-wordcamp-incubator/\">the WordCamp Incubator program</a> in 2016.<br /></p>\n\n<p>The goal of the incubator program is <strong>to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event.</strong> In 2016, members of <a href=\"https://make.wordpress.org/community/\">the global community team</a> worked with volunteers in three cities — Denpasar, Harare and Medellín — giving direct, hands-on assistance in making local WordCamps possible. All three of these WordCamp incubators <a href=\"https://make.wordpress.org/community/2017/06/30/wordcamp-incubator-report/\">were a great success</a>, so we&#x27;re bringing the incubator program back for 2018.<br /></p>\n\n<p>Where should the next WordCamp incubators be? If you have always wanted a WordCamp in your city but haven’t been able to get a community started, this is a great opportunity. We will be taking applications for the next few weeks, then will get in touch with everyone who applied to discuss the possibilities. We will announce the chosen cities by the end of March.<br /></p>\n\n<p><strong>To apply, </strong><a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\"><strong>fill in the application</strong></a><strong> by March 15, 2018.</strong> You don’t need to have any specific information handy, it’s just a form to let us know you’re interested. You can apply to nominate your city even if you don’t want to be the main organizer, but for this to work well we will need local liaisons and volunteers, so please only nominate cities where you live or work so that we have at least one local connection to begin.<br /></p>\n\n<p>We&#x27;re looking forward to hearing from you!<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.9.4 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:17:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5559\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:350:\"WordPress 4.9.4 is now available. This maintenance release fixes a severe bug in 4.9.3, which will cause sites that support automatic background updates to fail to update automatically, and will require action from you (or your host) for it to be updated to 4.9.4. Four years ago with WordPress 3.7 &#8220;Basie&#8221;, we added the ability [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Dion Hulse\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1823:\"<p>WordPress 4.9.4 is now available.</p>\n<p>This maintenance release fixes a severe bug in 4.9.3, which will cause sites that support automatic background updates to fail to update automatically, and will require action from you (or your host) for it to be updated to 4.9.4.</p>\n<p>Four years ago with <a href=\"https://wordpress.org/news/2013/10/basie/\">WordPress 3.7 &#8220;Basie&#8221;</a>, we added the ability for WordPress to self-update, keeping your website secure and bug-free, even when you weren&#8217;t available to do it yourself. For four years it&#8217;s helped keep millions of installs updated with very few issues over that time. Unfortunately <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">yesterdays 4.9.3 release</a> contained a severe bug which was only discovered after release. The bug will cause WordPress to encounter an error when it attempts to update itself to WordPress 4.9.4, and will require an update to be performed through the WordPress dashboard or hosts update tools.</p>\n<p>WordPress managed hosting companies who install updates automatically for their customers can install the update as normal, and we&#8217;ll be working with other hosts to ensure that as many customers of theirs who can be automatically updated to WordPress 4.9.4 can be.</p>\n<p>For more technical details of the issue, we&#8217;ve <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">posted on our Core Development blog</a>. For a full list of changes, consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">list of tickets</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.4</a> or visit Dashboard → Updates and click “Update Now.”</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5559\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.9.3 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Feb 2018 19:47:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5545\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:372:\"WordPress 4.9.3 is now available. This maintenance release fixes 34 bugs in 4.9, including fixes for Customizer changesets, widgets, visual editor, and PHP 7.2 compatibility. For a full list of changes, consult the list of tickets and the changelog. Download WordPress 4.9.3 or visit Dashboard → Updates and click “Update Now.” Sites that support automatic [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3421:\"<p>WordPress 4.9.3 is now available.</p>\n<p>This maintenance release fixes 34 bugs in 4.9, including fixes for Customizer changesets, widgets, visual editor, and PHP 7.2 compatibility. For a full list of changes, consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">list of tickets</a> and the <a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">changelog</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.3</a> or visit Dashboard → Updates and click “Update Now.” Sites that support automatic background updates are already beginning to update automatically.</p>\n<p>Thank you to everyone who contributed to WordPress 4.9.3:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5545\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"The Month in WordPress: January 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/02/the-month-in-wordpress-january-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Feb 2018 08:10:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5541\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:339:\"Things got off to a gradual start in 2018 with momentum starting to pick up over the course of the month. There were some notable developments in January, including a new point release and work being done on other important areas of the WordPress project. WordPress 4.9.2 Security and Maintenance Release On January 16, WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3840:\"<p>Things got off to a gradual start in 2018 with momentum starting to pick up over the course of the month. There were some notable developments in January, including a new point release and work being done on other important areas of the WordPress project.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress 4.9.2 Security and Maintenance Release</h2>\n\n<p>On January 16, <a href=\"https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/\">WordPress 4.9.2 was released</a> to fix an important security issue with the media player, as well as a number of other smaller bugs. This release goes a long way to smoothing out the 4.9 release cycle with the next point release, v4.9.3, <a href=\"https://make.wordpress.org/core/2018/01/31/wordpress-4-9-3-release-pushed-to-february-5th/\">due in early February</a>.</p>\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>, and follow<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>.</p>\n\n<h2>Updated Plugin Directory Guidelines</h2>\n\n<p>At the end of 2017, <a href=\"https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/\">the guidelines for the Plugin Directory</a> received a significant update to make them clearer and expanded to address certain situations. This does not necessarily make these guidelines complete, but rather more user-friendly and practical; they govern how developers build plugins for the Plugin Directory, so they need to evolve with the global community that the Directory serves.</p>\n\n<p>If you would like to contribute to these guidelines, you can make a pull request to <a href=\"https://github.com/WordPress/wporg-plugin-guidelines\">the GitHub repository</a> or email <a href=\"mailto:plugins@wordpress.org\">plugins@wordpress.org</a>. You can also jump into the #pluginreview channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>Near the end of last year a lot of work was put into improving the standards in the WordPress core codebase and now <a href=\"https://make.wordpress.org/core/2017/11/30/wordpress-php-now-mostly-conforms-to-wordpress-coding-standards/\">the entire platform is at nearly 100% compliance with the WordPress coding standards</a>.</li>\n    <li>Gutenberg, the new editor coming to WordPress core in the next major release, <a href=\"https://make.wordpress.org/core/2018/01/25/whats-new-in-gutenberg-25th-january/\">was updated to v2.1 this month</a> with some great usability and technical improvements.</li>\n    <li>The Global Community Team is <a href=\"https://make.wordpress.org/community/2018/01/16/2018-goals-for-the-global-community-team-suggestions-time/\">taking suggestions for the goals of the Community program in 2018</a>.</li>\n    <li><a href=\"https://online.wpcampus.org/\">WPCampus Online</a>, a digital conference focused on WordPress in higher education, took place on January 30. The videos of the event sessions will be online soon.</li>\n    <li>A WordPress community member <a href=\"https://wptavern.com/new-toolkit-simplifies-the-process-of-creating-gutenberg-blocks\">has released a toolkit</a> to help developers build blocks for Gutenberg.</li>\n    <li>The community team that works to improve the WordPress hosting experience is relatively young, but <a href=\"https://make.wordpress.org/hosting/2018/01/25/hosting-meeting-notes-january-10-2018/\">they have been making some great progress recently</a>.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5541\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 16 May 2018 01:49:51 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 11 May 2018 00:19:09 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20180502014833\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(398, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1526435391;s:7:\"checked\";a:13:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";s:4:\"1.10\";s:39:\"easy-video-player/easy-video-player.php\";s:5:\"1.1.7\";s:39:\"frontend-uploader/frontend-uploader.php\";s:5:\"1.3.1\";s:9:\"hello.php\";s:3:\"1.6\";s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";s:5:\"1.0.0\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:5:\"3.0.4\";s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";s:7:\"3.8.1.9\";s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";s:5:\"2.4.3\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.40.1\";s:37:\"video-management/video-management.php\";s:3:\"1.0\";s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";s:5:\"1.5.1\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"7.0.04\";}s:8:\"response\";a:4:{s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/all-404-redirect-to-homepage\";s:4:\"slug\";s:28:\"all-404-redirect-to-homepage\";s:6:\"plugin\";s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/all-404-redirect-to-homepage/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-404-redirect-to-homepage.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/all-404-redirect-to-homepage/assets/icon-256x256.png?rev=1515215\";s:2:\"1x\";s:81:\"https://ps.w.org/all-404-redirect-to-homepage/assets/icon-128x128.png?rev=1515215\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/all-404-redirect-to-homepage/assets/banner-772x250.png?rev=1515218\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:5:\"3.0.7\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:70:\"w.org/plugins/custom-registration-form-builder-with-submission-manager\";s:4:\"slug\";s:56:\"custom-registration-form-builder-with-submission-manager\";s:6:\"plugin\";s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";s:11:\"new_version\";s:7:\"3.8.2.6\";s:3:\"url\";s:87:\"https://wordpress.org/plugins/custom-registration-form-builder-with-submission-manager/\";s:7:\"package\";s:99:\"https://downloads.wordpress.org/plugin/custom-registration-form-builder-with-submission-manager.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:109:\"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/icon-256x256.png?rev=1715056\";s:2:\"1x\";s:109:\"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/icon-128x128.png?rev=1715056\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:111:\"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/banner-772x250.jpg?rev=1424640\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:132:\"<ul>\n<li>Fixed: PHP 7.2 warnings</li>\n<li>Fixed: Minor SMTP issue</li>\n<li>MagicWidgets renamed and moved to Fields popup</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:4:\"4.41\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/user-role-editor.4.41.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"easy-video-player/easy-video-player.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/easy-video-player\";s:4:\"slug\";s:17:\"easy-video-player\";s:6:\"plugin\";s:39:\"easy-video-player/easy-video-player.php\";s:11:\"new_version\";s:5:\"1.1.7\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/easy-video-player/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/easy-video-player.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/easy-video-player/assets/icon-128x128.png?rev=1137715\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/easy-video-player/assets/banner-772x250.png?rev=1169314\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"frontend-uploader/frontend-uploader.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/frontend-uploader\";s:4:\"slug\";s:17:\"frontend-uploader\";s:6:\"plugin\";s:39:\"frontend-uploader/frontend-uploader.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/frontend-uploader/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/frontend-uploader.1.3.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/frontend-uploader_81a69d.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/frontend-uploader/assets/banner-772x250.png?rev=698759\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/hide-admin-bar-from-front-end\";s:4:\"slug\";s:29:\"hide-admin-bar-from-front-end\";s:6:\"plugin\";s:63:\"hide-admin-bar-from-front-end/hide-admin-bar-from-front-end.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/hide-admin-bar-from-front-end/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/hide-admin-bar-from-front-end.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/hide-admin-bar-from-front-end/assets/icon-128x128.png?rev=1396990\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/hide-admin-bar-from-front-end/assets/banner-772x250.png?rev=1396986\";}s:11:\"banners_rtl\";a:0:{}}s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:51:\"w.org/plugins/twitter-facebook-google-plusone-share\";s:4:\"slug\";s:37:\"twitter-facebook-google-plusone-share\";s:6:\"plugin\";s:64:\"twitter-facebook-google-plusone-share/twitter-facebook-share.php\";s:11:\"new_version\";s:5:\"2.4.3\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/twitter-facebook-google-plusone-share/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/twitter-facebook-google-plusone-share.2.4.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:81:\"https://s.w.org/plugins/geopattern-icon/twitter-facebook-google-plusone-share.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/wp-ajaxify-comments\";s:4:\"slug\";s:19:\"wp-ajaxify-comments\";s:6:\"plugin\";s:43:\"wp-ajaxify-comments/wp-ajaxify-comments.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-ajaxify-comments/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wp-ajaxify-comments.1.5.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:70:\"https://s.w.org/plugins/geopattern-icon/wp-ajaxify-comments_ffffff.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/wp-ajaxify-comments/assets/banner-772x250.jpg?rev=687697\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"7.0.04\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(380, '_site_transient_timeout_browser_69d7a095ed4c294adfb6735eefae9e4d', '1526899378', 'no'),
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
(421, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:17:\"45.32744091729053\";s:24:\"map_default_starting_lng\";s:19:\"-111.58833787048343\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:9;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes');

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
(20, 1, '_edit_lock', '1524369191:1'),
(21, 16, '_edit_last', '1'),
(25, 16, '_wp_trash_meta_status', 'publish'),
(24, 16, '_edit_lock', '1524369207:1'),
(26, 16, '_wp_trash_meta_time', '1524369398'),
(27, 16, '_wp_desired_post_slug', 'register'),
(28, 1, '_wp_trash_meta_status', 'publish'),
(29, 1, '_wp_trash_meta_time', '1524369398'),
(30, 1, '_wp_desired_post_slug', 'hello-world'),
(31, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(32, 19, '_edit_lock', '1524370331:1'),
(33, 19, '_edit_last', '1'),
(38, 19, '_wp_trash_meta_status', 'publish'),
(39, 19, '_wp_trash_meta_time', '1524370489'),
(40, 19, '_wp_desired_post_slug', 'ggg'),
(41, 23, '_edit_lock', '1524370794:1'),
(42, 23, '_edit_last', '1'),
(43, 23, '_wp_trash_meta_status', 'draft'),
(44, 23, '_wp_trash_meta_time', '1524370807'),
(45, 23, '_wp_desired_post_slug', ''),
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
(69, 40, '_edit_lock', '1525314700:1'),
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
(1, 1, '2018-04-15 09:30:46', '2018-04-15 09:30:46', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-04-22 03:56:38', '2018-04-22 03:56:38', '', 0, 'http://airpix.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-15 09:30:46', '2018-04-15 09:30:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://airpix.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-15 09:30:46', '2018-04-15 09:30:46', '', 0, 'http://airpix.local/?page_id=2', 0, 'page', '', 0),
(16, 1, '2018-04-22 03:55:42', '2018-04-22 03:55:42', '', 'Register', '', 'trash', 'open', 'open', '', 'register__trashed', '', '', '2018-04-22 03:56:38', '2018-04-22 03:56:38', '', 0, 'http://airpix.local/?p=16', 0, 'post', '', 0),
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
(17, 1, '2018-04-22 03:55:42', '2018-04-22 03:55:42', '', 'Register', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-22 03:55:42', '2018-04-22 03:55:42', '', 16, 'http://airpix.local/index.php/2018/04/22/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-22 03:56:38', '2018-04-22 03:56:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-22 03:56:38', '2018-04-22 03:56:38', '', 1, 'http://airpix.local/index.php/2018/04/22/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-04-22 04:01:50', '2018-04-22 04:01:50', '', 'ggg', '', 'trash', 'open', 'open', '', 'ggg__trashed', '', '', '2018-04-22 04:14:49', '2018-04-22 04:14:49', '', 0, 'http://airpix.local/?p=19', 0, 'post', '', 0),
(20, 1, '2018-04-22 04:01:50', '2018-04-22 04:01:50', 'sads', 'ggg', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-04-22 04:01:50', '2018-04-22 04:01:50', '', 19, 'http://airpix.local/index.php/2018/04/22/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-04-22 04:05:17', '2018-04-22 04:05:17', '[wpmem_form login][wpmem_form login]\nThis displays when logged in\n[/wpmem_form]sads', 'ggg', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2018-04-22 04:05:17', '2018-04-22 04:05:17', '', 19, 'http://airpix.local/index.php/2018/04/22/19-autosave-v1/', 0, 'revision', '', 0),
(22, 1, '2018-04-22 04:06:17', '2018-04-22 04:06:17', '', 'ggg', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-04-22 04:06:17', '2018-04-22 04:06:17', '', 19, 'http://airpix.local/index.php/2018/04/22/19-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-04-22 04:20:07', '2018-04-22 04:20:07', '', 'Upload', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-04-22 04:20:07', '2018-04-22 04:20:07', '', 0, 'http://airpix.local/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-04-22 04:20:07', '2018-04-22 04:20:07', '', 'Upload', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-22 04:20:07', '2018-04-22 04:20:07', '', 23, 'http://airpix.local/index.php/2018/04/22/23-revision-v1/', 0, 'revision', '', 0),
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
(43, 1, '2018-05-14 10:42:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-14 10:42:58', '0000-00-00 00:00:00', '', 0, 'http://airpix.local/?p=43', 0, 'post', '', 0),
(44, 1, '2018-05-14 10:47:13', '2018-05-14 10:47:13', 'Video description', 'Video test', '', 'publish', 'open', 'open', '', 'video-test', '', '', '2018-05-14 10:47:13', '2018-05-14 10:47:13', '', 0, 'http://airpix.local/videos/video-test/', 0, 'airpix_video', '', 0),
(40, 1, '2018-05-03 02:14:45', '2018-05-03 02:14:45', 'Test video description', 'Test upload video', '', 'publish', 'open', 'open', '', 'test-upload-video', '', '', '2018-05-03 02:14:45', '2018-05-03 02:14:45', '', 0, 'http://airpix.local/videos/test-upload-video/', 0, 'airpix_video', '', 34),
(42, 1, '2018-05-03 02:17:19', '2018-05-03 02:17:19', 'Test video description', 'Test upload video', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2018-05-03 02:17:19', '2018-05-03 02:17:19', '', 40, 'http://airpix.local/40-autosave-v1/', 0, 'revision', '', 0);

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
(16, 3, 1, 'Role', 'Select', 'Pilot, Renter', 100000002, NULL, 0, 0, 'O:8:\"stdClass\":64:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";s:0:\"\";s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";s:0:\"\";s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":4:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";s:0:\"\";s:11:\"date_format\";N;s:14:\"field_meta_add\";s:0:\"\";s:10:\"conditions\";N;s:16:\"link_same_window\";N;s:9:\"link_page\";N;s:9:\"link_href\";N;s:9:\"link_type\";N;s:12:\"yt_auto_play\";N;s:9:\"yt_repeat\";N;s:17:\"yt_related_videos\";N;s:15:\"yt_player_width\";N;s:9:\"rm_widget\";N;s:16:\"yt_player_height\";N;s:8:\"if_width\";N;s:9:\"if_height\";N;s:18:\"field_address_type\";N;s:23:\"field_ca_address1_label\";N;s:23:\"field_ca_address2_label\";N;s:19:\"field_ca_city_label\";N;s:20:\"field_ca_state_label\";N;s:22:\"field_ca_country_label\";N;s:18:\"field_ca_zip_label\";N;s:16:\"field_ca_city_en\";N;s:17:\"field_ca_state_en\";N;s:15:\"field_ca_zip_en\";N;s:19:\"field_ca_country_en\";N;s:20:\"field_ca_address1_en\";N;s:20:\"field_ca_address2_en\";N;s:13:\"ca_state_type\";N;s:21:\"field_ca_address1_req\";N;s:17:\"field_ca_city_req\";N;s:16:\"field_ca_zip_req\";N;s:20:\"field_ca_country_req\";N;s:18:\"field_ca_state_req\";N;s:21:\"field_ca_address2_req\";N;s:29:\"field_ca_label_as_placeholder\";N;s:20:\"field_ca_lmark_label\";N;s:17:\"field_ca_lmark_en\";N;s:18:\"field_ca_lmark_req\";N;s:20:\"field_ca_state_codes\";N;s:28:\"field_ca_country_america_can\";N;s:24:\"field_ca_country_limited\";N;s:26:\"field_ca_en_country_search\";N;}'),
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
('151ckqfqdmv9rli16qfrd59d41', '', 1526435618),
('83luvk3fr3akshrra84b157ha4', '', 1526435334),
('a338nivttsb2co0f7037qtpkt1', '', 1526435342),
('j6i5j7s2fkntpkr7tipdkrrbk3', 'rm_sessionform_3_1|a:1:{s:18:\"pfbc-form_3_1-form\";s:9948:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:7:{s:6:\"action\";s:59:\"/wp-content/themes/airpix/images/social.png?rmcb=1526437112\";s:2:\"id\";s:8:\"form_3_1\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:50:\"rmagic-form rmagic-form-btn-center form-horizontal\";s:4:\"name\";s:7:\"rm_form\";s:6:\"number\";i:1;s:5:\"style\";N;}s:12:\"\0*\0_elements\";a:15:{i:0;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:49:\"<div id=\"rm_stat_container\" style=\"display:none\">\";s:2:\"id\";s:18:\"form_3_1-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:7:\"stat_id\";s:5:\"value\";s:8:\"__uninit\";s:5:\"style\";s:12:\"display:none\";s:2:\"id\";s:18:\"form_3_1-element-1\";}s:8:\"\0*\0label\";s:8:\"RM_Stats\";s:13:\"\0*\0validation\";a:0:{}}i:2;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:18:\"form_3_1-element-2\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:3;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:62:\"<div class=\"rmformpage_form_3_1\" id=\"rm_form_page_form_3_1_1\">\";s:2:\"id\";s:18:\"form_3_1-element-3\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:29:\"<fieldset class=\'rmfieldset\'>\";s:2:\"id\";s:18:\"form_3_1-element-4\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:17:\"Element_UserEmail\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:8:\"Email_13\";s:11:\"placeholder\";s:5:\"Email\";s:5:\"class\";s:22:\"rm_form_default_fields\";s:8:\"required\";s:0:\"\";s:5:\"value\";s:20:\"cqthanh.zx@gmail.com\";s:2:\"id\";s:18:\"form_3_1-element-5\";}s:8:\"\0*\0label\";s:5:\"Email\";s:13:\"\0*\0validation\";a:4:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}i:2;O:20:\"Validation_UserEmail\":2:{s:10:\"\0*\0message\";s:26:\"User email already exists.\";s:10:\"\0*\0handler\";O:23:\"RM_User_Email_Validator\":1:{s:11:\"\0*\0field_id\";s:2:\"13\";}}i:3;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}}}i:6;O:13:\"Element_Fname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Fname_14\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-6\";}s:8:\"\0*\0label\";s:10:\"First Name\";s:13:\"\0*\0validation\";a:0:{}}i:7;O:13:\"Element_Lname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Lname_15\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-7\";}s:8:\"\0*\0label\";s:9:\"Last Name\";s:13:\"\0*\0validation\";a:0:{}}i:8;O:14:\"Element_Select\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"name\";s:9:\"Select_16\";s:8:\"required\";s:0:\"\";s:5:\"value\";a:0:{}s:2:\"id\";s:18:\"form_3_1-element-8\";}s:8:\"\0*\0label\";s:4:\"Role\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:9;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"Textbox_17\";s:11:\"placeholder\";s:24:\"Drone name, model, ..etc\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-9\";}s:8:\"\0*\0label\";s:5:\"Drone\";s:13:\"\0*\0validation\";a:0:{}}i:10;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:11:\"</fieldset>\";s:2:\"id\";s:19:\"form_3_1-element-10\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:11;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:19:\"form_3_1-element-11\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:12;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:2:\"id\";s:28:\"rm_next_form_page_button_3_1\";s:5:\"class\";s:27:\"rm_next_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:13;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:5:\"class\";s:31:\"rm_noscript_btn btn btn-primary\";s:2:\"id\";s:19:\"form_3_1-element-13\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:14;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:5521:\"                \r\n   <pre class=\'rm-pre-wrapper-for-script-tags\'><script>\r\n                \r\nif (typeof window[\'rm_multipage\'] == \'undefined\') {\r\n\r\n    rm_multipage = {\r\n        global_page_no_form_3_1: 1\r\n    };\r\n\r\n}\r\nelse\r\n rm_multipage.global_page_no_form_3_1 = 1;\r\n\r\nfunction gotonext_form_3_1(){\r\n	\r\n        maxpage = 1 ;\r\n                jQuery.validator.setDefaults({errorClass: \'rm-form-field-invalid-msg\',\r\n                                        ignore:\'hidden,.ignore,.rm_untouched\',wrapper:\'div\',\r\n                                       errorPlacement: function(error, element) { \r\n                                                            var elementId= element.attr(\'id\');\r\n                                                            var target_element_id= elementId.replace(\'-error\',\'\');\r\n                                                            var target_element= jQuery(\"#\" + target_element_id);\r\n                                                            if(target_element.length>0){\r\n                                                                if(target_element.hasClass(\'rm_untouched\')){\r\n                                                                    return true;\r\n                                                                    }\r\n                                                            }\r\n                                                            error.appendTo(element.closest(\'div\'));\r\n                                                          }\r\n                                    });\r\n        if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length > 0)\r\n        {\r\n            var valid = jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").valid();\r\n                       \r\n            if(!valid)\r\n            {\r\n                setTimeout(function(){ jQuery(\"#rm_next_form_page_button_3_1\").removeProp(\'disabled\');}, 1000);\r\n                var error_element= jQuery(document).find(\"input.rm-form-field-invalid-msg\")[0];\r\n                if(error_element){\r\n                    error_element.focus();\r\n                }\r\n                return false;\r\n            }\r\n        }\r\n        \r\n        /* Server validation for Username and Email field */\r\n        for(var i=0;i<rm_validation_attr.length;i++){\r\n            var validation_flag= true;\r\n            jQuery(\"[\" + rm_validation_attr[i] + \"=0]\").each(function(){\r\n               validation_flag= false;\r\n               return false;\r\n            });\r\n            \r\n            if(!validation_flag)\r\n              return;\r\n        }\r\n        \r\n        \r\n        rm_multipage.global_page_no_form_3_1++;\r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n        \r\n            if(maxpage <= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1++;\r\n        }\r\n            \r\n	\r\n	if(maxpage < rm_multipage.global_page_no_form_3_1)\r\n	{\r\n		rm_multipage.global_page_no_form_3_1 = maxpage;\r\n		jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n		return;\r\n	}\r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});  \r\n    jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',false);\r\n        rmInitGoogleApi();\r\n}\r\nfunction gotoprev_form_3_1(){\r\n	\r\n	maxpage = 1 ;\r\n	rm_multipage.global_page_no_form_3_1--;\r\n        jQuery(\"#rm_next_form_page_button_3_1\").attr(\'type\',\'button\');        \r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n            if(1 >= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        rm_multipage.global_page_no_form_3_1 = 1;\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1--;\r\n        }\r\n        \r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});\r\n        \r\n        if(rm_multipage.global_page_no_form_3_1 <= 1)\r\n        {\r\n            rm_multipage.global_page_no_form_3_1 = 1;\r\n            jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n        }\r\n}\r\n\r\n\r\njQuery(document).ready( function(){\r\n\r\n})          \r\n</script></pre>\";s:2:\"id\";s:19:\"form_3_1-element-14\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";}rm_sessionrm_login_form|a:2:{s:18:\"pfbc-form_3_1-form\";s:11061:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:7:{s:6:\"action\";s:59:\"/wp-content/themes/airpix/images/social.png?rmcb=1526435338\";s:2:\"id\";s:8:\"form_3_1\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:50:\"rmagic-form rmagic-form-btn-center form-horizontal\";s:4:\"name\";s:7:\"rm_form\";s:6:\"number\";i:1;s:5:\"style\";N;}s:12:\"\0*\0_elements\";a:18:{i:0;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:49:\"<div id=\"rm_stat_container\" style=\"display:none\">\";s:2:\"id\";s:18:\"form_3_1-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:7:\"stat_id\";s:5:\"value\";s:8:\"__uninit\";s:5:\"style\";s:12:\"display:none\";s:2:\"id\";s:18:\"form_3_1-element-1\";}s:8:\"\0*\0label\";s:8:\"RM_Stats\";s:13:\"\0*\0validation\";a:0:{}}i:2;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:18:\"form_3_1-element-2\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:3;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:62:\"<div class=\"rmformpage_form_3_1\" id=\"rm_form_page_form_3_1_1\">\";s:2:\"id\";s:18:\"form_3_1-element-3\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:29:\"<fieldset class=\'rmfieldset\'>\";s:2:\"id\";s:18:\"form_3_1-element-4\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:16:\"Element_Username\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"username\";s:5:\"value\";s:0:\"\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Username\";s:2:\"id\";s:18:\"form_3_1-element-5\";}s:8:\"\0*\0label\";s:8:\"Username\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:6;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:8:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:3:\"pwd\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:8:\"Password\";s:2:\"id\";s:18:\"rm_reg_form_pw_3_1\";s:9:\"minlength\";i:7;s:10:\"labelstyle\";N;s:5:\"style\";N;}s:8:\"\0*\0label\";s:8:\"Password\";s:13:\"\0*\0validation\";a:2:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:17:\"Validation_RegExp\":2:{s:10:\"\0*\0message\";s:55:\"Error: The %element% must be atleast 7 characters long.\";s:10:\"\0*\0pattern\";s:7:\"/.{7,}/\";}}}i:7;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:21:\"password_confirmation\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:16:\"Confirm Password\";s:10:\"labelstyle\";N;s:5:\"style\";N;s:2:\"id\";s:22:\"rm_reg_form_pw_reentry\";}s:8:\"\0*\0label\";s:20:\"Enter password again\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:8;O:17:\"Element_UserEmail\":3:{s:14:\"\0*\0_attributes\";a:7:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:8:\"Email_13\";s:11:\"placeholder\";s:5:\"Email\";s:5:\"class\";s:22:\"rm_form_default_fields\";s:8:\"required\";s:0:\"\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-8\";}s:8:\"\0*\0label\";s:5:\"Email\";s:13:\"\0*\0validation\";a:4:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}i:1;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}i:2;O:20:\"Validation_UserEmail\":2:{s:10:\"\0*\0message\";s:26:\"User email already exists.\";s:10:\"\0*\0handler\";O:23:\"RM_User_Email_Validator\":1:{s:11:\"\0*\0field_id\";s:2:\"13\";}}i:3;O:16:\"Validation_Email\":1:{s:10:\"\0*\0message\";s:45:\"%element% must contain a valid email address.\";}}}i:9;O:13:\"Element_Fname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Fname_14\";s:5:\"value\";N;s:2:\"id\";s:18:\"form_3_1-element-9\";}s:8:\"\0*\0label\";s:10:\"First Name\";s:13:\"\0*\0validation\";a:0:{}}i:10;O:13:\"Element_Lname\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"Lname_15\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-10\";}s:8:\"\0*\0label\";s:9:\"Last Name\";s:13:\"\0*\0validation\";a:0:{}}i:11;O:14:\"Element_Select\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"name\";s:9:\"Select_16\";s:8:\"required\";s:0:\"\";s:5:\"value\";a:0:{}s:2:\"id\";s:19:\"form_3_1-element-11\";}s:8:\"\0*\0label\";s:4:\"Role\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:12;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"Textbox_17\";s:11:\"placeholder\";s:24:\"Drone name, model, ..etc\";s:5:\"value\";N;s:2:\"id\";s:19:\"form_3_1-element-12\";}s:8:\"\0*\0label\";s:5:\"Drone\";s:13:\"\0*\0validation\";a:0:{}}i:13;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:11:\"</fieldset>\";s:2:\"id\";s:19:\"form_3_1-element-13\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:14;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:6:\"</div>\";s:2:\"id\";s:19:\"form_3_1-element-14\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:15;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:2:\"id\";s:28:\"rm_next_form_page_button_3_1\";s:5:\"class\";s:27:\"rm_next_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:16;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:6:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:6:\"Submit\";s:4:\"name\";s:0:\"\";s:5:\"style\";N;s:5:\"class\";s:31:\"rm_noscript_btn btn btn-primary\";s:2:\"id\";s:19:\"form_3_1-element-16\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:17;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:5280:\"                \r\n   <pre class=\'rm-pre-wrapper-for-script-tags\'><script>\r\n                \r\nif (typeof window[\'rm_multipage\'] == \'undefined\') {\r\n\r\n    rm_multipage = {\r\n        global_page_no_form_3_1: 1\r\n    };\r\n\r\n}\r\nelse\r\n rm_multipage.global_page_no_form_3_1 = 1;\r\n\r\nfunction gotonext_form_3_1(){\r\n	\r\n        maxpage = 1 ;\r\n                jQuery.validator.setDefaults({errorClass: \'rm-form-field-invalid-msg\',\r\n                                        ignore:\':hidden,.ignore\',wrapper:\'div\',\r\n                                       errorPlacement: function(error, element) {\r\n                                                            //error.appendTo(element.closest(\'.rminput\'));\r\n                                                            error.appendTo(element.closest(\'div\'));\r\n                                                          },\r\n                                      rules: {        \r\n        password: {\r\n            required: true,\r\n            minlength: 7\r\n        },\r\n        password_confirmation: {\r\n            required: true,\r\n            equalTo: \"#rm_reg_form_pw_3_1\"\r\n        }\r\n            },\r\n        messages: {\r\n        password_confirmation: {\r\n            equalTo: \"Passwords do not match\"\r\n        }\r\n            }\r\n                                    });\r\n        if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length > 0)\r\n        {\r\n            var valid = jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").valid();\r\n                       \r\n            if(!valid)\r\n            {\r\n                setTimeout(function(){ jQuery(\"#rm_next_form_page_button_3_1\").removeProp(\'disabled\');}, 1000);\r\n                var error_element= jQuery(document).find(\"input.rm-form-field-invalid-msg\")[0];\r\n                if(error_element){\r\n                    error_element.focus();\r\n                }\r\n                return false;\r\n            }\r\n        }\r\n        \r\n        /* Server validation for Username and Email field */\r\n        for(var i=0;i<rm_validation_attr.length;i++){\r\n            var validation_flag= true;\r\n            jQuery(\"[\" + rm_validation_attr[i] + \"=0]\").each(function(){\r\n               validation_flag= false;\r\n               return false;\r\n            });\r\n            \r\n            if(!validation_flag)\r\n              return;\r\n        }\r\n        \r\n        \r\n        rm_multipage.global_page_no_form_3_1++;\r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n        \r\n            if(maxpage <= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1++;\r\n        }\r\n            \r\n	\r\n	if(maxpage < rm_multipage.global_page_no_form_3_1)\r\n	{\r\n		rm_multipage.global_page_no_form_3_1 = maxpage;\r\n		jQuery(\"#rm_next_form_page_button_3_1\").prop(\'type\',\'submit\');\r\n                jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n		return;\r\n	}\r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});  \r\n    jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',false);\r\n        rmInitGoogleApi();\r\n}\r\nfunction gotoprev_form_3_1(){\r\n	\r\n	maxpage = 1 ;\r\n	rm_multipage.global_page_no_form_3_1--;\r\n        jQuery(\"#rm_next_form_page_button_3_1\").attr(\'type\',\'button\');        \r\n        \r\n        /*skip blank form pages*/\r\n        while(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0)\r\n        {\r\n            if(1 >= rm_multipage.global_page_no_form_3_1)\r\n            {\r\n                    if(jQuery(\"#rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1+\" :input\").length == 0){\r\n                        rm_multipage.global_page_no_form_3_1 = 1;\r\n                        jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n                        return;\r\n                    }        \r\n                    else\r\n                        break;\r\n            }\r\n        \r\n            rm_multipage.global_page_no_form_3_1--;\r\n        }\r\n        \r\n	jQuery(\".rmformpage_form_3_1\").each(function (){\r\n		var visibledivid = \"rm_form_page_form_3_1_\"+rm_multipage.global_page_no_form_3_1;\r\n		if(jQuery(this).attr(\'id\') == visibledivid)\r\n			jQuery(this).show();\r\n		else\r\n			jQuery(this).hide();\r\n	});\r\n        \r\n        if(rm_multipage.global_page_no_form_3_1 <= 1)\r\n        {\r\n            rm_multipage.global_page_no_form_3_1 = 1;\r\n            jQuery(\"#rm_prev_form_page_button_3_1\").prop(\'disabled\',true);\r\n        }\r\n}\r\n\r\n\r\njQuery(document).ready( function(){\r\n\r\n})          \r\n</script></pre>\";s:2:\"id\";s:19:\"form_3_1-element-17\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";s:23:\"pfbc-rm_login_form-form\";s:2028:\"O:12:\"RM_PFBC_Form\":3:{s:14:\"\0*\0_attributes\";a:4:{s:6:\"action\";s:0:\"\";s:2:\"id\";s:13:\"rm_login_form\";s:6:\"method\";s:4:\"post\";s:5:\"class\";s:15:\"form-horizontal\";}s:12:\"\0*\0_elements\";a:6:{i:0;O:14:\"Element_Hidden\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:6:\"hidden\";s:4:\"name\";s:7:\"rm_slug\";s:5:\"value\";s:13:\"rm_login_form\";s:2:\"id\";s:23:\"rm_login_form-element-0\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:1;O:15:\"Element_Textbox\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:8:\"username\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:14:\"Enter Username\";s:2:\"id\";s:23:\"rm_login_form-element-1\";}s:8:\"\0*\0label\";s:8:\"Username\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:2;O:16:\"Element_Password\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:8:\"password\";s:4:\"name\";s:3:\"pwd\";s:8:\"required\";s:0:\"\";s:11:\"placeholder\";s:14:\"Enter Password\";s:2:\"id\";s:23:\"rm_login_form-element-2\";}s:8:\"\0*\0label\";s:8:\"Password\";s:13:\"\0*\0validation\";a:1:{i:0;O:19:\"Validation_Required\":1:{s:10:\"\0*\0message\";s:31:\" %element% is a required field.\";}}}i:3;O:16:\"Element_Checkbox\":3:{s:14:\"\0*\0_attributes\";a:4:{s:4:\"type\";s:8:\"checkbox\";s:4:\"name\";s:10:\"remember[]\";s:5:\"value\";a:1:{i:0;i:1;}s:2:\"id\";s:23:\"rm_login_form-element-3\";}s:8:\"\0*\0label\";s:11:\"Remember me\";s:13:\"\0*\0validation\";a:0:{}}i:4;O:14:\"Element_Button\":3:{s:14:\"\0*\0_attributes\";a:5:{s:4:\"type\";s:6:\"submit\";s:5:\"value\";s:5:\"Login\";s:4:\"name\";s:6:\"submit\";s:2:\"id\";s:13:\"rm_submit_btn\";s:5:\"class\";s:35:\"rm_btn rm_login_btn btn btn-primary\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}i:5;O:12:\"Element_HTML\":3:{s:14:\"\0*\0_attributes\";a:3:{s:4:\"name\";s:0:\"\";s:5:\"value\";s:135:\"<div class=\"rm_forgot_pass\"><a href=\"http://airpix.local/wp-login.php?action=lostpassword\" target=\"blank\">Lost your password?</a></div>\";s:2:\"id\";s:23:\"rm_login_form-element-5\";}s:8:\"\0*\0label\";s:0:\"\";s:13:\"\0*\0validation\";a:0:{}}}s:12:\"\0*\0errorView\";O:18:\"ErrorView_Standard\":1:{s:8:\"\0*\0_form\";r:1;}}\";}', 1526437112);

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
(27, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36', 'Chrome', '1526437111', NULL, NULL, NULL);

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
(1, 1, 0),
(16, 1, 0),
(19, 1, 0),
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"534e7874ea4b2ec430cec6644cfe26728bb00e6833e15d911f1fd039867aa669\";a:4:{s:10:\"expiration\";i:1526450568;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.18 Safari/537.36\";s:5:\"login\";i:1525240968;}s:64:\"c18a8b480117d9e5fe91718eb0110f7d5d60b6fc6faa8c9c9abc528f9065c21b\";a:4:{s:10:\"expiration\";i:1527504400;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36\";s:5:\"login\";i:1526294800;}s:64:\"a136a424080cbe2864b9b186d0b4e37a9ad5122062ab3718a81f65076260d23d\";a:4:{s:10:\"expiration\";i:1526608187;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.40 Safari/537.36\";s:5:\"login\";i:1526435387;}}'),
(215, 1, 'closedpostboxes_page', 'a:0:{}'),
(216, 1, 'metaboxhidden_page', 'a:3:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '43'),
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
(197, 12, 'nickname', 'cqthanh');

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
(12, 'cqthanh', '$P$B/iAs21mCEHIb.PgScZ6BBcGY9cZ2a0', 'cqthanh', 'cqthanh@tma.com.vn', '', '2018-04-22 04:17:48', '', 0, 'cqthanh');

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
(1, 1, 'Test upload video', '0181d7880acf0c443a57cd2510a5b81447fa577e1525313685.mp4', '0181d7880acf0c443a57cd2510a5b81447fa577e1525313685.png', 'Test video description', 'mp4', '1:00', 40, 1, '2018-05-03 02:14:45', '2018-05-03 02:14:45'),
(2, 1, 'Video test', '0181d7880acf0c443a57cd2510a5b81447fa577e1526294832.mp4', '0181d7880acf0c443a57cd2510a5b81447fa577e1526294832.png', 'Video description', 'mp4', '1:00', 44, 1, '2018-05-14 10:47:13', '2018-05-14 10:47:13');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_rm_submissions`
--
ALTER TABLE `wp_rm_submissions`
  MODIFY `submission_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rm_submission_fields`
--
ALTER TABLE `wp_rm_submission_fields`
  MODIFY `sub_field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_videos`
--
ALTER TABLE `wp_videos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
