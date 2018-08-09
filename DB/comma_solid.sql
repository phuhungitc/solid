-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2018 at 04:35 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comma_solid`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_commentmeta`
--

CREATE TABLE `cms_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_comments`
--

CREATE TABLE `cms_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_comments`
--

INSERT INTO `cms_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-02 09:58:43', '2018-08-02 09:58:43', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_custom_usermeta`
--

CREATE TABLE `cms_custom_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_custom_usermeta`
--

INSERT INTO `cms_custom_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sysadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'cms_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'cms_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"306aae3456a30b007034362d113156ade060c986ebc560a5963239f41d750b7a\";a:4:{s:10:\"expiration\";i:1533376733;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1533203933;}s:64:\"201f5fe2a1306aafa9d0272952be760ed7ae6402ccc763b720aec8c55a4b2939\";a:4:{s:10:\"expiration\";i:1533377947;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1533205147;}s:64:\"2eb44016980c4fc4cd93f2e70dab29acae1978d6ff5c3834b0761c69dc064a79\";a:4:{s:10:\"expiration\";i:1533378427;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1533205627;}s:64:\"4906a58cf2ab8161fe5a3abafe981720b5574c11ff3a9996c33521e9a78810bd\";a:4:{s:10:\"expiration\";i:1533437184;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1533264384;}}'),
(17, 1, 'cms_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'cms_user-settings', 'libraryContent=browse'),
(20, 1, 'cms_user-settings-time', '1533264583'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:\"acf-group_5b59dc12a77da\";i:1;s:23:\"acf-group_5b581cb4be2f4\";i:2;s:23:\"acf-group_5b56f5e05bb8d\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_custom_users`
--

CREATE TABLE `cms_custom_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_custom_users`
--

INSERT INTO `cms_custom_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sysadmin', '$P$BqVzjHh8W6jIoEQ8ca06/PV4CyDuIY0', 'sysadmin', 'smtpmail.commamedia@gmail.com', '', '2018-08-02 09:58:43', '', 0, 'sysadmin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_links`
--

CREATE TABLE `cms_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_options`
--

CREATE TABLE `cms_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_options`
--

INSERT INTO `cms_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://solid.demo', 'yes'),
(2, 'home', 'http://solid.demo', 'yes'),
(3, 'blogname', 'Solid site', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'smtpmail.commamedia@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=45&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'comma-solid', 'yes'),
(41, 'stylesheet', 'comma-solid-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '560', 'yes'),
(59, 'thumbnail_size_h', '420', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '500', 'yes'),
(62, 'medium_size_h', '500', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '47', 'yes'),
(84, 'page_on_front', '45', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'cms_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:8:\"footer-5\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1533524325;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533549525;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533549707;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533551293;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533204112;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.6\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-6.zip\";}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.6\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1533204327;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533522041;s:7:\"checked\";a:2:{s:17:\"comma-solid-child\";s:3:\"0.1\";s:11:\"comma-solid\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_61082fc9c192de563bde4f89002ce53b', '1533808737', 'no'),
(123, '_site_transient_browser_61082fc9c192de563bde4f89002ce53b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"61.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'Comma Solid Child Theme', 'yes'),
(139, 'theme_mods_commamedia-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533205663;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:8:\"footer-5\";a:0:{}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(142, 'acf_version', '5.6.10', 'yes'),
(143, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533522037;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.6.10\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.1\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(144, 'category_children', 'a:0:{}', 'yes'),
(146, 'theme_mods_comma-solid-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'WPLANG', '', 'yes'),
(157, 'new_admin_email', 'smtpmail.commamedia@gmail.com', 'yes'),
(161, 'options_show_breadcrumb', '0', 'no'),
(162, '_options_show_breadcrumb', 'field_5b57e805ecd85', 'no'),
(163, 'options_slider_default', '0', 'no'),
(164, '_options_slider_default', 'field_5b584e2745cd4', 'no'),
(165, 'options_scroll_on_top', '1', 'no'),
(166, '_options_scroll_on_top', 'field_5b5952dc55b27', 'no'),
(167, 'options_image_for_scroll_on_top', '', 'no'),
(168, '_options_image_for_scroll_on_top', 'field_5b59530755b28', 'no'),
(169, 'options_update_wp', '0', 'no'),
(170, '_options_update_wp', 'field_5b598fb2cb7e3', 'no'),
(171, 'options_variation', '1', 'no'),
(172, '_options_variation', 'field_5b56f64d3913c', 'no'),
(173, 'options_fixed_on_scroll', '0', 'no'),
(174, '_options_fixed_on_scroll', 'field_5b56f78ef9346', 'no'),
(175, 'options_logo', '49', 'no'),
(176, '_options_logo', 'field_5b56f7a5f9347', 'no'),
(177, 'options_footer', '1', 'no'),
(178, '_options_footer', 'field_5b56f96b6d5ec', 'no'),
(179, 'options_copyright', '', 'no'),
(180, '_options_copyright', 'field_5b56f9c44382b', 'no'),
(181, 'options_from_email', '', 'no'),
(182, '_options_from_email', 'field_5b57f1436d994', 'no'),
(183, 'options_from_name', '', 'no'),
(184, '_options_from_name', 'field_5b57f2b66d995', 'no'),
(185, 'options_smtp_host', '', 'no'),
(186, '_options_smtp_host', 'field_5b57f30d6d996', 'no'),
(187, 'options_smtp_port', '', 'no'),
(188, '_options_smtp_port', 'field_5b57f3226d997', 'no'),
(189, 'options_encryption_ssl', '1', 'no'),
(190, '_options_encryption_ssl', 'field_5b57f3616d998', 'no'),
(191, 'options_authentication', '1', 'no'),
(192, '_options_authentication', 'field_5b57f44b6d99b', 'no'),
(193, 'options_smtp_username', '', 'no'),
(194, '_options_smtp_username', 'field_5b57f4286d999', 'no'),
(195, 'options_smtp_password', '', 'no'),
(196, '_options_smtp_password', 'field_5b57f42d6d99a', 'no'),
(197, 'options_google_analytics', '0', 'no'),
(198, '_options_google_analytics', 'field_5b5d32280231f', 'no'),
(200, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(210, '_site_transient_timeout_theme_roots', '1533523840', 'no'),
(211, '_site_transient_theme_roots', 'a:2:{s:17:\"comma-solid-child\";s:7:\"/themes\";s:11:\"comma-solid\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `cms_postmeta`
--

CREATE TABLE `cms_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_postmeta`
--

INSERT INTO `cms_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 45, '_edit_last', '1'),
(4, 45, '_wp_page_template', 'default'),
(5, 45, 'content_breadcrumb', '0'),
(6, 45, '_content_breadcrumb', 'field_5b5858dd69894'),
(7, 46, 'content_breadcrumb', '0'),
(8, 46, '_content_breadcrumb', 'field_5b5858dd69894'),
(9, 45, '_edit_lock', '1533205559:1'),
(10, 47, '_edit_last', '1'),
(11, 47, '_wp_page_template', 'default'),
(12, 47, 'content_breadcrumb', '0'),
(13, 47, '_content_breadcrumb', 'field_5b5858dd69894'),
(14, 48, 'content_breadcrumb', '0'),
(15, 48, '_content_breadcrumb', 'field_5b5858dd69894'),
(16, 47, '_edit_lock', '1533205611:1'),
(17, 49, '_wp_attached_file', '2018/08/logopri.png'),
(18, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:56;s:4:\"file\";s:19:\"2018/08/logopri.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1533265006'),
(21, 2, '_wp_desired_post_slug', 'sample-page'),
(22, 3, '_wp_trash_meta_status', 'draft'),
(23, 3, '_wp_trash_meta_time', '1533265008'),
(24, 3, '_wp_desired_post_slug', 'privacy-policy'),
(25, 52, '_edit_last', '1'),
(26, 52, '_wp_page_template', 'default'),
(27, 52, 'content_breadcrumb', '0'),
(28, 52, '_content_breadcrumb', 'field_5b5858dd69894'),
(29, 53, 'content_breadcrumb', '0'),
(30, 53, '_content_breadcrumb', 'field_5b5858dd69894'),
(31, 52, '_edit_lock', '1533264949:1'),
(32, 54, 'content_breadcrumb', '0'),
(33, 54, '_content_breadcrumb', 'field_5b5858dd69894'),
(34, 55, '_edit_last', '1'),
(35, 55, '_wp_page_template', 'default'),
(36, 55, 'content_breadcrumb', '0'),
(37, 55, '_content_breadcrumb', 'field_5b5858dd69894'),
(38, 56, 'content_breadcrumb', '0'),
(39, 56, '_content_breadcrumb', 'field_5b5858dd69894'),
(40, 55, '_edit_lock', '1533264960:1'),
(41, 57, '_edit_last', '1'),
(42, 57, '_wp_page_template', 'default'),
(43, 57, 'content_breadcrumb', '0'),
(44, 57, '_content_breadcrumb', 'field_5b5858dd69894'),
(45, 58, 'content_breadcrumb', '0'),
(46, 58, '_content_breadcrumb', 'field_5b5858dd69894'),
(47, 57, '_edit_lock', '1533265072:1'),
(48, 59, '_menu_item_type', 'post_type'),
(49, 59, '_menu_item_menu_item_parent', '0'),
(50, 59, '_menu_item_object_id', '57'),
(51, 59, '_menu_item_object', 'page'),
(52, 59, '_menu_item_target', ''),
(53, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 59, '_menu_item_xfn', ''),
(55, 59, '_menu_item_url', ''),
(57, 60, '_menu_item_type', 'post_type'),
(58, 60, '_menu_item_menu_item_parent', '0'),
(59, 60, '_menu_item_object_id', '55'),
(60, 60, '_menu_item_object', 'page'),
(61, 60, '_menu_item_target', ''),
(62, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 60, '_menu_item_xfn', ''),
(64, 60, '_menu_item_url', ''),
(66, 61, '_menu_item_type', 'post_type'),
(67, 61, '_menu_item_menu_item_parent', '0'),
(68, 61, '_menu_item_object_id', '52'),
(69, 61, '_menu_item_object', 'page'),
(70, 61, '_menu_item_target', ''),
(71, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 61, '_menu_item_xfn', ''),
(73, 61, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_posts`
--

INSERT INTO `cms_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-02 09:58:43', '2018-08-02 09:58:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-02 09:58:43', '2018-08-02 09:58:43', '', 0, 'http://solid.demo/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-02 09:58:43', '2018-08-02 09:58:43', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://solid.demo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-08-03 09:56:46', '2018-08-03 02:56:46', '', 0, 'http://solid.demo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-02 09:58:43', '2018-08-02 09:58:43', '<h2>Who we are</h2><p>Our website address is: http://solid.demo.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-08-03 09:56:48', '2018-08-03 02:56:48', '', 0, 'http://solid.demo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-02 09:58:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-02 09:58:58', '0000-00-00 00:00:00', '', 0, 'http://solid.demo/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-02 10:06:08', '2018-08-02 10:06:08', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Breadcrumb', 'breadcrumb', 'publish', 'closed', 'closed', '', 'group_5b5858cbc7475', '', '', '2018-08-02 10:06:08', '2018-08-02 10:06:08', '', 0, 'http://solid.demo/?post_type=acf-field-group&p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2018-08-02 10:06:08', '2018-08-02 10:06:08', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:10:\"Full width\";s:11:\"ui_off_text\";s:9:\"Container\";}', 'Content breadcrumb', 'content_breadcrumb', 'publish', 'closed', 'closed', '', 'field_5b5858dd69894', '', '', '2018-08-02 10:06:08', '2018-08-02 10:06:08', '', 5, 'http://solid.demo/?post_type=acf-field&p=6', 0, 'acf-field', '', 0),
(7, 1, '2018-08-02 10:06:08', '2018-08-02 10:06:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b5858dd69894\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Background breadcrumb', 'background_breadcrumb', 'publish', 'closed', 'closed', '', 'field_5b58593aed170', '', '', '2018-08-02 10:06:08', '2018-08-02 10:06:08', '', 5, 'http://solid.demo/?post_type=acf-field&p=7', 1, 'acf-field', '', 0),
(8, 1, '2018-08-02 10:06:08', '2018-08-02 10:06:08', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Shortcode slider', 'shortcode-slider', 'publish', 'closed', 'closed', '', 'group_5b59dc12a77da', '', '', '2018-08-02 10:06:08', '2018-08-02 10:06:08', '', 0, 'http://solid.demo/?post_type=acf-field-group&p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:24:\"slider_default_shortcode\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Shortcode', 'shortcode', 'publish', 'closed', 'closed', '', 'field_5b59dc22c572b', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 8, 'http://solid.demo/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Slider option', 'slider-option', 'publish', 'closed', 'closed', '', 'group_5b581cb4be2f4', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 0, 'http://solid.demo/?post_type=acf-field-group&p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slider item', 'slider_item', 'publish', 'closed', 'closed', '', 'field_5b59b06765565', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 10, 'http://solid.demo/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image slider', 'image_slider', 'publish', 'closed', 'closed', '', 'field_5b581cc1b1bf9', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 11, 'http://solid.demo/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{s:15:\"extrude_replace\";s:15:\"Extrude Replace\";s:17:\"flutter_inside_in\";s:17:\"Flutter Inside in\";s:22:\"clip_oblique_chess_out\";s:24:\"Clip & Oblique Chess out\";s:7:\"wave_in\";s:7:\"Wave in\";s:21:\"vertical_blind_stripe\";s:21:\"Vertical Blind Stripe\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Amination', 'amination', 'publish', 'closed', 'closed', '', 'field_5b58356e92b49', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 11, 'http://solid.demo/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(14, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:10;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'position', 'position', 'publish', 'closed', 'closed', '', 'field_5b5836db09578', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 11, 'http://solid.demo/?post_type=acf-field&p=14', 2, 'acf-field', '', 0),
(15, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Theme settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_5b56f5e05bb8d', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 0, 'http://solid.demo/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', '<span class=\"dashicons dashicons-admin-tools\"></span> General setting', '', 'publish', 'closed', 'closed', '', 'field_5b57e7a3ecd84', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";}', 'Show breadcrumb', 'show_breadcrumb', 'publish', 'closed', 'closed', '', 'field_5b57e805ecd85', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b57e805ecd85\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Background breadcrumb default', 'background_breadcrumb', 'publish', 'closed', 'closed', '', 'field_5b58571763f1c', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"show\";s:11:\"ui_off_text\";s:4:\"hide\";}', 'Slider default', 'slider_default', 'publish', 'closed', 'closed', '', 'field_5b584e2745cd4', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=19', 3, 'acf-field', '', 0),
(20, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b584e2745cd4\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Shortcode slider homepage', 'shortcode_slider_homepage', 'publish', 'closed', 'closed', '', 'field_5b5a94477324c', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=20', 4, 'acf-field', '', 0),
(21, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";}', 'Scroll on top', 'scroll_on_top', 'publish', 'closed', 'closed', '', 'field_5b5952dc55b27', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=21', 5, 'acf-field', '', 0),
(22, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b5952dc55b27\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Image for button scroll on top', 'image_for_scroll_on_top', 'publish', 'closed', 'closed', '', 'field_5b59530755b28', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=22', 6, 'acf-field', '', 0),
(23, 1, '2018-08-02 10:06:09', '2018-08-02 10:06:09', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:7:\"Turn on\";s:11:\"ui_off_text\";s:8:\"Turn off\";}', 'Update WP', 'update_wp', 'publish', 'closed', 'closed', '', 'field_5b598fb2cb7e3', '', '', '2018-08-02 10:06:09', '2018-08-02 10:06:09', '', 15, 'http://solid.demo/?post_type=acf-field&p=23', 7, 'acf-field', '', 0),
(24, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', '<span class=\"dashicons dashicons-schedule\"></span> Header settings', '', 'publish', 'closed', 'closed', '', 'field_5b56f5e92cd6f', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=24', 8, 'acf-field', '', 0),
(25, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{i:1;s:13:\"Variation one\";i:2;s:13:\"Variation two\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:17:\"save_other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Header variation', 'variation', 'publish', 'closed', 'closed', '', 'field_5b56f64d3913c', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=25', 9, 'acf-field', '', 0),
(26, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:36:\"<img id=\"header_varation_1\" src=\"\" >\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b56f64d3913c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Demo', '', 'publish', 'closed', 'closed', '', 'field_5b588df2fc750', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=26', 10, 'acf-field', '', 0),
(27, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:36:\"<img id=\"header_varation_2\" src=\"\" >\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b56f64d3913c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}}', 'Demo', '', 'publish', 'closed', 'closed', '', 'field_5b588e41fc751', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=27', 11, 'acf-field', '', 0),
(28, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:39:\"If enabled, on scroll menu is fixed top\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:6:\"Enable\";s:11:\"ui_off_text\";s:7:\"Disable\";}', 'Fixed on scroll', 'fixed_on_scroll', 'publish', 'closed', 'closed', '', 'field_5b56f78ef9346', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=28', 12, 'acf-field', '', 0),
(29, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5b56f7a5f9347', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=29', 13, 'acf-field', '', 0),
(30, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', '<span class=\"dashicons dashicons-archive\"></span> Footer settings', '', 'publish', 'closed', 'closed', '', 'field_5b56f9326d5eb', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=30', 14, 'acf-field', '', 0),
(31, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{i:1;s:9:\"1 columns\";i:2;s:9:\"2 columns\";i:3;s:9:\"3 columns\";i:4;s:9:\"4 columns\";i:5;s:9:\"5 columns\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:17:\"save_other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Footer variation', 'footer', 'publish', 'closed', 'closed', '', 'field_5b56f96b6d5ec', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=31', 15, 'acf-field', '', 0),
(32, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Copyright © 2018 My website. All rights reserved.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright', 'copyright', 'publish', 'closed', 'closed', '', 'field_5b56f9c44382b', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=32', 16, 'acf-field', '', 0),
(33, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', '<span class=\"dashicons dashicons-email-alt\"></span> SMTP settings', '', 'publish', 'closed', 'closed', '', 'field_5b57f12a6d993', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=33', 17, 'acf-field', '', 0),
(34, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:29:\"smtpmail.commamedia@gmail.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'From email', 'from_email', 'publish', 'closed', 'closed', '', 'field_5b57f1436d994', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=34', 18, 'acf-field', '', 0),
(35, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'From name', 'from_name', 'publish', 'closed', 'closed', '', 'field_5b57f2b66d995', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=35', 19, 'acf-field', '', 0),
(36, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"smtp.gmail.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'SMTP host', 'smtp_host', 'publish', 'closed', 'closed', '', 'field_5b57f30d6d996', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=36', 20, 'acf-field', '', 0),
(37, 1, '2018-08-02 10:06:10', '2018-08-02 10:06:10', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:45:\"465 for SSL and 587 for TLS - Port smtp gmail\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'SMTP port', 'smtp_port', 'publish', 'closed', 'closed', '', 'field_5b57f3226d997', '', '', '2018-08-02 10:06:10', '2018-08-02 10:06:10', '', 15, 'http://solid.demo/?post_type=acf-field&p=37', 21, 'acf-field', '', 0),
(38, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:3:\"Yes\";s:11:\"ui_off_text\";s:2:\"No\";}', 'Encryption SSL', 'encryption_ssl', 'publish', 'closed', 'closed', '', 'field_5b57f3616d998', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=38', 22, 'acf-field', '', 0),
(39, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:3:\"Yes\";s:11:\"ui_off_text\";s:2:\"No\";}', 'Authentication', 'authentication', 'publish', 'closed', 'closed', '', 'field_5b57f44b6d99b', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=39', 23, 'acf-field', '', 0),
(40, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:29:\"smtpmail.commamedia@gmail.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b57f44b6d99b\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'SMTP Username', 'smtp_username', 'publish', 'closed', 'closed', '', 'field_5b57f4286d999', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=40', 24, 'acf-field', '', 0),
(41, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:8:{s:4:\"type\";s:8:\"password\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b57f44b6d99b\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'SMTP Password', 'smtp_password', 'publish', 'closed', 'closed', '', 'field_5b57f42d6d99a', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=41', 25, 'acf-field', '', 0),
(42, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', '<span class=\"dashicons dashicons-external\"></span> More', '', 'publish', 'closed', 'closed', '', 'field_5b5d31e00231e', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=42', 26, 'acf-field', '', 0),
(43, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:6:\"Enable\";s:11:\"ui_off_text\";s:7:\"Disable\";}', 'Google analytics', 'google_analytics', 'publish', 'closed', 'closed', '', 'field_5b5d32280231f', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=43', 27, 'acf-field', '', 0),
(44, 1, '2018-08-02 10:06:11', '2018-08-02 10:06:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:18:\"Ex: UA-123037889-1\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b5d32280231f\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'ID analytics', 'id_analytics', 'publish', 'closed', 'closed', '', 'field_5b5d325302320', '', '', '2018-08-02 10:06:11', '2018-08-02 10:06:11', '', 15, 'http://solid.demo/?post_type=acf-field&p=44', 28, 'acf-field', '', 0),
(45, 1, '2018-08-02 10:28:20', '2018-08-02 10:28:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-02 10:28:20', '2018-08-02 10:28:20', '', 0, 'http://solid.demo/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-08-02 10:28:20', '2018-08-02 10:28:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-08-02 10:28:20', '2018-08-02 10:28:20', '', 45, 'http://solid.demo/2018/08/02/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-08-02 10:28:29', '2018-08-02 10:28:29', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-02 10:28:29', '2018-08-02 10:28:29', '', 0, 'http://solid.demo/?page_id=47', 0, 'page', '', 0),
(48, 1, '2018-08-02 10:28:29', '2018-08-02 10:28:29', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-08-02 10:28:29', '2018-08-02 10:28:29', '', 47, 'http://solid.demo/2018/08/02/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-08-03 09:49:41', '2018-08-03 02:49:41', '', 'logopri', '', 'inherit', 'open', 'closed', '', 'logopri', '', '', '2018-08-03 09:49:41', '2018-08-03 02:49:41', '', 0, 'http://solid.demo/apps/uploads/2018/08/logopri.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-08-03 09:56:46', '2018-08-03 02:56:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://solid.demo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 09:56:46', '2018-08-03 02:56:46', '', 2, 'http://solid.demo/2-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-08-03 09:56:48', '2018-08-03 02:56:48', '<h2>Who we are</h2><p>Our website address is: http://solid.demo.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-03 09:56:48', '2018-08-03 02:56:48', '', 3, 'http://solid.demo/3-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-08-03 09:56:58', '2018-08-03 02:56:58', 'Lorem ipsum dolor sit amet, id posse nonumes quo. Duo illum partiendo at. Pro timeam antiopam an, animal numquam duo ad. Dicit recusabo assueverit ea eum, ne usu tollit similique, sit ad maiorum convenire reprehendunt. Vix in assum vulputate, eos facer erant adipiscing in, in sea dignissim gloriatur.\r\n\r\nCu sea dicunt concludaturque, quo ut tale debitis. Vis no euismod offendit, pro ea facilisis erroribus forensibus. Labore oblique partiendo sea an, et mel nobis nullam scribentur. Eum liber fabulas ad. Ea idque ancillae urbanitas usu, eu vel aeque ornatus.\r\n\r\nIus quas aeterno in, fugit oporteat ei sit. Est id partem populo, deserunt platonem disputando has ei. Eu diam nihil quaestio eam, nam ei veritus patrioque voluptatum. Magna ignota petentium et cum, quo justo accommodare ei.\r\n\r\nMea id augue melius, sint iriure eu duo. Eam iriure admodum ut. Quo prompta nonumes ea, quo cu esse ignota commune. Duis latine volutpat nam ne, utinam volumus percipit ad eam.\r\n\r\nEu inermis nusquam comprehensam duo. Eam et eros tempor fabellas. Vim atqui albucius definitionem at, te homero urbanitas his, debitis mediocrem nam an. Has dicant impetus alienum ea, cu nec meis percipit. Apeirian suavitate evertitur duo ei, laudem denique cum ex. Esse facer graeco his et.', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-08-03 09:57:10', '2018-08-03 02:57:10', '', 0, 'http://solid.demo/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-08-03 09:56:58', '2018-08-03 02:56:58', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-08-03 09:56:58', '2018-08-03 02:56:58', '', 52, 'http://solid.demo/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-08-03 09:57:10', '2018-08-03 02:57:10', 'Lorem ipsum dolor sit amet, id posse nonumes quo. Duo illum partiendo at. Pro timeam antiopam an, animal numquam duo ad. Dicit recusabo assueverit ea eum, ne usu tollit similique, sit ad maiorum convenire reprehendunt. Vix in assum vulputate, eos facer erant adipiscing in, in sea dignissim gloriatur.\r\n\r\nCu sea dicunt concludaturque, quo ut tale debitis. Vis no euismod offendit, pro ea facilisis erroribus forensibus. Labore oblique partiendo sea an, et mel nobis nullam scribentur. Eum liber fabulas ad. Ea idque ancillae urbanitas usu, eu vel aeque ornatus.\r\n\r\nIus quas aeterno in, fugit oporteat ei sit. Est id partem populo, deserunt platonem disputando has ei. Eu diam nihil quaestio eam, nam ei veritus patrioque voluptatum. Magna ignota petentium et cum, quo justo accommodare ei.\r\n\r\nMea id augue melius, sint iriure eu duo. Eam iriure admodum ut. Quo prompta nonumes ea, quo cu esse ignota commune. Duis latine volutpat nam ne, utinam volumus percipit ad eam.\r\n\r\nEu inermis nusquam comprehensam duo. Eam et eros tempor fabellas. Vim atqui albucius definitionem at, te homero urbanitas his, debitis mediocrem nam an. Has dicant impetus alienum ea, cu nec meis percipit. Apeirian suavitate evertitur duo ei, laudem denique cum ex. Esse facer graeco his et.', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-08-03 09:57:10', '2018-08-03 02:57:10', '', 52, 'http://solid.demo/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-03 09:58:22', '2018-08-03 02:58:22', '', 'Dịch vụ', '', 'publish', 'closed', 'closed', '', 'dich-vu', '', '', '2018-08-03 09:58:22', '2018-08-03 02:58:22', '', 0, 'http://solid.demo/?page_id=55', 0, 'page', '', 0),
(56, 1, '2018-08-03 09:58:18', '2018-08-03 02:58:18', '', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-08-03 09:58:18', '2018-08-03 02:58:18', '', 55, 'http://solid.demo/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-03 09:58:31', '2018-08-03 02:58:31', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2018-08-03 09:58:31', '2018-08-03 02:58:31', '', 0, 'http://solid.demo/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-08-03 09:58:31', '2018-08-03 02:58:31', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-08-03 09:58:31', '2018-08-03 02:58:31', '', 57, 'http://solid.demo/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-03 10:01:11', '2018-08-03 03:01:11', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-08-03 10:01:11', '2018-08-03 03:01:11', '', 0, 'http://solid.demo/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2018-08-03 10:01:11', '2018-08-03 03:01:11', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-08-03 10:01:11', '2018-08-03 03:01:11', '', 0, 'http://solid.demo/?p=60', 2, 'nav_menu_item', '', 0),
(61, 1, '2018-08-03 10:01:11', '2018-08-03 03:01:11', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-08-03 10:01:11', '2018-08-03 03:01:11', '', 0, 'http://solid.demo/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2018-08-03 10:13:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-03 10:13:34', '0000-00-00 00:00:00', '', 0, 'http://solid.demo/?post_type=acf-field-group&p=62', 0, 'acf-field-group', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_termmeta`
--

CREATE TABLE `cms_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_terms`
--

CREATE TABLE `cms_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_terms`
--

INSERT INTO `cms_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_term_relationships`
--

CREATE TABLE `cms_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_term_relationships`
--

INSERT INTO `cms_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_term_taxonomy`
--

CREATE TABLE `cms_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_term_taxonomy`
--

INSERT INTO `cms_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_commentmeta`
--
ALTER TABLE `cms_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cms_comments`
--
ALTER TABLE `cms_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `cms_custom_usermeta`
--
ALTER TABLE `cms_custom_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cms_custom_users`
--
ALTER TABLE `cms_custom_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `cms_links`
--
ALTER TABLE `cms_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `cms_options`
--
ALTER TABLE `cms_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `cms_postmeta`
--
ALTER TABLE `cms_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `cms_termmeta`
--
ALTER TABLE `cms_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cms_terms`
--
ALTER TABLE `cms_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `cms_term_relationships`
--
ALTER TABLE `cms_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `cms_term_taxonomy`
--
ALTER TABLE `cms_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_commentmeta`
--
ALTER TABLE `cms_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_comments`
--
ALTER TABLE `cms_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_custom_usermeta`
--
ALTER TABLE `cms_custom_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cms_custom_users`
--
ALTER TABLE `cms_custom_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_links`
--
ALTER TABLE `cms_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_options`
--
ALTER TABLE `cms_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `cms_postmeta`
--
ALTER TABLE `cms_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `cms_termmeta`
--
ALTER TABLE `cms_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_terms`
--
ALTER TABLE `cms_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_term_taxonomy`
--
ALTER TABLE `cms_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
