-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 13 2023 г., 10:43
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testtheme`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2023-10-03 10:50:54', '2023-10-03 07:50:54', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Culrutal_event', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'asdawd@aa.ff', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/archives/%post_id%', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:29:\"archives/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:30:\"archives/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:83:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:78:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:59:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:71:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:53:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:70:\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:65:\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:46:\"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:58:\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:40:\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:57:\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:52:\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:33:\"archives/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:45:\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:27:\"archives/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"archives/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"archives/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"archives/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:30:\"archives/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:50:\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:45:\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:38:\"archives/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:45:\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:34:\"archives/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:26:\"archives/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"archives/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"archives/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:20:\"Cart/cart-plugin.php\";i:1;s:31:\"Censor-plugin/Censor-plugin.php\";i:2;s:27:\"Plugin-form/Plugin-form.php\";i:3;s:23:\"ml-slider/ml-slider.php\";i:4;s:33:\"simple-spoiler/simple-spoiler.php\";i:5;s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'testtheme', 'yes'),
(41, 'stylesheet', 'testtheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1711871449', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1697183456;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697183457;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697183486;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697183496;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697533535;a:1:{s:28:\"ml-slider_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1697614622;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1697615456;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'theme_mods_twentytwentythree', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696319539;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(151, 'current_theme', 'testtheme', 'yes'),
(152, 'theme_mods_testtheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:29;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(170, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(171, 'site_logo', '29', 'yes'),
(181, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'ms_hide_all_ads_until', '1697533530', 'yes'),
(183, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(184, 'metaslider_optin_via', 'modal', 'yes'),
(185, 'metaslider_global_settings', 'a:1:{s:5:\"optIn\";i:1;}', 'yes'),
(186, 'metaslider_optin_user_extras', 'a:4:{s:2:\"id\";i:1;s:5:\"email\";s:12:\"asdawd@aa.ff\";s:2:\"ip\";s:9:\"127.0.0.1\";s:4:\"time\";i:1696323935;}', 'yes'),
(187, 'ml-slider_allow_tracking', 'yes', 'yes'),
(188, 'ml-slider_tracking_notice', 'hide', 'yes'),
(190, 'ml-slider_tracking_last_send', '1696323936', 'yes'),
(192, 'metaslider_tour_cancelled_on', 'add-slide', 'yes'),
(193, 'metaslider_default_settings', 'a:4:{s:5:\"title\";s:28:\"Новое слайд-шоу\";s:9:\"fullWidth\";b:1;s:5:\"width\";i:700;s:6:\"height\";s:3:\"450\";}', 'yes'),
(197, '_transient_timeout_extendify_free_extra_imports_check_1', '1699005448', 'no'),
(198, '_transient_extendify_free_extra_imports_check_1', '1696327048', 'no'),
(199, 'extendifysdk_sitesettings', '{\"state\":{\"enabled\":true},\"version\":0}', 'yes'),
(206, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(215, 'category_children', 'a:0:{}', 'yes'),
(244, 'db_upgraded', '', 'yes'),
(246, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:12:\"asdawd@aa.ff\";s:7:\"version\";s:5:\"6.3.1\";s:9:\"timestamp\";i:1696404988;}', 'no'),
(247, 'can_compress_scripts', '1', 'yes'),
(254, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(267, 'analyst_cache', 's:78:\"a:1:{s:43:\"account_email_confirmation_ao6grd4ed38kyeqz\";s:13:\"651d405ace998\";}\";', 'yes'),
(271, 'sfsi_custom_icons', 'no', 'yes'),
(312, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'sfsi_pplus_error_reporting_notice_dismissed', '1', 'yes'),
(320, 'recovery_mode_email_last_sent', '1696839769', 'yes'),
(321, 'analyst_notices', 's:65:\"O:29:\"Analyst\\Notices\\NoticeFactory\":1:{s:10:\"\0*\0notices\";a:0:{}}\";', 'yes'),
(322, 'analyst_accounts_data', 's:433:\"O:26:\"Account\\AccountDataFactory\":1:{s:11:\"\0*\0accounts\";a:1:{i:0;O:19:\"Account\\AccountData\":7:{s:5:\"\0*\0id\";s:16:\"ao6grd4ed38kyeqz\";s:9:\"\0*\0secret\";s:40:\"ae93c43c738bdf50f10ef9d4c6d811006b468c74\";s:7:\"\0*\0path\";s:107:\"C:\\OSPanel\\domains\\localhost\\wp-content\\plugins\\ultimate-social-media-icons\\ultimate_social_media_icons.php\";s:14:\"\0*\0isInstalled\";b:1;s:12:\"\0*\0isOptedIn\";b:1;s:11:\"\0*\0isSigned\";b:1;s:20:\"\0*\0isInstallResolved\";b:1;}}}\";', 'yes'),
(324, 'ms_was_installed_on', '1696415866', 'yes'),
(329, '_tifm_feature_enabled', 'disabled', 'yes'),
(330, '_tifm_disable_feature_forever', '1', 'yes'),
(331, '_tifm_force_disable_feature_fix', '1', 'yes'),
(332, 'sfsi_was_installed_before', '2.8.5', 'yes'),
(340, 'show_new_notification', 'yes', 'yes'),
(341, 'show_premium_cumulative_count_notification', 'yes', 'yes'),
(342, 'sfsi_section1_options', 's:700:\"a:19:{s:16:\"sfsi_rss_display\";s:2:\"no\";s:18:\"sfsi_email_display\";s:2:\"no\";s:21:\"sfsi_facebook_display\";s:2:\"no\";s:20:\"sfsi_twitter_display\";s:2:\"no\";s:20:\"sfsi_youtube_display\";s:3:\"yes\";s:22:\"sfsi_pinterest_display\";s:2:\"no\";s:21:\"sfsi_telegram_display\";s:3:\"yes\";s:15:\"sfsi_vk_display\";s:3:\"yes\";s:15:\"sfsi_ok_display\";s:2:\"no\";s:19:\"sfsi_wechat_display\";s:2:\"no\";s:18:\"sfsi_weibo_display\";s:2:\"no\";s:21:\"sfsi_linkedin_display\";s:2:\"no\";s:22:\"sfsi_instagram_display\";s:2:\"no\";s:17:\"sfsi_custom_files\";s:0:\"\";s:21:\"sfsi_whatsapp_display\";s:2:\"no\";s:21:\"sfsi_snapchat_display\";s:2:\"no\";s:24:\"sfsi_fbmessenger_display\";s:2:\"no\";s:19:\"sfsi_reddit_display\";s:2:\"no\";s:19:\"sfsi_tiktok_display\";s:2:\"no\";}\";', 'yes'),
(343, 'sfsi_section2_options', 's:2217:\"a:57:{s:12:\"sfsi_rss_url\";s:22:\"http://localhost/feed/\";s:14:\"sfsi_rss_icons\";s:5:\"email\";s:14:\"sfsi_email_url\";s:21:\"https://follow.it/now\";s:24:\"sfsi_facebookPage_option\";s:2:\"no\";s:21:\"sfsi_facebookPage_url\";s:0:\"\";s:24:\"sfsi_facebookLike_option\";s:3:\"yes\";s:25:\"sfsi_facebookShare_option\";s:3:\"yes\";s:21:\"sfsi_twitter_followme\";s:2:\"no\";s:27:\"sfsi_twitter_followUserName\";s:0:\"\";s:22:\"sfsi_twitter_aboutPage\";s:3:\"yes\";s:17:\"sfsi_twitter_page\";s:2:\"no\";s:20:\"sfsi_twitter_pageURL\";s:0:\"\";s:26:\"sfsi_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:20:\"sfsi_youtube_pageUrl\";s:0:\"\";s:17:\"sfsi_youtube_page\";s:2:\"no\";s:24:\"sfsi_youtubeusernameorid\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:19:\"sfsi_youtube_follow\";s:2:\"no\";s:19:\"sfsi_pinterest_page\";s:2:\"no\";s:22:\"sfsi_pinterest_pageUrl\";s:0:\"\";s:23:\"sfsi_pinterest_pingBlog\";s:0:\"\";s:19:\"sfsi_instagram_page\";s:2:\"no\";s:22:\"sfsi_instagram_pageUrl\";s:0:\"\";s:18:\"sfsi_linkedin_page\";s:2:\"no\";s:21:\"sfsi_linkedin_pageURL\";s:0:\"\";s:20:\"sfsi_linkedin_follow\";s:2:\"no\";s:27:\"sfsi_linkedin_followCompany\";s:0:\"\";s:23:\"sfsi_linkedin_SharePage\";s:3:\"yes\";s:30:\"sfsi_linkedin_recommendBusines\";s:2:\"no\";s:30:\"sfsi_linkedin_recommendCompany\";s:0:\"\";s:32:\"sfsi_linkedin_recommendProductId\";s:0:\"\";s:21:\"sfsi_CustomIcon_links\";s:0:\"\";s:24:\"sfsi_telegram_msg_option\";s:3:\"yes\";s:18:\"sfsi_telegram_page\";s:0:\"\";s:21:\"sfsi_telegram_pageURL\";s:0:\"\";s:21:\"sfsi_telegram_message\";s:0:\"\";s:22:\"sfsi_telegram_username\";s:0:\"\";s:25:\"sfsi_telegram_messageName\";s:0:\"\";s:19:\"sfsi_whatsapp_share\";s:3:\"yes\";s:17:\"sfsi_whatsapp_msg\";s:0:\"\";s:15:\"sfsi_weibo_page\";s:3:\"yes\";s:18:\"sfsi_weibo_pageURL\";s:0:\"\";s:12:\"sfsi_vk_page\";s:3:\"yes\";s:15:\"sfsi_vk_pageURL\";s:0:\"\";s:13:\"sfsi_vk_share\";s:0:\"\";s:12:\"sfsi_ok_page\";s:3:\"yes\";s:15:\"sfsi_ok_pageURL\";s:0:\"\";s:17:\"sfsi_wechat_share\";s:5:\"share\";s:18:\"sfsi_wechat_follow\";s:0:\"\";s:21:\"sfsi_snapchat_pageURL\";s:0:\"\";s:16:\"sfsi_tiktok_page\";s:0:\"\";s:19:\"sfsi_tiktok_pageURL\";s:0:\"\";s:22:\"sfsi_fbmessenger_share\";s:3:\"yes\";s:24:\"sfsi_fbmessenger_contact\";s:0:\"\";s:21:\"sfsi_reddit_pageShare\";s:3:\"yes\";s:22:\"sfsi_reddit_page_visit\";s:0:\"\";s:23:\"sfsi_wechatShare_option\";s:3:\"yes\";}\";', 'yes'),
(344, 'sfsi_section3_options', 's:1273:\"a:33:{s:18:\"sfsi_actvite_theme\";s:4:\"flat\";s:14:\"sfsi_mouseOver\";s:2:\"no\";s:21:\"sfsi_mouseOver_effect\";s:7:\"fade_in\";s:26:\"sfsi_mouseover_effect_type\";s:10:\"same_icons\";s:18:\"sfsi_shuffle_icons\";s:2:\"no\";s:22:\"sfsi_shuffle_Firstload\";s:2:\"no\";s:21:\"sfsi_shuffle_interval\";s:2:\"no\";s:25:\"sfsi_shuffle_intervalTime\";i:0;s:26:\"sfsi_specialIcon_animation\";s:0:\"\";s:26:\"sfsi_specialIcon_MouseOver\";s:2:\"no\";s:26:\"sfsi_specialIcon_Firstload\";s:2:\"no\";s:32:\"sfsi_specialIcon_Firstload_Icons\";s:3:\"all\";s:25:\"sfsi_specialIcon_interval\";s:2:\"no\";s:29:\"sfsi_specialIcon_intervalTime\";s:0:\"\";s:30:\"sfsi_specialIcon_intervalIcons\";s:3:\"all\";s:16:\"sfsi_rss_bgColor\";s:0:\"\";s:18:\"sfsi_email_bgColor\";s:0:\"\";s:21:\"sfsi_facebook_bgColor\";s:0:\"\";s:20:\"sfsi_twitter_bgColor\";s:0:\"\";s:20:\"sfsi_youtube_bgColor\";s:7:\"#bb0000\";s:22:\"sfsi_pinterest_bgColor\";s:0:\"\";s:21:\"sfsi_linkedin_bgColor\";s:0:\"\";s:22:\"sfsi_instagram_bgColor\";s:0:\"\";s:21:\"sfsi_snapchat_bgColor\";s:0:\"\";s:21:\"sfsi_whatsapp_bgColor\";s:0:\"\";s:19:\"sfsi_reddit_bgColor\";s:0:\"\";s:24:\"sfsi_fbmessenger_bgColor\";s:0:\"\";s:15:\"sfsi_ok_bgColor\";s:0:\"\";s:21:\"sfsi_telegram_bgColor\";s:7:\"#3b5998\";s:15:\"sfsi_vk_bgColor\";s:7:\"#45668e\";s:19:\"sfsi_wechat_bgColor\";s:0:\"\";s:18:\"sfsi_weibo_bgColor\";s:0:\"\";s:19:\"sfsi_tiktok_bgColor\";s:0:\"\";}\";', 'yes'),
(345, 'sfsi_section4_options', 's:2924:\"a:72:{s:19:\"sfsi_display_counts\";s:2:\"no\";s:24:\"sfsi_email_countsDisplay\";s:2:\"no\";s:21:\"sfsi_email_countsFrom\";s:6:\"source\";s:23:\"sfsi_email_manualCounts\";s:2:\"20\";s:22:\"sfsi_rss_countsDisplay\";s:2:\"no\";s:21:\"sfsi_rss_manualCounts\";s:2:\"20\";s:22:\"sfsi_facebook_PageLink\";s:0:\"\";s:27:\"sfsi_facebook_countsDisplay\";s:2:\"no\";s:24:\"sfsi_facebook_countsFrom\";s:6:\"manual\";s:26:\"sfsi_facebook_manualCounts\";s:2:\"20\";s:26:\"sfsi_twitter_countsDisplay\";s:2:\"no\";s:23:\"sfsi_twitter_countsFrom\";s:6:\"manual\";s:25:\"sfsi_twitter_manualCounts\";s:2:\"20\";s:27:\"sfsi_linkedIn_countsDisplay\";s:2:\"no\";s:24:\"sfsi_linkedIn_countsFrom\";s:6:\"manual\";s:26:\"sfsi_linkedIn_manualCounts\";s:2:\"20\";s:27:\"sfsi_telegram_countsDisplay\";s:2:\"no\";s:24:\"sfsi_telegram_countsFrom\";s:6:\"manual\";s:26:\"sfsi_telegram_manualCounts\";s:2:\"20\";s:21:\"sfsi_vk_countsDisplay\";s:2:\"no\";s:18:\"sfsi_vk_countsFrom\";s:6:\"manual\";s:20:\"sfsi_vk_manualCounts\";s:2:\"20\";s:21:\"sfsi_ok_countsDisplay\";s:2:\"no\";s:18:\"sfsi_ok_countsFrom\";s:6:\"manual\";s:20:\"sfsi_ok_manualCounts\";s:2:\"20\";s:24:\"sfsi_weibo_countsDisplay\";s:2:\"no\";s:21:\"sfsi_weibo_countsFrom\";s:6:\"manual\";s:23:\"sfsi_weibo_manualCounts\";s:2:\"20\";s:17:\"sfsi_round_counts\";s:3:\"yes\";s:20:\"sfsi_original_counts\";s:3:\"yes\";s:27:\"sfsi_responsive_share_count\";s:3:\"yes\";s:25:\"sfsi_wechat_countsDisplay\";s:2:\"no\";s:22:\"sfsi_wechat_countsFrom\";s:6:\"manual\";s:24:\"sfsi_wechat_manualCounts\";s:2:\"20\";s:10:\"ln_api_key\";s:0:\"\";s:13:\"ln_secret_key\";s:0:\"\";s:19:\"ln_oAuth_user_token\";s:0:\"\";s:10:\"ln_company\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:4:\"name\";s:17:\"sfsi_youtube_user\";s:0:\"\";s:22:\"sfsi_youtube_channelId\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:26:\"sfsi_youtube_countsDisplay\";s:2:\"no\";s:23:\"sfsi_youtube_countsFrom\";s:6:\"manual\";s:25:\"sfsi_youtube_manualCounts\";s:2:\"20\";s:28:\"sfsi_pinterest_countsDisplay\";s:2:\"no\";s:25:\"sfsi_pinterest_countsFrom\";s:6:\"manual\";s:27:\"sfsi_pinterest_manualCounts\";s:2:\"20\";s:19:\"sfsi_pinterest_user\";s:0:\"\";s:20:\"sfsi_pinterest_board\";s:0:\"\";s:25:\"sfsi_instagram_countsFrom\";s:6:\"manual\";s:28:\"sfsi_instagram_countsDisplay\";s:2:\"no\";s:27:\"sfsi_instagram_manualCounts\";s:2:\"20\";s:19:\"sfsi_instagram_User\";s:0:\"\";s:27:\"sfsi_whatsapp_countsDisplay\";s:2:\"no\";s:24:\"sfsi_whatsapp_countsFrom\";s:6:\"manual\";s:26:\"sfsi_whatsapp_manualCounts\";s:2:\"20\";s:27:\"sfsi_snapchat_countsDisplay\";s:2:\"no\";s:24:\"sfsi_snapchat_countsFrom\";s:6:\"manual\";s:26:\"sfsi_snapchat_manualCounts\";s:2:\"20\";s:25:\"sfsi_reddit_countsDisplay\";s:2:\"no\";s:22:\"sfsi_reddit_countsFrom\";s:6:\"manual\";s:24:\"sfsi_reddit_manualCounts\";s:2:\"20\";s:30:\"sfsi_fbmessenger_countsDisplay\";s:2:\"no\";s:27:\"sfsi_fbmessenger_countsFrom\";s:6:\"manual\";s:29:\"sfsi_fbmessenger_manualCounts\";s:2:\"20\";s:25:\"sfsi_tiktok_countsDisplay\";s:2:\"no\";s:22:\"sfsi_tiktok_countsFrom\";s:6:\"manual\";s:24:\"sfsi_tiktok_manualCounts\";s:2:\"20\";s:23:\"sfsi_instagram_clientid\";s:0:\"\";s:21:\"sfsi_instagram_appurl\";s:0:\"\";s:20:\"sfsi_instagram_token\";s:0:\"\";}\";', 'yes'),
(346, 'sfsi_section5_options', 's:2445:\"a:56:{s:15:\"sfsi_icons_size\";s:2:\"40\";s:18:\"sfsi_icons_spacing\";s:1:\"5\";s:20:\"sfsi_icons_Alignment\";s:4:\"left\";s:31:\"sfsi_icons_Alignment_via_widget\";s:4:\"left\";s:34:\"sfsi_icons_Alignment_via_shortcode\";s:4:\"left\";s:17:\"sfsi_icons_perRow\";s:1:\"5\";s:26:\"sfsi_follow_icons_language\";s:12:\"Follow_en_US\";s:28:\"sfsi_facebook_icons_language\";s:14:\"Visit_us_en_US\";s:27:\"sfsi_youtube_icons_language\";s:14:\"Visit_us_en_US\";s:27:\"sfsi_twitter_icons_language\";s:14:\"Visit_us_en_US\";s:28:\"sfsi_linkedin_icons_language\";s:5:\"en_US\";s:19:\"sfsi_icons_language\";s:5:\"en_US\";s:24:\"sfsi_icons_ClickPageOpen\";s:3:\"yes\";s:26:\"sfsi_icons_suppress_errors\";s:2:\"no\";s:35:\"sfsi_icons_sharing_and_traffic_tips\";s:3:\"yes\";s:16:\"sfsi_icons_stick\";s:2:\"no\";s:18:\"sfsi_rssIcon_order\";s:1:\"1\";s:20:\"sfsi_emailIcon_order\";s:1:\"2\";s:23:\"sfsi_facebookIcon_order\";s:1:\"3\";s:22:\"sfsi_twitterIcon_order\";s:1:\"4\";s:22:\"sfsi_youtubeIcon_order\";s:1:\"5\";s:24:\"sfsi_pinterestIcon_order\";s:1:\"7\";s:23:\"sfsi_linkedinIcon_order\";s:1:\"8\";s:24:\"sfsi_instagramIcon_order\";s:1:\"9\";s:23:\"sfsi_telegramIcon_order\";s:2:\"11\";s:17:\"sfsi_vkIcon_order\";s:2:\"12\";s:17:\"sfsi_okIcon_order\";s:2:\"13\";s:20:\"sfsi_weiboIcon_order\";s:2:\"14\";s:21:\"sfsi_wechatIcon_order\";s:2:\"15\";s:23:\"sfsi_whatsappIcon_order\";s:2:\"16\";s:23:\"sfsi_snapchatIcon_order\";s:2:\"17\";s:21:\"sfsi_redditIcon_order\";s:2:\"18\";s:26:\"sfsi_fbmessengerIcon_order\";s:2:\"19\";s:21:\"sfsi_tiktokIcon_order\";s:2:\"20\";s:22:\"sfsi_CustomIcons_order\";s:0:\"\";s:22:\"sfsi_rss_MouseOverText\";s:3:\"RSS\";s:24:\"sfsi_email_MouseOverText\";s:15:\"Follow by Email\";s:26:\"sfsi_twitter_MouseOverText\";s:7:\"Twitter\";s:27:\"sfsi_facebook_MouseOverText\";s:8:\"Facebook\";s:27:\"sfsi_linkedIn_MouseOverText\";s:8:\"LinkedIn\";s:28:\"sfsi_pinterest_MouseOverText\";s:9:\"Pinterest\";s:28:\"sfsi_instagram_MouseOverText\";s:9:\"Instagram\";s:26:\"sfsi_youtube_MouseOverText\";s:7:\"YouTube\";s:27:\"sfsi_telegram_MouseOverText\";s:8:\"Telegram\";s:21:\"sfsi_vk_MouseOverText\";s:2:\"VK\";s:21:\"sfsi_ok_MouseOverText\";s:2:\"OK\";s:24:\"sfsi_weibo_MouseOverText\";s:5:\"Weibo\";s:25:\"sfsi_wechat_MouseOverText\";s:6:\"WeChat\";s:27:\"sfsi_whatsapp_MouseOverText\";s:8:\"WhatsApp\";s:25:\"sfsi_reddit_MouseOverText\";s:6:\"Reddit\";s:27:\"sfsi_snapchat_MouseOverText\";s:8:\"Snapchat\";s:30:\"sfsi_fbmessenger_MouseOverText\";s:11:\"FbMessenger\";s:25:\"sfsi_tiktok_MouseOverText\";s:6:\"Tiktok\";s:26:\"sfsi_custom_MouseOverTexts\";s:0:\"\";s:23:\"sfsi_custom_social_hide\";s:2:\"no\";s:32:\"sfsi_pplus_icons_suppress_errors\";s:2:\"no\";}\";', 'yes'),
(347, 'sfsi_section6_options', 's:1319:\"a:12:{s:17:\"sfsi_show_Onposts\";s:2:\"no\";s:22:\"sfsi_icons_postPositon\";s:0:\"\";s:20:\"sfsi_icons_alignment\";s:4:\"left\";s:20:\"sfsi_textBefor_icons\";s:26:\"Please follow and like us:\";s:12:\"sfsi_rectsub\";s:3:\"yes\";s:11:\"sfsi_rectfb\";s:3:\"yes\";s:12:\"sfsi_rectshr\";s:2:\"no\";s:13:\"sfsi_recttwtr\";s:3:\"yes\";s:14:\"sfsi_rectpinit\";s:3:\"yes\";s:16:\"sfsi_rectfbshare\";s:3:\"yes\";s:21:\"sfsi_responsive_icons\";a:3:{s:13:\"default_icons\";a:4:{s:8:\"facebook\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:17:\"Share on Facebook\";s:3:\"url\";s:0:\"\";}s:7:\"Twitter\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:5:\"Tweet\";s:3:\"url\";s:0:\"\";}s:6:\"Follow\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:9:\"Follow us\";s:3:\"url\";s:0:\"\";}s:9:\"Pinterest\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:4:\"Save\";s:3:\"url\";s:0:\"\";}}s:8:\"settings\";a:14:{s:9:\"icon_size\";s:6:\"Medium\";s:15:\"icon_width_type\";s:16:\"Fully responsive\";s:15:\"icon_width_size\";s:3:\"240\";s:9:\"edge_type\";s:5:\"Round\";s:11:\"edge_radius\";s:1:\"5\";s:5:\"style\";s:8:\"Gradient\";s:6:\"margin\";s:2:\"10\";s:10:\"text_align\";s:8:\"Centered\";s:10:\"show_count\";s:2:\"no\";s:13:\"counter_color\";s:7:\"#aaaaaa\";s:16:\"counter_bg_color\";s:4:\"#fff\";s:16:\"share_count_text\";s:6:\"SHARES\";s:12:\"margin_above\";s:2:\"10\";s:12:\"margin_below\";s:2:\"10\";}s:12:\"custom_icons\";a:0:{}}s:24:\"sfsi_display_button_type\";s:17:\"responsive_button\";}\";', 'yes'),
(348, 'sfsi_section7_options', 's:859:\"a:19:{s:15:\"sfsi_show_popup\";s:2:\"no\";s:15:\"sfsi_popup_text\";s:42:\"Enjoy this blog? Please spread the word :)\";s:27:\"sfsi_popup_background_color\";s:7:\"#eff7f7\";s:23:\"sfsi_popup_border_color\";s:7:\"#f3faf2\";s:27:\"sfsi_popup_border_thickness\";s:1:\"1\";s:24:\"sfsi_popup_border_shadow\";s:3:\"yes\";s:15:\"sfsi_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:19:\"sfsi_popup_fontSize\";s:2:\"30\";s:20:\"sfsi_popup_fontStyle\";s:6:\"normal\";s:20:\"sfsi_popup_fontColor\";s:7:\"#000000\";s:17:\"sfsi_Show_popupOn\";s:4:\"none\";s:36:\"sfsi_Show_popupOn_somepages_blogpage\";s:0:\"\";s:40:\"sfsi_Show_popupOn_somepages_selectedpage\";s:0:\"\";s:26:\"sfsi_popup_show_on_desktop\";s:3:\"yes\";s:25:\"sfsi_popup_show_on_mobile\";s:3:\"yes\";s:25:\"sfsi_Show_popupOn_PageIDs\";s:0:\"\";s:14:\"sfsi_Shown_pop\";s:8:\"ETscroll\";s:24:\"sfsi_Shown_popupOnceTime\";s:0:\"\";s:32:\"sfsi_Shown_popuplimitPerUserTime\";s:0:\"\";}\";', 'yes'),
(349, 'sfsi_section8_options', 's:1177:\"a:26:{s:20:\"sfsi_form_adjustment\";s:3:\"yes\";s:16:\"sfsi_form_height\";i:180;s:15:\"sfsi_form_width\";i:230;s:16:\"sfsi_form_border\";s:2:\"no\";s:26:\"sfsi_form_border_thickness\";i:1;s:22:\"sfsi_form_border_color\";s:7:\"#b5b5b5\";s:20:\"sfsi_form_background\";s:7:\"#ffffff\";s:22:\"sfsi_form_heading_text\";s:22:\"Get new posts by email\";s:22:\"sfsi_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:27:\"sfsi_form_heading_fontstyle\";s:4:\"bold\";s:27:\"sfsi_form_heading_fontcolor\";s:7:\"#000000\";s:26:\"sfsi_form_heading_fontsize\";i:16;s:27:\"sfsi_form_heading_fontalign\";s:6:\"center\";s:20:\"sfsi_form_field_text\";s:9:\"Subscribe\";s:20:\"sfsi_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_form_field_fontstyle\";s:6:\"normal\";s:25:\"sfsi_form_field_fontcolor\";s:0:\"\";s:24:\"sfsi_form_field_fontsize\";i:14;s:25:\"sfsi_form_field_fontalign\";s:6:\"center\";s:21:\"sfsi_form_button_text\";s:9:\"Subscribe\";s:21:\"sfsi_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:26:\"sfsi_form_button_fontstyle\";s:4:\"bold\";s:26:\"sfsi_form_button_fontcolor\";s:7:\"#000000\";s:25:\"sfsi_form_button_fontsize\";i:16;s:26:\"sfsi_form_button_fontalign\";s:6:\"center\";s:27:\"sfsi_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(350, 'sfsi_section9_options', 's:1447:\"a:21:{s:20:\"sfsi_show_via_widget\";s:2:\"no\";s:21:\"sfsi_widget_alignment\";s:10:\"Horizontal\";s:16:\"sfsi_icons_float\";s:2:\"no\";s:24:\"sfsi_icons_floatPosition\";s:12:\"center-right\";s:26:\"sfsi_icons_floatMargin_top\";i:0;s:29:\"sfsi_icons_floatMargin_bottom\";i:0;s:27:\"sfsi_icons_floatMargin_left\";i:0;s:28:\"sfsi_icons_floatMargin_right\";i:0;s:23:\"sfsi_disable_floaticons\";s:2:\"no\";s:15:\"sfsi_make_icons\";s:5:\"float\";s:20:\"sfsi_float_alignment\";s:10:\"Horizontal\";s:27:\"sfsi_float_mobile_selection\";s:2:\"no\";s:23:\"sfsi_show_via_shortcode\";s:3:\"yes\";s:24:\"sfsi_shortcode_alignment\";s:10:\"Horizontal\";s:24:\"sfsi_show_via_afterposts\";s:2:\"no\";s:32:\"sfsi_responsive_icons_after_post\";s:3:\"yes\";s:44:\"sfsi_responsive_icons_after_post_on_taxonomy\";s:2:\"no\";s:33:\"sfsi_responsive_icons_after_pages\";s:2:\"no\";s:34:\"sfsi_display_after_woocomerce_desc\";s:2:\"no\";s:15:\"sfsi_sticky_bar\";s:2:\"no\";s:17:\"sfsi_sticky_icons\";a:2:{s:13:\"default_icons\";a:4:{s:8:\"facebook\";a:2:{s:6:\"active\";s:3:\"yes\";s:3:\"url\";s:0:\"\";}s:7:\"Twitter\";a:2:{s:6:\"active\";s:3:\"yes\";s:3:\"url\";s:0:\"\";}s:6:\"Follow\";a:2:{s:6:\"active\";s:3:\"yes\";s:3:\"url\";s:0:\"\";}s:9:\"Pinterest\";a:2:{s:6:\"active\";s:2:\"no\";s:3:\"url\";s:0:\"\";}}s:8:\"settings\";a:8:{s:7:\"desktop\";s:2:\"no\";s:13:\"desktop_width\";s:3:\"782\";s:17:\"desktop_placement\";s:4:\"left\";s:16:\"display_position\";s:1:\"0\";s:27:\"desktop_placement_direction\";s:2:\"up\";s:6:\"mobile\";s:2:\"no\";s:12:\"mobile_width\";s:3:\"784\";s:16:\"mobile_placement\";s:3:\"top\";}}}\";', 'yes'),
(351, 'sfsi_feed_id', '', 'yes'),
(352, 'sfsi_redirect_url', 'https://follow.it/now', 'yes'),
(353, 'sfsi_installDate', '2023-10-04 10:42:25', 'yes'),
(354, 'sfsi_currentDate', '2023-10-04 10:42:25', 'yes'),
(355, 'sfsi_showNextBannerDate', '14 day', 'yes'),
(356, 'sfsi_cycleDate', '180 day', 'yes'),
(357, 'sfsi_loyaltyDate', '180 day', 'yes'),
(358, 'sfsi_RatingDiv', 'no', 'yes'),
(359, 'sfsi_footer_sec', 'no', 'yes'),
(360, 'sfsi_activate', '0', 'yes'),
(361, 'sfsi_dismiss_sharecount', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(362, 'sfsi_dismiss_google_analytic', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(363, 'sfsi_dismiss_woocommerce', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(364, 'sfsi_dismiss_twitter', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(365, 'sfsi_dismiss_copy_delete_post', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(366, 'sfsi_banner_global_firsttime_offer', 's:104:\"a:3:{s:12:\"met_criteria\";s:3:\"yes\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:19:\"2023-10-05 07:08:20\";}\";', 'yes'),
(367, 'sfsi_dismiss_gdpr', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(368, 'sfsi_dismiss_optimization', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(369, 'sfsi_dismiss_gallery', 's:58:\"a:2:{s:11:\"show_banner\";s:3:\"yes\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(370, 'sfsi_banner_global_upgrade', 's:115:\"a:4:{s:12:\"met_criteria\";s:2:\"no\";s:15:\"banner_appeared\";s:2:\"no\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(371, 'sfsi_banner_global_http', 's:115:\"a:4:{s:12:\"met_criteria\";s:2:\"no\";s:15:\"banner_appeared\";s:2:\"no\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(372, 'sfsi_banner_global_gdpr', 's:115:\"a:4:{s:12:\"met_criteria\";s:2:\"no\";s:15:\"banner_appeared\";s:2:\"no\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(373, 'sfsi_banner_global_shares', 's:115:\"a:4:{s:12:\"met_criteria\";s:2:\"no\";s:15:\"banner_appeared\";s:2:\"no\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(374, 'sfsi_banner_global_load_faster', 's:115:\"a:4:{s:12:\"met_criteria\";s:2:\"no\";s:15:\"banner_appeared\";s:2:\"no\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(375, 'sfsi_banner_global_social', 's:115:\"a:4:{s:12:\"met_criteria\";s:2:\"no\";s:15:\"banner_appeared\";s:2:\"no\";s:9:\"is_active\";s:2:\"no\";s:9:\"timestamp\";s:0:\"\";}\";', 'yes'),
(376, 'sfsi_banner_global_pinterest', 's:138:\"a:4:{s:12:\"met_criteria\";s:3:\"yes\";s:15:\"banner_appeared\";s:3:\"yes\";s:9:\"is_active\";s:3:\"yes\";s:9:\"timestamp\";s:19:\"2023-10-19 07:08:21\";}\";', 'yes'),
(377, 'sfsi_banner_popups', 'yes', 'yes'),
(378, 'sfsi_instagram_sf_count', 's:120:\"a:4:{s:7:\"date_sf\";i:1696377600;s:14:\"date_instagram\";s:0:\"\";s:13:\"sfsi_sf_count\";N;s:20:\"sfsi_instagram_count\";s:0:\"\";}\";', 'yes'),
(379, 'sfsi_error_reporting_notice_dismissed', '1', 'yes'),
(380, 'sfsi_fb_count', '', 'yes'),
(381, 'adding_tags', 'yes', 'yes'),
(382, 'widget_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(383, 'sfsi_pluginVersion', '2.72', 'yes'),
(384, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(385, 'show_premium_notification', 'yes', 'yes'),
(386, 'show_notification', 'yes', 'yes'),
(387, 'sfsi_addThis_icon_removal_notice_dismissed', '1', 'yes'),
(388, 'sfsi_show_admin_popup', 'yes', 'no'),
(448, 'simple_spoiler_bg_wrap', 'a:1:{s:5:\"input\";s:7:\"#fbfbfb\";}', 'yes'),
(449, 'simple_spoiler_bg_body', 'a:1:{s:5:\"input\";s:7:\"#f1f1f1\";}', 'yes'),
(450, 'simple_spoiler_br_color', 'a:1:{s:5:\"input\";s:7:\"#ffffff\";}', 'yes'),
(453, 'ml-slider_children', 'a:0:{}', 'yes'),
(471, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697181410;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(472, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697181832;s:7:\"checked\";a:1:{s:9:\"testtheme\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(490, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697098144;s:8:\"response\";a:1:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.8.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.8.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.gif?rev=2569754\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-1544x500.png?rev=2388690\";s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=2421625\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";s:6:\"tested\";s:3:\"6.4\";s:12:\"requires_php\";b:0;s:14:\"upgrade_notice\";s:376:\"<ul>\n<li>Tested with WordPress 6.4-beta &amp; PHP 8.2</li>\n<li>Now icons are disabled in page builders</li>\n<li>Improved copy icon functionality to support more systems</li>\n<li>Replaced twitter icon with X</li>\n<li>Changed default colors for X</li>\n<li>Updated carrousel module for PHP 8.2 and resolved conflicts</li>\n<li>Improved overall compatiblity with PHP 8.2</li>\n</ul>\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.40.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.40.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=2771717\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=2771717\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=2907610\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=2907610\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"simple-spoiler/simple-spoiler.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/simple-spoiler\";s:4:\"slug\";s:14:\"simple-spoiler\";s:6:\"plugin\";s:33:\"simple-spoiler/simple-spoiler.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/simple-spoiler/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/simple-spoiler.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/simple-spoiler/assets/icon-256x256.png?rev=1802329\";s:2:\"1x\";s:67:\"https://ps.w.org/simple-spoiler/assets/icon-128x128.png?rev=1802329\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/simple-spoiler/assets/banner-1544x500.png?rev=1802329\";s:2:\"1x\";s:69:\"https://ps.w.org/simple-spoiler/assets/banner-772x250.png?rev=1802329\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:31:\"Censor-plugin/Censor-plugin.php\";s:0:\"\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.40.0\";s:27:\"Plugin-form/Plugin-form.php\";s:0:\"\";s:33:\"simple-spoiler/simple-spoiler.php\";s:3:\"1.2\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.7.2\";}}', 'no'),
(514, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1697141340', 'no'),
(515, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div>', 'no'),
(517, '_site_transient_timeout_wp_remote_block_patterns_e9c0c7c050311d3ce3f5e69f799fa567', '1697101722', 'no'),
(518, '_site_transient_wp_remote_block_patterns_e9c0c7c050311d3ce3f5e69f799fa567', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:55:\"cURL error 6: Could not resolve host: api.wordpress.org\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(521, '_site_transient_timeout_wp_remote_block_patterns_c3a7d0b74a94a92d13e2422514a421f2', '1697101734', 'no'),
(522, '_site_transient_wp_remote_block_patterns_c3a7d0b74a94a92d13e2422514a421f2', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:58:\"cURL error 28: Resolving timed out after 5011 milliseconds\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(524, '_site_transient_timeout_theme_roots', '1697183631', 'no'),
(525, '_site_transient_theme_roots', 'a:1:{s:9:\"testtheme\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1696319511'),
(5, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1696319523'),
(9, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1696319523'),
(12, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 8, '_wp_attached_file', '2023/10/Без-имени.png'),
(14, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:29:\"2023/10/Без-имени.png\";s:8:\"filesize\";i:8055;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"Без-имени-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1697;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"Без-имени-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10276;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"Без-имени-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1150;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"Без-имени-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7549;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 9, '_wp_attached_file', '2023/10/cropped-Без-имени.png'),
(16, 9, '_wp_attachment_context', 'custom-logo'),
(17, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:141;s:6:\"height\";i:150;s:4:\"file\";s:37:\"2023/10/cropped-Без-имени.png\";s:8:\"filesize\";i:2767;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, '_edit_lock', '1696322109:1'),
(20, 12, '_edit_lock', '1696420003:1'),
(21, 13, '_edit_lock', '1696407440:1'),
(22, 14, '_edit_lock', '1697098345:1'),
(23, 15, '_edit_lock', '1696496461:1'),
(25, 21, '_edit_lock', '1696322204:1'),
(26, 22, '_menu_item_type', 'post_type'),
(27, 22, '_menu_item_menu_item_parent', '0'),
(28, 22, '_menu_item_object_id', '11'),
(29, 22, '_menu_item_object', 'page'),
(30, 22, '_menu_item_target', ''),
(31, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 22, '_menu_item_xfn', ''),
(33, 22, '_menu_item_url', ''),
(34, 23, '_menu_item_type', 'post_type'),
(35, 23, '_menu_item_menu_item_parent', '0'),
(36, 23, '_menu_item_object_id', '13'),
(37, 23, '_menu_item_object', 'page'),
(38, 23, '_menu_item_target', ''),
(39, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 23, '_menu_item_xfn', ''),
(41, 23, '_menu_item_url', ''),
(42, 24, '_menu_item_type', 'post_type'),
(43, 24, '_menu_item_menu_item_parent', '0'),
(44, 24, '_menu_item_object_id', '14'),
(45, 24, '_menu_item_object', 'page'),
(46, 24, '_menu_item_target', ''),
(47, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 24, '_menu_item_xfn', ''),
(49, 24, '_menu_item_url', ''),
(50, 25, '_menu_item_type', 'post_type'),
(51, 25, '_menu_item_menu_item_parent', '0'),
(52, 25, '_menu_item_object_id', '12'),
(53, 25, '_menu_item_object', 'page'),
(54, 25, '_menu_item_target', ''),
(55, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 25, '_menu_item_xfn', ''),
(57, 25, '_menu_item_url', ''),
(58, 26, '_menu_item_type', 'post_type'),
(59, 26, '_menu_item_menu_item_parent', '0'),
(60, 26, '_menu_item_object_id', '15'),
(61, 26, '_menu_item_object', 'page'),
(62, 26, '_menu_item_target', ''),
(63, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 26, '_menu_item_xfn', ''),
(65, 26, '_menu_item_url', ''),
(66, 21, '_wp_trash_meta_status', 'publish'),
(67, 21, '_wp_trash_meta_time', '1696322214'),
(68, 27, '_wp_attached_file', '2023/10/cropped-cropped-Без-имени.png'),
(69, 27, '_wp_attachment_context', 'custom-logo'),
(70, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:139;s:6:\"height\";i:150;s:4:\"file\";s:45:\"2023/10/cropped-cropped-Без-имени.png\";s:8:\"filesize\";i:2765;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 28, '_wp_trash_meta_status', 'publish'),
(72, 28, '_wp_trash_meta_time', '1696322240'),
(73, 29, '_wp_attached_file', '2023/10/cropped-cropped-cropped-Без-имени.png'),
(74, 29, '_wp_attachment_context', 'custom-logo'),
(75, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:139;s:6:\"height\";i:36;s:4:\"file\";s:53:\"2023/10/cropped-cropped-cropped-Без-имени.png\";s:8:\"filesize\";i:1854;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 30, '_wp_trash_meta_status', 'publish'),
(77, 30, '_wp_trash_meta_time', '1696322274'),
(80, 32, 'ml-slider_settings', 'a:39:{s:5:\"title\";s:28:\"Новое слайд-шоу\";s:4:\"type\";s:4:\"nivo\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"350\";s:3:\"spw\";s:1:\"7\";s:3:\"sph\";s:1:\"5\";s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:4:\"none\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:10:\"Назад\";s:8:\"nextText\";s:10:\"Далее\";s:6:\"slices\";s:2:\"15\";s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";i:5;s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:5:\"false\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(81, 32, 'metaslider_slideshow_theme', ''),
(82, 33, '_wp_attached_file', '2023/10/img-2.jpeg'),
(83, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2023/10/img-2.jpeg\";s:8:\"filesize\";i:1154408;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"img-2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20275;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"img-2-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189469;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"img-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8769;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"img-2-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108763;}s:27:\"meta-slider-resized-700x300\";a:5:{s:4:\"file\";s:18:\"img-2-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58272;}s:27:\"meta-slider-resized-620x266\";a:5:{s:4:\"file\";s:18:\"img-2-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47195;}s:27:\"meta-slider-resized-400x171\";a:5:{s:4:\"file\";s:18:\"img-2-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21590;}s:27:\"meta-slider-resized-700x450\";a:5:{s:4:\"file\";s:18:\"img-2-700x450.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89289;}s:27:\"meta-slider-resized-620x399\";a:5:{s:4:\"file\";s:18:\"img-2-620x399.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70635;}s:27:\"meta-slider-resized-400x257\";a:5:{s:4:\"file\";s:18:\"img-2-400x257.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31890;}s:27:\"meta-slider-resized-700x350\";a:5:{s:4:\"file\";s:18:\"img-2-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68154;}s:27:\"meta-slider-resized-620x310\";a:5:{s:4:\"file\";s:18:\"img-2-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54947;}s:27:\"meta-slider-resized-400x200\";a:5:{s:4:\"file\";s:18:\"img-2-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24968;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 34, '_wp_attached_file', '2023/10/img-1.jpeg'),
(85, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2023/10/img-1.jpeg\";s:8:\"filesize\";i:958757;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"img-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18675;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"img-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:148337;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"img-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7984;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"img-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89156;}s:27:\"meta-slider-resized-700x300\";a:5:{s:4:\"file\";s:18:\"img-1-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54131;}s:27:\"meta-slider-resized-620x266\";a:5:{s:4:\"file\";s:18:\"img-1-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44076;}s:27:\"meta-slider-resized-400x171\";a:5:{s:4:\"file\";s:18:\"img-1-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20732;}s:27:\"meta-slider-resized-700x450\";a:5:{s:4:\"file\";s:18:\"img-1-700x450.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74849;}s:27:\"meta-slider-resized-620x399\";a:5:{s:4:\"file\";s:18:\"img-1-620x399.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60418;}s:27:\"meta-slider-resized-400x257\";a:5:{s:4:\"file\";s:18:\"img-1-400x257.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28856;}s:27:\"meta-slider-resized-700x350\";a:5:{s:4:\"file\";s:18:\"img-1-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62072;}s:27:\"meta-slider-resized-620x310\";a:5:{s:4:\"file\";s:18:\"img-1-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50561;}s:27:\"meta-slider-resized-400x200\";a:5:{s:4:\"file\";s:18:\"img-1-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23735;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 35, '_wp_attached_file', '2023/10/img-1.jpg'),
(87, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2023/10/img-1.jpg\";s:8:\"filesize\";i:735216;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"img-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18797;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"img-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127365;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8055;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"img-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81258;}s:27:\"meta-slider-resized-700x300\";a:5:{s:4:\"file\";s:17:\"img-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47657;}s:27:\"meta-slider-resized-620x266\";a:5:{s:4:\"file\";s:17:\"img-1-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39701;}s:27:\"meta-slider-resized-400x171\";a:5:{s:4:\"file\";s:17:\"img-1-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19813;}s:27:\"meta-slider-resized-700x450\";a:5:{s:4:\"file\";s:17:\"img-1-700x450.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69026;}s:27:\"meta-slider-resized-620x399\";a:5:{s:4:\"file\";s:17:\"img-1-620x399.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56609;}s:27:\"meta-slider-resized-400x257\";a:5:{s:4:\"file\";s:17:\"img-1-400x257.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28480;}s:27:\"meta-slider-resized-700x350\";a:5:{s:4:\"file\";s:17:\"img-1-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54626;}s:27:\"meta-slider-resized-620x310\";a:5:{s:4:\"file\";s:17:\"img-1-620x310.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45396;}s:27:\"meta-slider-resized-400x200\";a:5:{s:4:\"file\";s:17:\"img-1-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22465;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 36, '_wp_attached_file', '2023/10/img-1.png'),
(89, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:796;s:4:\"file\";s:17:\"2023/10/img-1.png\";s:8:\"filesize\";i:1437238;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"img-1-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101136;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"img-1-1024x679.png\";s:5:\"width\";i:1024;s:6:\"height\";i:679;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:989290;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"img-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39649;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"img-1-768x509.png\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:580451;}s:27:\"meta-slider-resized-700x300\";a:5:{s:4:\"file\";s:17:\"img-1-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:332583;}s:27:\"meta-slider-resized-620x266\";a:5:{s:4:\"file\";s:17:\"img-1-620x266.png\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:264688;}s:27:\"meta-slider-resized-400x171\";a:5:{s:4:\"file\";s:17:\"img-1-400x171.png\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114483;}s:27:\"meta-slider-resized-700x450\";a:5:{s:4:\"file\";s:17:\"img-1-700x450.png\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:472289;}s:27:\"meta-slider-resized-620x399\";a:5:{s:4:\"file\";s:17:\"img-1-620x399.png\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:377189;}s:27:\"meta-slider-resized-400x257\";a:5:{s:4:\"file\";s:17:\"img-1-400x257.png\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163705;}s:27:\"meta-slider-resized-700x350\";a:5:{s:4:\"file\";s:17:\"img-1-700x350.png\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:379224;}s:27:\"meta-slider-resized-620x310\";a:5:{s:4:\"file\";s:17:\"img-1-620x310.png\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:301962;}s:27:\"meta-slider-resized-400x200\";a:5:{s:4:\"file\";s:17:\"img-1-400x200.png\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:131537;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 37, '_wp_attached_file', '2023/10/img-1.webp'),
(91, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:18:\"2023/10/img-1.webp\";s:8:\"filesize\";i:189008;s:5:\"sizes\";a:14:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"img-1-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12492;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"img-1-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:75694;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"img-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5424;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"img-1-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:48232;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"img-1-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:138078;}s:27:\"meta-slider-resized-700x300\";a:5:{s:4:\"file\";s:18:\"img-1-700x300.webp\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24460;}s:27:\"meta-slider-resized-620x266\";a:5:{s:4:\"file\";s:18:\"img-1-620x266.webp\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20636;}s:27:\"meta-slider-resized-400x171\";a:5:{s:4:\"file\";s:18:\"img-1-400x171.webp\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11018;}s:27:\"meta-slider-resized-700x450\";a:5:{s:4:\"file\";s:18:\"img-1-700x450.webp\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:37676;}s:27:\"meta-slider-resized-620x399\";a:5:{s:4:\"file\";s:18:\"img-1-620x399.webp\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:31304;}s:27:\"meta-slider-resized-400x257\";a:5:{s:4:\"file\";s:18:\"img-1-400x257.webp\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16786;}s:27:\"meta-slider-resized-700x350\";a:5:{s:4:\"file\";s:18:\"img-1-700x350.webp\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:28876;}s:27:\"meta-slider-resized-620x310\";a:5:{s:4:\"file\";s:18:\"img-1-620x310.webp\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:25316;}s:27:\"meta-slider-resized-400x200\";a:5:{s:4:\"file\";s:18:\"img-1-400x200.webp\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13026;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 38, '_thumbnail_id', '33'),
(93, 38, 'ml-slider_type', 'image'),
(94, 38, 'ml-slider_inherit_image_title', '1'),
(95, 38, 'ml-slider_inherit_image_alt', '1'),
(96, 39, '_thumbnail_id', '34'),
(97, 39, 'ml-slider_type', 'image'),
(98, 39, 'ml-slider_inherit_image_title', '1'),
(99, 39, 'ml-slider_inherit_image_alt', '1'),
(100, 40, '_thumbnail_id', '35'),
(101, 40, 'ml-slider_type', 'image'),
(102, 40, 'ml-slider_inherit_image_title', '1'),
(103, 40, 'ml-slider_inherit_image_alt', '1'),
(104, 41, '_thumbnail_id', '36'),
(105, 41, 'ml-slider_type', 'image'),
(106, 41, 'ml-slider_inherit_image_title', '1'),
(107, 41, 'ml-slider_inherit_image_alt', '1'),
(108, 42, '_thumbnail_id', '37'),
(109, 42, 'ml-slider_type', 'image'),
(110, 42, 'ml-slider_inherit_image_title', '1'),
(111, 42, 'ml-slider_inherit_image_alt', '1'),
(112, 38, 'ml-slider_crop_position', 'center-center'),
(113, 38, 'ml-slider_caption_source', 'image-caption'),
(114, 38, '_wp_attachment_image_alt', ''),
(115, 39, 'ml-slider_crop_position', 'center-center'),
(116, 39, 'ml-slider_caption_source', 'image-caption'),
(117, 39, '_wp_attachment_image_alt', ''),
(118, 40, 'ml-slider_crop_position', 'center-center'),
(119, 40, 'ml-slider_caption_source', 'image-caption'),
(120, 40, '_wp_attachment_image_alt', ''),
(121, 41, 'ml-slider_crop_position', 'center-center'),
(122, 41, 'ml-slider_caption_source', 'image-caption'),
(123, 41, '_wp_attachment_image_alt', ''),
(124, 42, 'ml-slider_crop_position', 'center-center'),
(125, 42, 'ml-slider_caption_source', 'image-caption'),
(126, 42, '_wp_attachment_image_alt', ''),
(127, 33, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-700x300.jpeg\";s:4:\"file\";s:18:\"img-2-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58272;}s:15:\"resized-620x266\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-620x266.jpeg\";s:4:\"file\";s:18:\"img-2-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47195;}s:15:\"resized-400x171\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-400x171.jpeg\";s:4:\"file\";s:18:\"img-2-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21590;}s:15:\"resized-700x450\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-700x450.jpeg\";s:4:\"file\";s:18:\"img-2-700x450.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89289;}s:15:\"resized-620x399\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-620x399.jpeg\";s:4:\"file\";s:18:\"img-2-620x399.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70635;}s:15:\"resized-400x257\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-400x257.jpeg\";s:4:\"file\";s:18:\"img-2-400x257.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31890;}s:15:\"resized-700x350\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-700x350.jpeg\";s:4:\"file\";s:18:\"img-2-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68154;}s:15:\"resized-620x310\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-620x310.jpeg\";s:4:\"file\";s:18:\"img-2-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54947;}s:15:\"resized-400x200\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-2-400x200.jpeg\";s:4:\"file\";s:18:\"img-2-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24968;}}'),
(128, 34, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x300.jpeg\";s:4:\"file\";s:18:\"img-1-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54131;}s:15:\"resized-620x266\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x266.jpeg\";s:4:\"file\";s:18:\"img-1-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44076;}s:15:\"resized-400x171\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x171.jpeg\";s:4:\"file\";s:18:\"img-1-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20732;}s:15:\"resized-700x450\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x450.jpeg\";s:4:\"file\";s:18:\"img-1-700x450.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74849;}s:15:\"resized-620x399\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x399.jpeg\";s:4:\"file\";s:18:\"img-1-620x399.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60418;}s:15:\"resized-400x257\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x257.jpeg\";s:4:\"file\";s:18:\"img-1-400x257.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28856;}s:15:\"resized-700x350\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x350.jpeg\";s:4:\"file\";s:18:\"img-1-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62072;}s:15:\"resized-620x310\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x310.jpeg\";s:4:\"file\";s:18:\"img-1-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50561;}s:15:\"resized-400x200\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x200.jpeg\";s:4:\"file\";s:18:\"img-1-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23735;}}'),
(129, 35, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x300.jpg\";s:4:\"file\";s:17:\"img-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47657;}s:15:\"resized-620x266\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x266.jpg\";s:4:\"file\";s:17:\"img-1-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39701;}s:15:\"resized-400x171\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x171.jpg\";s:4:\"file\";s:17:\"img-1-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19813;}s:15:\"resized-700x450\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x450.jpg\";s:4:\"file\";s:17:\"img-1-700x450.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69026;}s:15:\"resized-620x399\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x399.jpg\";s:4:\"file\";s:17:\"img-1-620x399.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56609;}s:15:\"resized-400x257\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x257.jpg\";s:4:\"file\";s:17:\"img-1-400x257.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28480;}s:15:\"resized-700x350\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x350.jpg\";s:4:\"file\";s:17:\"img-1-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54626;}s:15:\"resized-620x310\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x310.jpg\";s:4:\"file\";s:17:\"img-1-620x310.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45396;}s:15:\"resized-400x200\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x200.jpg\";s:4:\"file\";s:17:\"img-1-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22465;}}'),
(130, 36, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x300.png\";s:4:\"file\";s:17:\"img-1-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:332583;}s:15:\"resized-620x266\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x266.png\";s:4:\"file\";s:17:\"img-1-620x266.png\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:264688;}s:15:\"resized-400x171\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x171.png\";s:4:\"file\";s:17:\"img-1-400x171.png\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114483;}s:15:\"resized-700x450\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x450.png\";s:4:\"file\";s:17:\"img-1-700x450.png\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:472289;}s:15:\"resized-620x399\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x399.png\";s:4:\"file\";s:17:\"img-1-620x399.png\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:377189;}s:15:\"resized-400x257\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x257.png\";s:4:\"file\";s:17:\"img-1-400x257.png\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163705;}s:15:\"resized-700x350\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x350.png\";s:4:\"file\";s:17:\"img-1-700x350.png\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:379224;}s:15:\"resized-620x310\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x310.png\";s:4:\"file\";s:17:\"img-1-620x310.png\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:301962;}s:15:\"resized-400x200\";a:6:{s:4:\"path\";s:70:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x200.png\";s:4:\"file\";s:17:\"img-1-400x200.png\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:131537;}}'),
(131, 37, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x300.webp\";s:4:\"file\";s:18:\"img-1-700x300.webp\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24460;}s:15:\"resized-620x266\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x266.webp\";s:4:\"file\";s:18:\"img-1-620x266.webp\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20636;}s:15:\"resized-400x171\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x171.webp\";s:4:\"file\";s:18:\"img-1-400x171.webp\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11018;}s:15:\"resized-700x450\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x450.webp\";s:4:\"file\";s:18:\"img-1-700x450.webp\";s:5:\"width\";i:700;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:37676;}s:15:\"resized-620x399\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x399.webp\";s:4:\"file\";s:18:\"img-1-620x399.webp\";s:5:\"width\";i:620;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:31304;}s:15:\"resized-400x257\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x257.webp\";s:4:\"file\";s:18:\"img-1-400x257.webp\";s:5:\"width\";i:400;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16786;}s:15:\"resized-700x350\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-700x350.webp\";s:4:\"file\";s:18:\"img-1-700x350.webp\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:28876;}s:15:\"resized-620x310\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-620x310.webp\";s:4:\"file\";s:18:\"img-1-620x310.webp\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:25316;}s:15:\"resized-400x200\";a:6:{s:4:\"path\";s:71:\"C:OSPaneldomainslocalhost/wp-content/uploads/2023/10/img-1-400x200.webp\";s:4:\"file\";s:18:\"img-1-400x200.webp\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13026;}}'),
(132, 14, '_edit_last', '1'),
(133, 44, '_edit_lock', '1696327278:1'),
(134, 45, '_edit_lock', '1696327206:1'),
(135, 47, '_edit_lock', '1696327221:1'),
(136, 48, '_edit_lock', '1696327251:1'),
(137, 46, '_edit_lock', '1696327215:1'),
(138, 49, '_edit_lock', '1696327226:1'),
(145, 45, '_edit_last', '1'),
(146, 45, '_wp_page_template', 'posts/single-post6.php'),
(148, 46, '_edit_last', '1'),
(149, 46, '_wp_page_template', 'posts/single-post5.php'),
(151, 47, '_edit_last', '1'),
(152, 47, '_wp_page_template', 'posts/single-post4.php'),
(154, 49, '_edit_last', '1'),
(155, 49, '_wp_page_template', 'posts/single-post3.php'),
(157, 48, '_edit_last', '1'),
(158, 48, '_wp_page_template', 'posts/single-post2.php'),
(160, 44, '_edit_last', '1'),
(161, 44, '_wp_page_template', 'posts/single-post1.php'),
(163, 25, '_wp_old_date', '2023-10-03'),
(164, 56, '_wp_trash_meta_status', 'publish'),
(165, 56, '_wp_trash_meta_time', '1696405297'),
(166, 13, '_edit_last', '1'),
(167, 13, '_wp_page_template', 'pages/ivents.php'),
(172, 12, '_edit_last', '1'),
(173, 12, '_wp_page_template', 'pages/infus.php'),
(174, 15, '_edit_last', '1'),
(175, 15, '_wp_page_template', 'pages/404.php'),
(178, 60, 'ml-slider_settings', 'a:39:{s:5:\"title\";s:28:\"Новое слайд-шоу\";s:4:\"type\";s:4:\"nivo\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";i:700;s:6:\"height\";s:3:\"450\";s:3:\"spw\";s:1:\"7\";s:3:\"sph\";s:1:\"5\";s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:4:\"none\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:10:\"Назад\";s:8:\"nextText\";s:10:\"Далее\";s:6:\"slices\";s:2:\"15\";s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";i:5;s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";b:1;s:10:\"noConflict\";s:5:\"false\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(179, 60, 'metaslider_slideshow_theme', ''),
(180, 61, '_edit_lock', '1696585139:1'),
(181, 62, '_edit_lock', '1696585144:1'),
(183, 61, '_edit_last', '1'),
(186, 62, '_edit_last', '1'),
(188, 61, '_wp_page_template', 'posts/single-post7.php'),
(190, 62, '_wp_page_template', 'posts/single-post8.php'),
(191, 62, '_encloseme', '1'),
(192, 65, '_edit_lock', '1696841386:1'),
(193, 66, '_edit_lock', '1696837398:1'),
(194, 65, '_edit_last', '1'),
(195, 66, '_edit_last', '1'),
(196, 66, '_wp_page_template', 'pages/register.php'),
(197, 65, '_wp_page_template', 'pages/login.php'),
(198, 14, '_wp_page_template', 'pages/wishtovisit.php'),
(199, 70, '_edit_lock', '1697101767:1'),
(200, 70, '_edit_last', '1'),
(201, 70, '_wp_page_template', 'pages/404.php');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-03 10:50:54', '2023-10-03 07:50:54', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2023-10-03 10:51:52', '2023-10-03 07:51:52', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-03 10:50:54', '2023-10-03 07:50:54', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-10-03 10:52:03', '2023-10-03 07:52:03', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-03 10:50:54', '2023-10-03 07:50:54', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-10-03 10:52:03', '2023-10-03 07:52:03', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-10-03 10:51:52', '2023-10-03 07:51:52', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-10-03 10:51:52', '2023-10-03 07:51:52', '', 1, 'http://localhost/?p=5', 0, 'revision', '', 0),
(6, 1, '2023-10-03 10:52:03', '2023-10-03 07:52:03', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-10-03 10:52:03', '2023-10-03 07:52:03', '', 3, 'http://localhost/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-10-03 10:52:03', '2023-10-03 07:52:03', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-03 10:52:03', '2023-10-03 07:52:03', '', 2, 'http://localhost/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-10-03 11:30:37', '2023-10-03 08:30:37', '', 'Без имени', '', 'inherit', 'open', 'closed', '', '%d0%b1%d0%b5%d0%b7-%d0%b8%d0%bc%d0%b5%d0%bd%d0%b8', '', '', '2023-10-03 11:30:37', '2023-10-03 08:30:37', '', 0, 'http://localhost/wp-content/uploads/2023/10/Без-имени.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2023-10-03 11:31:09', '2023-10-03 08:31:09', 'http://localhost/wp-content/uploads/2023/10/cropped-Без-имени.png', 'cropped-Без-имени.png', '', 'inherit', 'open', 'closed', '', 'cropped-%d0%b1%d0%b5%d0%b7-%d0%b8%d0%bc%d0%b5%d0%bd%d0%b8-png', '', '', '2023-10-03 11:31:09', '2023-10-03 08:31:09', '', 0, 'http://localhost/wp-content/uploads/2023/10/cropped-Без-имени.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2023-10-03 11:35:06', '2023-10-03 08:35:06', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2023-10-03 11:35:06', '2023-10-03 08:35:06', '', 0, 'http://localhost/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-10-03 11:34:42', '2023-10-03 08:34:42', '', 'Напишите нам', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d0%bf%d0%b8%d1%88%d0%b8%d1%82%d0%b5-%d0%bd%d0%b0%d0%bc', '', '', '2023-10-04 14:46:42', '2023-10-04 11:46:42', '', 0, 'http://localhost/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-10-03 11:34:36', '2023-10-03 08:34:36', '', 'Мероприятия', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f', '', '', '2023-10-04 11:17:20', '2023-10-04 08:17:20', '', 0, 'http://localhost/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-10-03 11:34:55', '2023-10-03 08:34:55', '', 'Желаю посетить', '', 'publish', 'closed', 'closed', '', '%d0%b6%d0%b5%d0%bb%d0%b0%d1%8e%d0%bf%d0%be%d1%81%d0%b5%d1%82%d0%b8%d1%82%d1%8c', '', '', '2023-10-11 14:34:58', '2023-10-11 11:34:58', '', 0, 'http://localhost/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-10-03 11:35:01', '2023-10-03 08:35:01', '', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b8%d0%bd%d0%b5%d1%82', '', '', '2023-10-05 12:01:01', '2023-10-05 09:01:01', '', 0, 'http://localhost/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-10-03 11:34:36', '2023-10-03 08:34:36', '', 'Мероприятия', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-10-03 11:34:36', '2023-10-03 08:34:36', '', 13, 'http://localhost/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-10-03 11:34:42', '2023-10-03 08:34:42', '', 'Напишите нам', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-10-03 11:34:42', '2023-10-03 08:34:42', '', 12, 'http://localhost/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-03 11:34:55', '2023-10-03 08:34:55', '', 'Записаться', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-10-03 11:34:55', '2023-10-03 08:34:55', '', 14, 'http://localhost/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-10-03 11:35:01', '2023-10-03 08:35:01', '', 'Личный кабинет', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-10-03 11:35:01', '2023-10-03 08:35:01', '', 15, 'http://localhost/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-10-03 11:35:06', '2023-10-03 08:35:06', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-10-03 11:35:06', '2023-10-03 08:35:06', '', 11, 'http://localhost/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-10-03 11:36:50', '2023-10-03 08:36:50', '{\n    \"nav_menu[-893777306303293400]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:36:43\"\n    },\n    \"nav_menu_item[-2377543831264233500]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"url\": \"http://localhost/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"nav_menu_term_id\": -893777306303293400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:36:43\"\n    },\n    \"nav_menu_item[-7164726471457943000]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f\",\n            \"url\": \"http://localhost/%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d1%8f/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f\",\n            \"nav_menu_term_id\": -893777306303293400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:36:43\"\n    },\n    \"nav_menu_item[-322955555139473400]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0417\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c\\u0441\\u044f\",\n            \"url\": \"http://localhost/%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d0%b0%d1%82%d1%8c%d1%81%d1%8f/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0417\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c\\u0441\\u044f\",\n            \"nav_menu_term_id\": -893777306303293400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:36:50\"\n    },\n    \"nav_menu_item[-4646749584931010000]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": -7164726471457943000,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041d\\u0430\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c\",\n            \"url\": \"http://localhost/%d0%bd%d0%b0%d0%bf%d0%b8%d1%88%d0%b8%d1%82%d0%b5-%d0%bd%d0%b0%d0%bc/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041d\\u0430\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c\",\n            \"nav_menu_term_id\": -893777306303293400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:36:50\"\n    },\n    \"nav_menu_item[-985728298392604700]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\n            \"url\": \"http://localhost/%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b8%d0%bd%d0%b5%d1%82/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\",\n            \"nav_menu_term_id\": -893777306303293400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:36:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8ae1f17f-91c7-4041-9ac8-3c3cde39f993', '', '', '2023-10-03 11:36:50', '2023-10-03 08:36:50', '', 0, 'http://localhost/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2023-10-03 11:36:50', '2023-10-03 08:36:50', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-10-03 11:36:50', '2023-10-03 08:36:50', '', 0, 'http://localhost/2023/10/03/22/', 1, 'nav_menu_item', '', 0),
(23, 1, '2023-10-03 11:36:51', '2023-10-03 08:36:51', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2023-10-03 11:36:51', '2023-10-03 08:36:51', '', 0, 'http://localhost/2023/10/03/23/', 2, 'nav_menu_item', '', 0),
(24, 1, '2023-10-03 11:36:52', '2023-10-03 08:36:52', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2023-10-03 11:36:52', '2023-10-03 08:36:52', '', 0, 'http://localhost/2023/10/03/24/', 4, 'nav_menu_item', '', 0),
(25, 1, '2023-10-04 10:41:37', '2023-10-03 08:36:53', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2023-10-04 10:41:37', '2023-10-04 07:41:37', '', 0, 'http://localhost/2023/10/03/25/', 3, 'nav_menu_item', '', 0),
(26, 1, '2023-10-03 11:36:53', '2023-10-03 08:36:53', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2023-10-03 11:36:53', '2023-10-03 08:36:53', '', 0, 'http://localhost/2023/10/03/26/', 5, 'nav_menu_item', '', 0),
(27, 1, '2023-10-03 11:37:18', '2023-10-03 08:37:18', 'http://localhost/wp-content/uploads/2023/10/cropped-Без-имени.png', 'cropped-cropped-Без-имени.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-%d0%b1%d0%b5%d0%b7-%d0%b8%d0%bc%d0%b5%d0%bd%d0%b8-png', '', '', '2023-10-03 11:37:18', '2023-10-03 08:37:18', '', 0, 'http://localhost/wp-content/uploads/2023/10/cropped-cropped-Без-имени.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2023-10-03 11:37:20', '2023-10-03 08:37:20', '{\n    \"testtheme::custom_logo\": {\n        \"value\": 27,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:37:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89448828-bbfd-4eb4-b639-7b8165fa2576', '', '', '2023-10-03 11:37:20', '2023-10-03 08:37:20', '', 0, 'http://localhost/2023/10/03/89448828-bbfd-4eb4-b639-7b8165fa2576/', 0, 'customize_changeset', '', 0),
(29, 1, '2023-10-03 11:37:47', '2023-10-03 08:37:47', 'http://localhost/wp-content/uploads/2023/10/cropped-Без-имени.png', 'cropped-cropped-cropped-Без-имени.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-cropped-%d0%b1%d0%b5%d0%b7-%d0%b8%d0%bc%d0%b5%d0%bd%d0%b8-png', '', '', '2023-10-03 11:37:47', '2023-10-03 08:37:47', '', 0, 'http://localhost/wp-content/uploads/2023/10/cropped-cropped-cropped-Без-имени.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2023-10-03 11:37:53', '2023-10-03 08:37:53', '{\n    \"testtheme::custom_logo\": {\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-03 08:37:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dbadee50-ef92-47c8-809e-fb4683596c32', '', '', '2023-10-03 11:37:53', '2023-10-03 08:37:53', '', 0, 'http://localhost/2023/10/03/dbadee50-ef92-47c8-809e-fb4683596c32/', 0, 'customize_changeset', '', 0),
(32, 1, '2023-10-03 12:05:36', '2023-10-03 09:05:36', '', 'Слайдер картинки', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d0%b5-%d1%81%d0%bb%d0%b0%d0%b9%d0%b4-%d1%88%d0%be%d1%83', '', '', '2023-10-06 11:00:30', '2023-10-06 08:00:30', '', 0, 'http://localhost/?post_type=ml-slider&#038;p=32', 0, 'ml-slider', '', 0),
(33, 1, '2023-10-03 12:06:10', '2023-10-03 09:06:10', '', 'img (2)', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2023-10-03 12:06:10', '2023-10-03 09:06:10', '', 0, 'http://localhost/wp-content/uploads/2023/10/img-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2023-10-03 12:06:12', '2023-10-03 09:06:12', '', 'img (1)', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2023-10-03 12:06:12', '2023-10-03 09:06:12', '', 0, 'http://localhost/wp-content/uploads/2023/10/img-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2023-10-03 12:06:13', '2023-10-03 09:06:13', '', 'img (1)', '', 'inherit', 'open', 'closed', '', 'img-1-2', '', '', '2023-10-03 12:06:13', '2023-10-03 09:06:13', '', 0, 'http://localhost/wp-content/uploads/2023/10/img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-10-03 12:06:15', '2023-10-03 09:06:15', '', 'img (1)', '', 'inherit', 'open', 'closed', '', 'img-1-3', '', '', '2023-10-03 12:06:15', '2023-10-03 09:06:15', '', 0, 'http://localhost/wp-content/uploads/2023/10/img-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2023-10-03 12:06:17', '2023-10-03 09:06:17', '', 'img (1)', '', 'inherit', 'open', 'closed', '', 'img-1-4', '', '', '2023-10-03 12:06:17', '2023-10-03 09:06:17', '', 0, 'http://localhost/wp-content/uploads/2023/10/img-1.webp', 0, 'attachment', 'image/webp', 0),
(38, 1, '2023-10-03 12:06:20', '2023-10-03 09:06:20', '', 'Slider 32 - image', '', 'publish', 'closed', 'closed', '', 'slider-32-image', '', '', '2023-10-06 11:00:30', '2023-10-06 08:00:30', '', 0, 'http://localhost/?post_type=ml-slide&#038;p=38', 0, 'ml-slide', '', 0),
(39, 1, '2023-10-03 12:06:21', '2023-10-03 09:06:21', '', 'Slider 32 - image', '', 'publish', 'closed', 'closed', '', 'slider-32-image-2', '', '', '2023-10-06 11:00:30', '2023-10-06 08:00:30', '', 0, 'http://localhost/?post_type=ml-slide&#038;p=39', 1, 'ml-slide', '', 0),
(40, 1, '2023-10-03 12:06:21', '2023-10-03 09:06:21', '', 'Slider 32 - image', '', 'publish', 'closed', 'closed', '', 'slider-32-image-3', '', '', '2023-10-06 11:00:31', '2023-10-06 08:00:31', '', 0, 'http://localhost/?post_type=ml-slide&#038;p=40', 2, 'ml-slide', '', 0),
(41, 1, '2023-10-03 12:06:22', '2023-10-03 09:06:22', '', 'Slider 32 - image', '', 'publish', 'closed', 'closed', '', 'slider-32-image-4', '', '', '2023-10-06 11:00:31', '2023-10-06 08:00:31', '', 0, 'http://localhost/?post_type=ml-slide&#038;p=41', 3, 'ml-slide', '', 0),
(42, 1, '2023-10-03 12:06:22', '2023-10-03 09:06:22', '', 'Slider 32 - image', '', 'publish', 'closed', 'closed', '', 'slider-32-image-5', '', '', '2023-10-06 11:00:31', '2023-10-06 08:00:31', '', 0, 'http://localhost/?post_type=ml-slide&#038;p=42', 4, 'ml-slide', '', 0),
(43, 1, '2023-10-03 12:25:50', '2023-10-03 09:25:50', '', 'Желаю посетить', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-10-03 12:25:50', '2023-10-03 09:25:50', '', 14, 'http://localhost/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-10-03 12:57:46', '2023-10-03 09:57:46', '', 'Первый пост', '', 'publish', 'open', 'open', '', '%d0%bf%d0%b5%d1%80%d0%b2%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-03 13:01:18', '2023-10-03 10:01:18', '', 0, 'http://localhost/?p=44', 0, 'post', '', 0),
(45, 1, '2023-10-03 12:59:30', '2023-10-03 09:59:30', '', 'Шестой пост', '', 'publish', 'open', 'open', '', '%d1%88%d0%b5%d1%81%d1%82%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-03 13:00:05', '2023-10-03 10:00:05', '', 0, 'http://localhost/?p=45', 0, 'post', '', 0),
(46, 1, '2023-10-03 12:59:12', '2023-10-03 09:59:12', '', 'Пятый пост', '', 'publish', 'open', 'open', '', '%d0%bf%d1%8f%d1%82%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-03 13:00:15', '2023-10-03 10:00:15', '', 0, 'http://localhost/?p=46', 0, 'post', '', 0),
(47, 1, '2023-10-03 12:58:53', '2023-10-03 09:58:53', '', 'Четвертый пост', '', 'publish', 'open', 'open', '', '%d1%87%d0%b5%d1%82%d0%b2%d0%b5%d1%80%d1%82%d1%8b%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-03 13:00:21', '2023-10-03 10:00:21', '', 0, 'http://localhost/?p=47', 0, 'post', '', 0),
(48, 1, '2023-10-03 12:58:16', '2023-10-03 09:58:16', '', 'Второй пост', '', 'publish', 'open', 'open', '', '%d0%b2%d1%82%d0%be%d1%80%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-03 13:00:51', '2023-10-03 10:00:51', '', 0, 'http://localhost/?p=48', 0, 'post', '', 0),
(49, 1, '2023-10-03 12:58:35', '2023-10-03 09:58:35', '', 'Третий пост', '', 'publish', 'open', 'open', '', '%d1%82%d1%80%d0%b5%d1%82%d0%b8%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-03 13:00:26', '2023-10-03 10:00:26', '', 0, 'http://localhost/?p=49', 0, 'post', '', 0),
(50, 1, '2023-10-03 12:57:46', '2023-10-03 09:57:46', '', 'Первый пост', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-10-03 12:57:46', '2023-10-03 09:57:46', '', 44, 'http://localhost/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-10-03 12:58:16', '2023-10-03 09:58:16', '', 'Второй пост', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-10-03 12:58:16', '2023-10-03 09:58:16', '', 48, 'http://localhost/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-10-03 12:58:35', '2023-10-03 09:58:35', '', 'Третий пост', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-10-03 12:58:35', '2023-10-03 09:58:35', '', 49, 'http://localhost/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-10-03 12:58:53', '2023-10-03 09:58:53', '', 'Четвертый пост', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2023-10-03 12:58:53', '2023-10-03 09:58:53', '', 47, 'http://localhost/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-10-03 12:59:12', '2023-10-03 09:59:12', '', 'Пятый пост', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-10-03 12:59:12', '2023-10-03 09:59:12', '', 46, 'http://localhost/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-10-03 12:59:30', '2023-10-03 09:59:30', '', 'Шестой пост', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-10-03 12:59:30', '2023-10-03 09:59:30', '', 45, 'http://localhost/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-10-04 10:41:36', '2023-10-04 07:41:36', '{\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/%d0%bd%d0%b0%d0%bf%d0%b8%d1%88%d0%b8%d1%82%d0%b5-%d0%bd%d0%b0%d0%bc/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041d\\u0430\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-04 07:41:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b53794b-f235-44ea-bb48-607ebbb5544c', '', '', '2023-10-04 10:41:36', '2023-10-04 07:41:36', '', 0, 'http://localhost/2023/10/04/6b53794b-f235-44ea-bb48-607ebbb5544c/', 0, 'customize_changeset', '', 0),
(60, 1, '2023-10-06 11:00:35', '2023-10-06 08:00:35', '', 'Новое слайд-шоу', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d0%b5-%d1%81%d0%bb%d0%b0%d0%b9%d0%b4-%d1%88%d0%be%d1%83-2', '', '', '2023-10-06 11:00:35', '2023-10-06 08:00:35', '', 0, 'http://localhost/?post_type=ml-slider&p=60', 0, 'ml-slider', '', 0),
(61, 1, '2023-10-06 12:38:04', '2023-10-06 09:38:04', '', 'Седьмой пост', '', 'publish', 'open', 'open', '', '%d1%81%d0%b5%d0%b4%d1%8c%d0%bc%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-06 12:38:59', '2023-10-06 09:38:59', '', 0, 'http://localhost/?p=61', 0, 'post', '', 0),
(62, 1, '2023-10-06 12:38:25', '2023-10-06 09:38:25', '', 'Восьмой пост', '', 'publish', 'open', 'open', '', '%d0%b2%d0%be%d1%81%d1%8c%d0%bc%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2023-10-06 12:39:04', '2023-10-06 09:39:04', '', 0, 'http://localhost/?p=62', 0, 'post', '', 0),
(63, 1, '2023-10-06 12:38:04', '2023-10-06 09:38:04', '', 'Седьмой пост', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-10-06 12:38:04', '2023-10-06 09:38:04', '', 61, 'http://localhost/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-10-06 12:38:25', '2023-10-06 09:38:25', '', 'Восьмой пост', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2023-10-06 12:38:25', '2023-10-06 09:38:25', '', 62, 'http://localhost/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-10-06 12:45:05', '2023-10-06 09:45:05', '', 'Войти', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2023-10-09 11:49:23', '2023-10-09 08:49:23', '', 0, 'http://localhost/?page_id=65', 0, 'page', '', 0),
(66, 1, '2023-10-06 12:45:12', '2023-10-06 09:45:12', '', 'Зарегистрироваться', '', 'publish', 'closed', 'closed', '', '%d0%b7%d0%b0%d1%80%d0%b5%d0%b3%d0%b8%d1%81%d1%82%d1%80%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d1%82%d1%8c%d1%81%d1%8f', '', '', '2023-10-09 10:43:18', '2023-10-09 07:43:18', '', 0, 'http://localhost/?page_id=66', 0, 'page', '', 0),
(67, 1, '2023-10-06 12:45:05', '2023-10-06 09:45:05', '', 'Войти', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-10-06 12:45:05', '2023-10-06 09:45:05', '', 65, 'http://localhost/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-10-06 12:45:12', '2023-10-06 09:45:12', '', 'Зарегистрироваться', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2023-10-06 12:45:12', '2023-10-06 09:45:12', '', 66, 'http://localhost/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-10-11 14:34:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-11 14:34:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=69', 0, 'post', '', 0),
(70, 1, '2023-10-12 12:08:45', '2023-10-12 09:08:45', '', '404', '', 'publish', 'closed', 'closed', '', '404-2', '', '', '2023-10-12 12:09:27', '2023-10-12 09:09:27', '', 0, 'http://localhost/?page_id=70', 0, 'page', '', 0),
(71, 1, '2023-10-12 12:08:45', '2023-10-12 09:08:45', '', '404', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2023-10-12 12:08:45', '2023-10-12 09:08:45', '', 70, 'http://localhost/?p=71', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Main', 'main', 0),
(3, '32', '32', 0),
(4, '60', '60', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(41, 3, 0),
(42, 3, 0),
(44, 1, 0),
(45, 1, 0),
(46, 1, 0),
(47, 1, 0),
(48, 1, 0),
(49, 1, 0),
(61, 1, 0),
(62, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'ml-slider', '', 0, 5),
(4, 4, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"08e626ca69f97d78a3b0cdb0d22a7b06e5a7da1d3672323b6fe18d61550bb883\";a:4:{s:10:\"expiration\";i:1697196886;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0\";s:5:\"login\";i:1697024086;}s:64:\"604dd2f74ea697cd0fedf07bfbeb8fce896a8af3e7d48d7db849b437ed8238f2\";a:4:{s:10:\"expiration\";i:1697270890;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0\";s:5:\"login\";i:1697098090;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'wp_user-settings-time', '1696319488'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '69'),
(20, 1, 'wp_metaslider_analytics_onboarding_status', 'yes'),
(21, 1, 'extendifysdk_uuid', '9f0d7ea154f1253174898f9bcb99f9f8'),
(22, 1, 'extendifysdk_user_data', '{\"state\":{\"firstLoadedOn\":\"2023-10-03T09:57:29.495Z\",\"email\":\"\",\"apiKey\":\"\",\"uuid\":\"9f0d7ea154f1253174898f9bcb99f9f8\",\"group\":0,\"sdkPartner\":\"MetaSlider\",\"noticesDismissedAt\":[],\"modalNoticesDismissedAt\":[],\"imports\":0,\"runningImports\":0,\"allowedImports\":0,\"freebieImports\":0,\"entryPoint\":\"not-set\",\"enabled\":true,\"canInstallPlugins\":true,\"canActivatePlugins\":true,\"participatingTestsGroups\":{\"notice-position\":\"A\",\"main-button-text\":\"A\"},\"preferredOptions\":{\"taxonomies\":[],\"type\":\"\",\"search\":\"\"},\"preferredOptionsHistory\":{\"siteType\":[]},\"isAdmin\":true},\"version\":0}'),
(23, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BsaFQWK/BaVM6etzyIalVMjZ5Zn8RH/', 'admin', 'asdawd@aa.ff', 'http://localhost', '2023-10-03 07:50:54', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
