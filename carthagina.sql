-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 20 jan. 2019 à 00:29
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `carthagina`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginacommentmeta`
--

DROP TABLE IF EXISTS `wp_carthaginacommentmeta`;
CREATE TABLE IF NOT EXISTS `wp_carthaginacommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginacomments`
--

DROP TABLE IF EXISTS `wp_carthaginacomments`;
CREATE TABLE IF NOT EXISTS `wp_carthaginacomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginacomments`
--

INSERT INTO `wp_carthaginacomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-25 06:39:05', '2018-08-25 04:39:05', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginalinks`
--

DROP TABLE IF EXISTS `wp_carthaginalinks`;
CREATE TABLE IF NOT EXISTS `wp_carthaginalinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginaoptions`
--

DROP TABLE IF EXISTS `wp_carthaginaoptions`;
CREATE TABLE IF NOT EXISTS `wp_carthaginaoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginaoptions`
--

INSERT INTO `wp_carthaginaoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Carthagina', 'yes'),
(2, 'home', 'http://localhost/Carthagina', 'yes'),
(3, 'blogname', 'Carthagina', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'brahim.guedich@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"kebo-twitter-feed/kebo-twitter-feed.php\";i:1;s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:59:\"C:\\wamp64\\www\\Carthagina/wp-content/themes/sydney/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'sydney', 'yes'),
(41, 'stylesheet', 'sydney', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_carthaginauser_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1547944746;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1547959146;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1547959336;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547968125;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535176867;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(292, '_site_transient_timeout_theme_roots', '1547945842', 'no'),
(293, '_site_transient_theme_roots', 'a:4:{s:6:\"sydney\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(298, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"brahim.guedich@gmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1547944110;}', 'no'),
(206, 'sfsi_section3_options', 's:272:\"a:7:{s:14:\"sfsi_mouseOver\";s:2:\"no\";s:21:\"sfsi_mouseOver_effect\";s:7:\"fade_in\";s:18:\"sfsi_shuffle_icons\";s:2:\"no\";s:22:\"sfsi_shuffle_Firstload\";s:2:\"no\";s:21:\"sfsi_shuffle_interval\";s:2:\"no\";s:25:\"sfsi_shuffle_intervalTime\";s:0:\"\";s:18:\"sfsi_actvite_theme\";s:7:\"default\";}\";', 'yes'),
(207, 'sfsi_section4_options', 's:1700:\"a:43:{s:19:\"sfsi_display_counts\";s:2:\"no\";s:24:\"sfsi_email_countsDisplay\";s:2:\"no\";s:21:\"sfsi_email_countsFrom\";s:6:\"source\";s:23:\"sfsi_email_manualCounts\";s:2:\"20\";s:22:\"sfsi_rss_countsDisplay\";s:2:\"no\";s:21:\"sfsi_rss_manualCounts\";s:2:\"20\";s:22:\"sfsi_facebook_PageLink\";s:0:\"\";s:27:\"sfsi_facebook_countsDisplay\";s:2:\"no\";s:24:\"sfsi_facebook_countsFrom\";s:6:\"manual\";s:26:\"sfsi_facebook_manualCounts\";s:2:\"20\";s:26:\"sfsi_twitter_countsDisplay\";s:2:\"no\";s:23:\"sfsi_twitter_countsFrom\";s:6:\"manual\";s:25:\"sfsi_twitter_manualCounts\";s:2:\"20\";s:19:\"sfsi_google_api_key\";s:0:\"\";s:25:\"sfsi_google_countsDisplay\";s:2:\"no\";s:22:\"sfsi_google_countsFrom\";s:6:\"manual\";s:24:\"sfsi_google_manualCounts\";s:2:\"20\";s:27:\"sfsi_linkedIn_countsDisplay\";s:2:\"no\";s:24:\"sfsi_linkedIn_countsFrom\";s:6:\"manual\";s:26:\"sfsi_linkedIn_manualCounts\";s:2:\"20\";s:10:\"ln_api_key\";s:0:\"\";s:13:\"ln_secret_key\";s:0:\"\";s:19:\"ln_oAuth_user_token\";s:0:\"\";s:10:\"ln_company\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:4:\"name\";s:17:\"sfsi_youtube_user\";s:0:\"\";s:22:\"sfsi_youtube_channelId\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:26:\"sfsi_youtube_countsDisplay\";s:2:\"no\";s:23:\"sfsi_youtube_countsFrom\";s:6:\"manual\";s:25:\"sfsi_youtube_manualCounts\";s:2:\"20\";s:28:\"sfsi_pinterest_countsDisplay\";s:2:\"no\";s:25:\"sfsi_pinterest_countsFrom\";s:6:\"manual\";s:27:\"sfsi_pinterest_manualCounts\";s:2:\"20\";s:19:\"sfsi_pinterest_user\";s:0:\"\";s:20:\"sfsi_pinterest_board\";s:0:\"\";s:25:\"sfsi_instagram_countsFrom\";s:6:\"manual\";s:28:\"sfsi_instagram_countsDisplay\";s:2:\"no\";s:27:\"sfsi_instagram_manualCounts\";s:2:\"20\";s:19:\"sfsi_instagram_User\";s:0:\"\";s:23:\"sfsi_instagram_clientid\";s:0:\"\";s:21:\"sfsi_instagram_appurl\";s:0:\"\";s:20:\"sfsi_instagram_token\";s:0:\"\";}\";', 'yes'),
(149, 'current_theme', 'Sydney', 'yes'),
(150, 'theme_mods_sydney', 'a:27:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:17:\"front_header_type\";s:6:\"slider\";s:9:\"site_logo\";s:80:\"http://localhost/Carthagina/wp-content/uploads/2018/08/Carthagina-latin-logo.png\";s:12:\"header_image\";s:95:\"http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-architecture-3195322_960_720.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:18;s:3:\"url\";s:95:\"http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-architecture-3195322_960_720.jpg\";s:13:\"thumbnail_url\";s:95:\"http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-architecture-3195322_960_720.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;}s:13:\"header_height\";i:500;s:14:\"slider_image_1\";s:80:\"http://localhost/Carthagina/wp-content/uploads/2018/08/roman-2419702_960_720.jpg\";s:14:\"slider_image_2\";s:80:\"http://localhost/Carthagina/wp-content/uploads/2018/08/mosque-251183_960_720.jpg\";s:14:\"slider_image_3\";s:87:\"http://localhost/Carthagina/wp-content/uploads/2018/08/architecture-3195322_960_720.jpg\";s:14:\"slider_image_4\";s:78:\"http://localhost/Carthagina/wp-content/uploads/2018/08/old-1130731_960_720.jpg\";s:14:\"slider_image_5\";s:90:\"http://localhost/Carthagina/wp-content/uploads/2018/08/ancient-architecture-art-161875.jpg\";s:18:\"slider_button_text\";s:7:\"join us\";s:13:\"primary_color\";s:7:\"#dbb851\";s:12:\"rows_overlay\";s:7:\"#999999\";s:16:\"menu_items_hover\";s:7:\"#dbb851\";s:16:\"site_header_type\";s:5:\"image\";s:13:\"mobile_slider\";s:10:\"fullscreen\";s:14:\"slider_title_1\";s:10:\"Carthagina\";s:13:\"menu_bg_color\";s:7:\"#353535\";s:17:\"slider_subtitle_1\";s:0:\"\";s:14:\"slider_title_2\";s:10:\"Carthagina\";s:14:\"slider_title_3\";s:10:\"Carthagina\";s:14:\"slider_title_4\";s:10:\"Carthagina\";s:14:\"slider_title_5\";s:10:\"Carthagina\";s:16:\"body_font_family\";s:18:\"\'lato\', sans-serif\";}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'elementor_disable_color_schemes', 'yes', 'yes'),
(153, 'elementor_disable_typography_schemes', 'yes', 'yes'),
(154, 'widget_sydney_contact_info', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(205, 'sfsi_section2_options', 's:1779:\"a:36:{s:12:\"sfsi_rss_url\";s:33:\"http://localhost/Carthagina/feed/\";s:14:\"sfsi_rss_icons\";s:5:\"email\";s:14:\"sfsi_email_url\";s:297:\"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/b3VoQzZOanRKL21BaTdncFE5ZHhqd1NZaWlsSlBjSnc1MzllNjQvQ1EvWktQYk9OeEhDSld4d28vL2JndXBPdG8yRG9WdGN0bjh1MCtNSHpGd3ZLZnFaUEdRcUpaNElpWjNjd2Nhc0FHWklyK2k3bHZScGVYV2xKVXovcmVGbXN8Ym9oa0wzaTBIb2NIb1VSbUplSFhJNm9FZ1l4M3NHaExpMWVoUHZJWFhGVT0=/OA==/\";s:24:\"sfsi_facebookPage_option\";s:2:\"no\";s:21:\"sfsi_facebookPage_url\";s:0:\"\";s:24:\"sfsi_facebookLike_option\";s:3:\"yes\";s:25:\"sfsi_facebookShare_option\";s:3:\"yes\";s:21:\"sfsi_twitter_followme\";s:2:\"no\";s:27:\"sfsi_twitter_followUserName\";s:0:\"\";s:22:\"sfsi_twitter_aboutPage\";s:3:\"yes\";s:17:\"sfsi_twitter_page\";s:2:\"no\";s:20:\"sfsi_twitter_pageURL\";s:0:\"\";s:26:\"sfsi_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:16:\"sfsi_google_page\";s:2:\"no\";s:19:\"sfsi_google_pageURL\";s:0:\"\";s:22:\"sfsi_googleLike_option\";s:3:\"yes\";s:23:\"sfsi_googleShare_option\";s:3:\"yes\";s:20:\"sfsi_youtube_pageUrl\";s:0:\"\";s:17:\"sfsi_youtube_page\";s:2:\"no\";s:24:\"sfsi_youtubeusernameorid\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:19:\"sfsi_youtube_follow\";s:2:\"no\";s:19:\"sfsi_pinterest_page\";s:2:\"no\";s:22:\"sfsi_pinterest_pageUrl\";s:0:\"\";s:23:\"sfsi_pinterest_pingBlog\";s:0:\"\";s:19:\"sfsi_instagram_page\";s:2:\"no\";s:22:\"sfsi_instagram_pageUrl\";s:0:\"\";s:18:\"sfsi_linkedin_page\";s:2:\"no\";s:21:\"sfsi_linkedin_pageURL\";s:0:\"\";s:20:\"sfsi_linkedin_follow\";s:2:\"no\";s:27:\"sfsi_linkedin_followCompany\";s:0:\"\";s:23:\"sfsi_linkedin_SharePage\";s:3:\"yes\";s:30:\"sfsi_linkedin_recommendBusines\";s:2:\"no\";s:30:\"sfsi_linkedin_recommendCompany\";s:0:\"\";s:32:\"sfsi_linkedin_recommendProductId\";s:0:\"\";s:21:\"sfsi_CustomIcon_links\";s:0:\"\";}\";', 'yes'),
(195, 'kebo_twitter_version', '1.5.12', 'yes'),
(196, 'kebo_twitter_errors', 'a:0:{}', 'no'),
(197, 'kebo_twitter_options', 'a:2:{s:24:\"kebo_twitter_cache_timer\";i:15;s:27:\"kebo_twitter_nofollow_links\";s:8:\"nofollow\";}', 'yes'),
(200, 'adding_tags', 'yes', 'yes'),
(202, 'show_new_notification', 'yes', 'yes'),
(203, 'show_premium_cumulative_count_notification', 'yes', 'yes'),
(204, 'sfsi_section1_options', 's:410:\"a:11:{s:16:\"sfsi_rss_display\";s:3:\"yes\";s:18:\"sfsi_email_display\";s:3:\"yes\";s:21:\"sfsi_facebook_display\";s:3:\"yes\";s:20:\"sfsi_twitter_display\";s:3:\"yes\";s:19:\"sfsi_google_display\";s:3:\"yes\";s:22:\"sfsi_pinterest_display\";s:2:\"no\";s:22:\"sfsi_instagram_display\";s:2:\"no\";s:21:\"sfsi_linkedin_display\";s:2:\"no\";s:20:\"sfsi_youtube_display\";s:2:\"no\";s:19:\"sfsi_custom_display\";s:0:\"\";s:17:\"sfsi_custom_files\";s:0:\"\";}\";', 'yes'),
(297, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1547944109;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(283, '_transient_is_multi_author', '0', 'yes'),
(295, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1547944109;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";s:39:\"kebo-twitter-feed/kebo-twitter-feed.php\";s:6:\"1.5.12\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:5:\"2.8.2\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.0.4\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:7:\"7.10.28\";}s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:6:\"2.10.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.10.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.1.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:21:\"<p>Please upgrade</p>\";s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:7:\"7.10.58\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"kebo-twitter-feed/kebo-twitter-feed.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/kebo-twitter-feed\";s:4:\"slug\";s:17:\"kebo-twitter-feed\";s:6:\"plugin\";s:39:\"kebo-twitter-feed/kebo-twitter-feed.php\";s:11:\"new_version\";s:6:\"1.5.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/kebo-twitter-feed/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/kebo-twitter-feed.1.5.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/kebo-twitter-feed/assets/icon-256x256.png?rev=1929272\";s:2:\"1x\";s:70:\"https://ps.w.org/kebo-twitter-feed/assets/icon-128x128.png?rev=1929272\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/kebo-twitter-feed/assets/banner-1544x500.png?rev=1929272\";s:2:\"1x\";s:72:\"https://ps.w.org/kebo-twitter-feed/assets/banner-772x250.png?rev=1929272\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(208, 'sfsi_section5_options', 's:1214:\"a:29:{s:15:\"sfsi_icons_size\";s:2:\"40\";s:18:\"sfsi_icons_spacing\";s:1:\"5\";s:20:\"sfsi_icons_Alignment\";s:4:\"left\";s:17:\"sfsi_icons_perRow\";s:1:\"5\";s:24:\"sfsi_icons_ClickPageOpen\";s:3:\"yes\";s:26:\"sfsi_icons_suppress_errors\";s:2:\"no\";s:16:\"sfsi_icons_stick\";s:2:\"no\";s:18:\"sfsi_rssIcon_order\";s:1:\"1\";s:20:\"sfsi_emailIcon_order\";s:1:\"2\";s:23:\"sfsi_facebookIcon_order\";s:1:\"3\";s:21:\"sfsi_googleIcon_order\";s:1:\"4\";s:22:\"sfsi_twitterIcon_order\";s:1:\"5\";s:22:\"sfsi_youtubeIcon_order\";s:1:\"7\";s:24:\"sfsi_pinterestIcon_order\";s:1:\"8\";s:23:\"sfsi_linkedinIcon_order\";s:1:\"9\";s:24:\"sfsi_instagramIcon_order\";s:2:\"10\";s:22:\"sfsi_CustomIcons_order\";s:0:\"\";s:22:\"sfsi_rss_MouseOverText\";s:3:\"RSS\";s:24:\"sfsi_email_MouseOverText\";s:15:\"Follow by Email\";s:26:\"sfsi_twitter_MouseOverText\";s:7:\"Twitter\";s:27:\"sfsi_facebook_MouseOverText\";s:8:\"Facebook\";s:25:\"sfsi_google_MouseOverText\";s:7:\"Google+\";s:27:\"sfsi_linkedIn_MouseOverText\";s:8:\"LinkedIn\";s:28:\"sfsi_pinterest_MouseOverText\";s:9:\"Pinterest\";s:28:\"sfsi_instagram_MouseOverText\";s:9:\"Instagram\";s:26:\"sfsi_youtube_MouseOverText\";s:7:\"YouTube\";s:26:\"sfsi_custom_MouseOverTexts\";s:0:\"\";s:23:\"sfsi_custom_social_hide\";s:2:\"no\";s:32:\"sfsi_pplus_icons_suppress_errors\";s:2:\"no\";}\";', 'yes'),
(230, 'sfsi_addThis_icon_removal_notice_dismissed', '1', 'yes'),
(231, 'sfsi_verificatiom_code', 'NMJw6eXREv5yPnlFuu2E', 'yes'),
(209, 'sfsi_section6_options', 's:523:\"a:14:{s:17:\"sfsi_show_Onposts\";s:2:\"no\";s:18:\"sfsi_show_Onbottom\";s:2:\"no\";s:22:\"sfsi_icons_postPositon\";s:6:\"source\";s:20:\"sfsi_icons_alignment\";s:12:\"center-right\";s:22:\"sfsi_rss_countsDisplay\";s:2:\"no\";s:20:\"sfsi_textBefor_icons\";s:26:\"Please follow and like us:\";s:24:\"sfsi_icons_DisplayCounts\";s:2:\"no\";s:12:\"sfsi_rectsub\";s:3:\"yes\";s:11:\"sfsi_rectfb\";s:3:\"yes\";s:11:\"sfsi_rectgp\";s:3:\"yes\";s:12:\"sfsi_rectshr\";s:2:\"no\";s:13:\"sfsi_recttwtr\";s:3:\"yes\";s:14:\"sfsi_rectpinit\";s:3:\"yes\";s:16:\"sfsi_rectfbshare\";s:3:\"yes\";}\";', 'yes'),
(210, 'sfsi_section7_options', 's:666:\"a:15:{s:15:\"sfsi_show_popup\";s:2:\"no\";s:15:\"sfsi_popup_text\";s:42:\"Enjoy this blog? Please spread the word :)\";s:27:\"sfsi_popup_background_color\";s:7:\"#eff7f7\";s:23:\"sfsi_popup_border_color\";s:7:\"#f3faf2\";s:27:\"sfsi_popup_border_thickness\";s:1:\"1\";s:24:\"sfsi_popup_border_shadow\";s:3:\"yes\";s:15:\"sfsi_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:19:\"sfsi_popup_fontSize\";s:2:\"30\";s:20:\"sfsi_popup_fontStyle\";s:6:\"normal\";s:20:\"sfsi_popup_fontColor\";s:7:\"#000000\";s:17:\"sfsi_Show_popupOn\";s:4:\"none\";s:25:\"sfsi_Show_popupOn_PageIDs\";s:0:\"\";s:14:\"sfsi_Shown_pop\";s:8:\"ETscroll\";s:24:\"sfsi_Shown_popupOnceTime\";s:0:\"\";s:32:\"sfsi_Shown_popuplimitPerUserTime\";s:0:\"\";}\";', 'yes'),
(211, 'sfsi_section8_options', 's:1208:\"a:26:{s:20:\"sfsi_form_adjustment\";s:3:\"yes\";s:16:\"sfsi_form_height\";s:3:\"180\";s:15:\"sfsi_form_width\";s:3:\"230\";s:16:\"sfsi_form_border\";s:2:\"no\";s:26:\"sfsi_form_border_thickness\";s:1:\"1\";s:22:\"sfsi_form_border_color\";s:7:\"#b5b5b5\";s:20:\"sfsi_form_background\";s:7:\"#ffffff\";s:22:\"sfsi_form_heading_text\";s:22:\"Get new posts by email\";s:22:\"sfsi_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:27:\"sfsi_form_heading_fontstyle\";s:4:\"bold\";s:27:\"sfsi_form_heading_fontcolor\";s:7:\"#000000\";s:26:\"sfsi_form_heading_fontsize\";s:2:\"16\";s:27:\"sfsi_form_heading_fontalign\";s:6:\"center\";s:20:\"sfsi_form_field_text\";s:9:\"Subscribe\";s:20:\"sfsi_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_form_field_fontstyle\";s:6:\"normal\";s:25:\"sfsi_form_field_fontcolor\";s:7:\"#000000\";s:24:\"sfsi_form_field_fontsize\";s:2:\"14\";s:25:\"sfsi_form_field_fontalign\";s:6:\"center\";s:21:\"sfsi_form_button_text\";s:9:\"Subscribe\";s:21:\"sfsi_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:26:\"sfsi_form_button_fontstyle\";s:4:\"bold\";s:26:\"sfsi_form_button_fontcolor\";s:7:\"#000000\";s:25:\"sfsi_form_button_fontsize\";s:2:\"16\";s:26:\"sfsi_form_button_fontalign\";s:6:\"center\";s:27:\"sfsi_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(212, 'sfsi_section9_options', 's:420:\"a:10:{s:20:\"sfsi_show_via_widget\";s:2:\"no\";s:16:\"sfsi_icons_float\";s:2:\"no\";s:24:\"sfsi_icons_floatPosition\";s:12:\"center-right\";s:26:\"sfsi_icons_floatMargin_top\";s:0:\"\";s:29:\"sfsi_icons_floatMargin_bottom\";s:0:\"\";s:27:\"sfsi_icons_floatMargin_left\";s:0:\"\";s:28:\"sfsi_icons_floatMargin_right\";s:0:\"\";s:23:\"sfsi_disable_floaticons\";s:2:\"no\";s:23:\"sfsi_show_via_shortcode\";s:2:\"no\";s:24:\"sfsi_show_via_afterposts\";s:2:\"no\";}\";', 'yes'),
(213, 'sfsi_feed_id', 'b3VoQzZOanRKL21BaTdncFE5ZHhqd1NZaWlsSlBjSnc1MzllNjQvQ1EvWktQYk9OeEhDSld4d28vL2JndXBPdG8yRG9WdGN0bjh1MCtNSHpGd3ZLZnFaUEdRcUpaNElpWjNjd2Nhc0FHWklyK2k3bHZScGVYV2xKVXovcmVGbXN8Ym9oa0wzaTBIb2NIb1VSbUplSFhJNm9FZ1l4M3NHaExpMWVoUHZJWFhGVT0=', 'yes'),
(214, 'sfsi_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/b3VoQzZOanRKL21BaTdncFE5ZHhqd1NZaWlsSlBjSnc1MzllNjQvQ1EvWktQYk9OeEhDSld4d28vL2JndXBPdG8yRG9WdGN0bjh1MCtNSHpGd3ZLZnFaUEdRcUpaNElpWjNjd2Nhc0FHWklyK2k3bHZScGVYV2xKVXovcmVGbXN8Ym9oa0wzaTBIb2NIb1VSbUplSFhJNm9FZ1l4M3NHaExpMWVoUHZJWFhGVT0=/OA==/', 'yes'),
(215, 'sfsi_installDate', '2018-08-25 08:03:13', 'yes'),
(216, 'sfsi_RatingDiv', 'no', 'yes'),
(217, 'sfsi_footer_sec', 'no', 'yes'),
(218, 'sfsi_activate', '0', 'yes'),
(219, 'sfsi_instagram_sf_count', 's:90:\"a:3:{s:4:\"date\";i:1544227200;s:13:\"sfsi_sf_count\";i:0;s:20:\"sfsi_instagram_count\";s:0:\"\";}\";', 'yes'),
(220, 'sfsi_error_reporting_notice_dismissed', '1', 'yes'),
(221, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'widget_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'sfsi_pluginVersion', '2.04', 'yes'),
(224, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(225, 'show_premium_notification', 'yes', 'yes'),
(226, 'show_notification', 'yes', 'yes'),
(227, 'show_mobile_notification', 'yes', 'yes'),
(228, 'sfsi_languageNotice', 'yes', 'yes'),
(229, 'sfsi_pplus_error_reporting_notice_dismissed', '1', 'yes'),
(296, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1547944106;s:7:\"checked\";a:4:{s:6:\"sydney\";s:4:\"1.51\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:6:\"sydney\";a:4:{s:5:\"theme\";s:6:\"sydney\";s:11:\"new_version\";s:4:\"1.53\";s:3:\"url\";s:36:\"https://wordpress.org/themes/sydney/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/sydney.1.53.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.0.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.8.zip\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginapostmeta`
--

DROP TABLE IF EXISTS `wp_carthaginapostmeta`;
CREATE TABLE IF NOT EXISTS `wp_carthaginapostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginapostmeta`
--

INSERT INTO `wp_carthaginapostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_wp_attached_file', '2018/08/Carthagina-latin-logo.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:578;s:6:\"height\";i:590;s:4:\"file\";s:33:\"2018/08/Carthagina-latin-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Carthagina-latin-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Carthagina-latin-logo-294x300.png\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:33:\"Carthagina-latin-logo-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:33:\"Carthagina-latin-logo-230x235.png\";s:5:\"width\";i:230;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:33:\"Carthagina-latin-logo-350x357.png\";s:5:\"width\";i:350;s:6:\"height\";i:357;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:33:\"Carthagina-latin-logo-480x490.png\";s:5:\"width\";i:480;s:6:\"height\";i:490;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2018/08/ancient-architecture-art-161875.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:43:\"2018/08/ancient-architecture-art-161875.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"ancient-architecture-art-161875-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-830x553.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-230x153.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-350x233.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:43:\"ancient-architecture-art-161875-480x320.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 8, '_wp_attached_file', '2018/08/architecture-3195322_960_720.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:599;s:4:\"file\";s:40:\"2018/08/architecture-3195322_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-768x479.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:479;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-830x518.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-230x144.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-350x218.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:40:\"architecture-3195322_960_720-480x300.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 50D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_wp_attached_file', '2018/08/el-jem-3197414_960_720.jpg'),
(11, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:34:\"2018/08/el-jem-3197414_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-830x553.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-230x153.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-350x233.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197414_960_720-480x320.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 50D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"15\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 10, '_wp_attached_file', '2018/08/el-jem-3197415_960_720.jpg'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:34:\"2018/08/el-jem-3197415_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-830x553.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-230x153.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-350x233.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:34:\"el-jem-3197415_960_720-480x320.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 50D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 11, '_wp_attached_file', '2018/08/mosque-251183_960_720.jpg'),
(15, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:719;s:4:\"file\";s:33:\"2018/08/mosque-251183_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-768x575.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-830x622.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-230x172.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-350x262.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:262;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:33:\"mosque-251183_960_720-480x360.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 12, '_wp_attached_file', '2018/08/old-1130731_960_720.jpg'),
(17, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:31:\"2018/08/old-1130731_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-830x623.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:623;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-230x173.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-350x263.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:31:\"old-1130731_960_720-480x360.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"E-M5\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 13, '_wp_attached_file', '2018/08/roman-2419702_960_720.jpg'),
(19, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:537;s:4:\"file\";s:33:\"2018/08/roman-2419702_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-768x430.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-830x464.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-230x129.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-350x196.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:33:\"roman-2419702_960_720-480x269.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:4:\"10.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"E880\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"17.8\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0058207217694994\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 14, '_wp_attached_file', '2018/08/tunisia-1545829_960_720.jpg'),
(21, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:642;s:4:\"file\";s:35:\"2018/08/tunisia-1545829_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-830x555.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-230x154.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-350x234.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-1545829_960_720-480x321.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"PENTAX K200D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 15, '_wp_attached_file', '2018/08/tunisia-2844705_960_720.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:632;s:4:\"file\";s:35:\"2018/08/tunisia-2844705_960_720.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-768x506.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-830x546.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-230x151.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-350x230.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:35:\"tunisia-2844705_960_720-480x316.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1100D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 16, '_wp_attached_file', '2018/08/arch-architecture-blur-861126.jpg'),
(25, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5741;s:6:\"height\";i:3827;s:4:\"file\";s:41:\"2018/08/arch-architecture-blur-861126.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"arch-architecture-blur-861126-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-830x553.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-230x153.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-350x233.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:41:\"arch-architecture-blur-861126-480x320.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 17, '_wp_attached_file', '2018/08/cropped-ancient-architecture-art-161875.jpg'),
(27, 17, '_wp_attachment_context', 'custom-header'),
(28, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:51:\"2018/08/cropped-ancient-architecture-art-161875.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"cropped-ancient-architecture-art-161875-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-830x467.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-230x129.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-350x197.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:51:\"cropped-ancient-architecture-art-161875-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:7;}'),
(29, 17, '_wp_attachment_custom_header_last_used_sydney', '1535180510'),
(30, 17, '_wp_attachment_is_custom_header', 'sydney'),
(31, 18, '_wp_attached_file', '2018/08/cropped-architecture-3195322_960_720.jpg'),
(32, 18, '_wp_attachment_context', 'custom-header'),
(33, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:48:\"2018/08/cropped-architecture-3195322_960_720.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"cropped-architecture-3195322_960_720-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-830x467.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-230x129.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-350x197.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:48:\"cropped-architecture-3195322_960_720-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:8;}'),
(34, 18, '_wp_attachment_custom_header_last_used_sydney', '1535180699'),
(35, 18, '_wp_attachment_is_custom_header', 'sydney'),
(40, 20, '_edit_last', '1'),
(41, 20, '_wp_page_template', 'default'),
(42, 20, '_edit_lock', '1535180890:1'),
(43, 22, '_edit_last', '1'),
(44, 22, '_wp_page_template', 'default'),
(45, 22, '_edit_lock', '1535180911:1'),
(46, 24, '_edit_last', '1'),
(47, 24, '_wp_page_template', 'default'),
(48, 24, '_edit_lock', '1535180970:1'),
(49, 26, '_edit_last', '1'),
(50, 26, '_wp_page_template', 'default'),
(51, 26, '_edit_lock', '1535180986:1'),
(52, 28, '_edit_last', '1'),
(53, 28, '_wp_page_template', 'default'),
(54, 28, '_edit_lock', '1535181001:1'),
(55, 30, '_edit_last', '1'),
(56, 30, '_wp_page_template', 'default'),
(57, 30, '_edit_lock', '1535181019:1'),
(58, 32, '_edit_last', '1'),
(59, 32, '_wp_page_template', 'default'),
(60, 32, '_edit_lock', '1535181029:1'),
(61, 34, '_edit_last', '1'),
(62, 34, '_wp_page_template', 'default'),
(63, 34, '_edit_lock', '1535181045:1'),
(64, 36, '_edit_last', '1'),
(65, 36, '_wp_page_template', 'default'),
(66, 36, '_edit_lock', '1535181055:1'),
(67, 38, '_edit_last', '1'),
(68, 38, '_wp_page_template', 'default'),
(69, 38, '_edit_lock', '1535181072:1'),
(70, 40, '_edit_last', '1'),
(71, 40, '_edit_lock', '1535181097:1'),
(72, 40, '_wp_page_template', 'default'),
(73, 42, '_menu_item_type', 'custom'),
(74, 42, '_menu_item_menu_item_parent', '0'),
(75, 42, '_menu_item_object_id', '42'),
(76, 42, '_menu_item_object', 'custom'),
(77, 42, '_menu_item_target', ''),
(78, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 42, '_menu_item_xfn', ''),
(80, 42, '_menu_item_url', 'http://localhost/Carthagina/'),
(82, 43, '_menu_item_type', 'post_type'),
(83, 43, '_menu_item_menu_item_parent', '0'),
(84, 43, '_menu_item_object_id', '32'),
(85, 43, '_menu_item_object', 'page'),
(86, 43, '_menu_item_target', ''),
(87, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 43, '_menu_item_xfn', ''),
(89, 43, '_menu_item_url', ''),
(192, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1438;s:4:\"file\";s:41:\"2018/08/cropped-mosque-251183_960_720.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-768x575.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-mosque-251183_960_720-1024x767.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-830x622.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-230x172.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-350x262.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:262;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-mosque-251183_960_720-480x360.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:11;}'),
(91, 44, '_menu_item_type', 'post_type'),
(92, 44, '_menu_item_menu_item_parent', '0'),
(93, 44, '_menu_item_object_id', '20'),
(94, 44, '_menu_item_object', 'page'),
(95, 44, '_menu_item_target', ''),
(96, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 44, '_menu_item_xfn', ''),
(98, 44, '_menu_item_url', ''),
(100, 45, '_menu_item_type', 'post_type'),
(101, 45, '_menu_item_menu_item_parent', '0'),
(102, 45, '_menu_item_object_id', '24'),
(103, 45, '_menu_item_object', 'page'),
(104, 45, '_menu_item_target', ''),
(105, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 45, '_menu_item_xfn', ''),
(107, 45, '_menu_item_url', ''),
(109, 46, '_menu_item_type', 'post_type'),
(110, 46, '_menu_item_menu_item_parent', '43'),
(111, 46, '_menu_item_object_id', '38'),
(112, 46, '_menu_item_object', 'page'),
(113, 46, '_menu_item_target', ''),
(114, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 46, '_menu_item_xfn', ''),
(116, 46, '_menu_item_url', ''),
(190, 55, '_wp_attached_file', '2018/08/cropped-mosque-251183_960_720.jpg'),
(118, 47, '_menu_item_type', 'post_type'),
(119, 47, '_menu_item_menu_item_parent', '0'),
(120, 47, '_menu_item_object_id', '26'),
(121, 47, '_menu_item_object', 'page'),
(122, 47, '_menu_item_target', ''),
(123, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 47, '_menu_item_xfn', ''),
(125, 47, '_menu_item_url', ''),
(127, 48, '_menu_item_type', 'post_type'),
(128, 48, '_menu_item_menu_item_parent', '43'),
(129, 48, '_menu_item_object_id', '40'),
(130, 48, '_menu_item_object', 'page'),
(131, 48, '_menu_item_target', ''),
(132, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 48, '_menu_item_xfn', ''),
(134, 48, '_menu_item_url', ''),
(191, 55, '_wp_attachment_context', 'custom-header'),
(136, 49, '_menu_item_type', 'post_type'),
(137, 49, '_menu_item_menu_item_parent', '43'),
(138, 49, '_menu_item_object_id', '34'),
(139, 49, '_menu_item_object', 'page'),
(140, 49, '_menu_item_target', ''),
(141, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 49, '_menu_item_xfn', ''),
(143, 49, '_menu_item_url', ''),
(145, 50, '_menu_item_type', 'post_type'),
(146, 50, '_menu_item_menu_item_parent', '0'),
(147, 50, '_menu_item_object_id', '2'),
(148, 50, '_menu_item_object', 'page'),
(149, 50, '_menu_item_target', ''),
(150, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 50, '_menu_item_xfn', ''),
(152, 50, '_menu_item_url', ''),
(153, 50, '_menu_item_orphaned', '1535181243'),
(154, 51, '_menu_item_type', 'post_type'),
(155, 51, '_menu_item_menu_item_parent', '47'),
(156, 51, '_menu_item_object_id', '28'),
(157, 51, '_menu_item_object', 'page'),
(158, 51, '_menu_item_target', ''),
(159, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 51, '_menu_item_xfn', ''),
(161, 51, '_menu_item_url', ''),
(163, 52, '_menu_item_type', 'post_type'),
(164, 52, '_menu_item_menu_item_parent', '0'),
(165, 52, '_menu_item_object_id', '22'),
(166, 52, '_menu_item_object', 'page'),
(167, 52, '_menu_item_target', ''),
(168, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 52, '_menu_item_xfn', ''),
(170, 52, '_menu_item_url', ''),
(172, 53, '_menu_item_type', 'post_type'),
(173, 53, '_menu_item_menu_item_parent', '43'),
(174, 53, '_menu_item_object_id', '36'),
(175, 53, '_menu_item_object', 'page'),
(176, 53, '_menu_item_target', ''),
(177, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 53, '_menu_item_xfn', ''),
(179, 53, '_menu_item_url', ''),
(181, 54, '_menu_item_type', 'post_type'),
(182, 54, '_menu_item_menu_item_parent', '47'),
(183, 54, '_menu_item_object_id', '30'),
(184, 54, '_menu_item_object', 'page'),
(185, 54, '_menu_item_target', ''),
(186, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 54, '_menu_item_xfn', ''),
(188, 54, '_menu_item_url', ''),
(193, 55, '_wp_attachment_custom_header_last_used_sydney', '1535181369'),
(194, 55, '_wp_attachment_is_custom_header', 'sydney'),
(196, 57, '_wp_attached_file', '2018/08/cropped-roman-2419702_960_720.jpg'),
(197, 57, '_wp_attachment_context', 'custom-header'),
(198, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1079;s:4:\"file\";s:41:\"2018/08/cropped-roman-2419702_960_720.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-roman-2419702_960_720-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-830x466.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-230x129.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-350x197.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:41:\"cropped-roman-2419702_960_720-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:13;}'),
(199, 57, '_wp_attachment_custom_header_last_used_sydney', '1535181412'),
(200, 57, '_wp_attachment_is_custom_header', 'sydney');

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginaposts`
--

DROP TABLE IF EXISTS `wp_carthaginaposts`;
CREATE TABLE IF NOT EXISTS `wp_carthaginaposts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginaposts`
--

INSERT INTO `wp_carthaginaposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-25 06:39:05', '2018-08-25 04:39:05', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-08-25 06:39:05', '2018-08-25 04:39:05', '', 0, 'http://localhost/Carthagina/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-25 06:39:05', '2018-08-25 04:39:05', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/Carthagina/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-08-25 06:39:05', '2018-08-25 04:39:05', '', 0, 'http://localhost/Carthagina/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-25 06:39:05', '2018-08-25 04:39:05', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost/Carthagina.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2018-08-25 06:39:05', '2018-08-25 04:39:05', '', 0, 'http://localhost/Carthagina/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-08-25 08:50:12', '2018-08-25 06:50:12', '', 'Carthagina latin logo', '', 'inherit', 'open', 'closed', '', 'carthagina-latin-logo', '', '', '2018-08-25 08:50:12', '2018-08-25 06:50:12', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/Carthagina-latin-logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-08-25 09:00:43', '2018-08-25 07:00:43', '', 'ancient-architecture-art-161875', '', 'inherit', 'open', 'closed', '', 'ancient-architecture-art-161875', '', '', '2018-08-25 09:00:43', '2018-08-25 07:00:43', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/ancient-architecture-art-161875.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-08-25 09:00:47', '2018-08-25 07:00:47', '', 'architecture-3195322_960_720', '', 'inherit', 'open', 'closed', '', 'architecture-3195322_960_720', '', '', '2018-08-25 09:00:47', '2018-08-25 07:00:47', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/architecture-3195322_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-08-25 09:00:48', '2018-08-25 07:00:48', '', 'el-jem-3197414_960_720', '', 'inherit', 'open', 'closed', '', 'el-jem-3197414_960_720', '', '', '2018-08-25 09:00:48', '2018-08-25 07:00:48', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/el-jem-3197414_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-08-25 09:00:49', '2018-08-25 07:00:49', '', 'el-jem-3197415_960_720', '', 'inherit', 'open', 'closed', '', 'el-jem-3197415_960_720', '', '', '2018-08-25 09:00:49', '2018-08-25 07:00:49', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/el-jem-3197415_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-08-25 09:00:50', '2018-08-25 07:00:50', '', 'mosque-251183_960_720', '', 'inherit', 'open', 'closed', '', 'mosque-251183_960_720', '', '', '2018-08-25 09:00:50', '2018-08-25 07:00:50', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/mosque-251183_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-08-25 09:00:51', '2018-08-25 07:00:51', '', 'old-1130731_960_720', '', 'inherit', 'open', 'closed', '', 'old-1130731_960_720', '', '', '2018-08-25 09:00:51', '2018-08-25 07:00:51', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/old-1130731_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-08-25 09:00:52', '2018-08-25 07:00:52', '', 'roman-2419702_960_720', '', 'inherit', 'open', 'closed', '', 'roman-2419702_960_720', '', '', '2018-08-25 09:00:52', '2018-08-25 07:00:52', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/roman-2419702_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-08-25 09:00:53', '2018-08-25 07:00:53', '', 'tunisia-1545829_960_720', '', 'inherit', 'open', 'closed', '', 'tunisia-1545829_960_720', '', '', '2018-08-25 09:00:53', '2018-08-25 07:00:53', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/tunisia-1545829_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-08-25 09:00:53', '2018-08-25 07:00:53', '', 'tunisia-2844705_960_720', '', 'inherit', 'open', 'closed', '', 'tunisia-2844705_960_720', '', '', '2018-08-25 09:00:53', '2018-08-25 07:00:53', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/tunisia-2844705_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-08-25 09:01:19', '2018-08-25 07:01:19', '', 'arch-architecture-blur-861126', '', 'inherit', 'open', 'closed', '', 'arch-architecture-blur-861126', '', '', '2018-08-25 09:01:19', '2018-08-25 07:01:19', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/arch-architecture-blur-861126.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-08-25 09:01:49', '2018-08-25 07:01:49', '', 'cropped-ancient-architecture-art-161875.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ancient-architecture-art-161875-jpg', '', '', '2018-08-25 09:01:49', '2018-08-25 07:01:49', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-ancient-architecture-art-161875.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-08-25 09:03:06', '2018-08-25 07:03:06', '', 'cropped-architecture-3195322_960_720.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-architecture-3195322_960_720-jpg', '', '', '2018-08-25 09:03:06', '2018-08-25 07:03:06', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-architecture-3195322_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-08-25 09:10:27', '2018-08-25 07:10:27', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2018-08-25 09:10:27', '2018-08-25 07:10:27', '', 0, 'http://localhost/Carthagina/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-08-25 09:10:27', '2018-08-25 07:10:27', '', 'Activity', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-25 09:10:27', '2018-08-25 07:10:27', '', 20, 'http://localhost/Carthagina/2018/08/25/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-25 09:10:52', '2018-08-25 07:10:52', '', 'Project', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2018-08-25 09:10:52', '2018-08-25 07:10:52', '', 0, 'http://localhost/Carthagina/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-08-25 09:10:50', '2018-08-25 07:10:50', '', 'Project', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-25 09:10:50', '2018-08-25 07:10:50', '', 22, 'http://localhost/Carthagina/2018/08/25/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-08-25 09:11:52', '2018-08-25 07:11:52', '', 'Calandre', '', 'publish', 'closed', 'closed', '', 'calandre', '', '', '2018-08-25 09:11:52', '2018-08-25 07:11:52', '', 0, 'http://localhost/Carthagina/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-08-25 09:11:52', '2018-08-25 07:11:52', '', 'Calandre', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-08-25 09:11:52', '2018-08-25 07:11:52', '', 24, 'http://localhost/Carthagina/2018/08/25/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-08-25 09:12:07', '2018-08-25 07:12:07', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-08-25 09:12:07', '2018-08-25 07:12:07', '', 0, 'http://localhost/Carthagina/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-08-25 09:12:07', '2018-08-25 07:12:07', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-25 09:12:07', '2018-08-25 07:12:07', '', 26, 'http://localhost/Carthagina/2018/08/25/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-25 09:12:21', '2018-08-25 07:12:21', '', 'Photos', '', 'publish', 'closed', 'closed', '', 'photos', '', '', '2018-08-25 09:12:21', '2018-08-25 07:12:21', '', 0, 'http://localhost/Carthagina/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-08-25 09:12:21', '2018-08-25 07:12:21', '', 'Photos', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-25 09:12:21', '2018-08-25 07:12:21', '', 28, 'http://localhost/Carthagina/2018/08/25/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-08-25 09:12:31', '2018-08-25 07:12:31', '', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2018-08-25 09:12:31', '2018-08-25 07:12:31', '', 0, 'http://localhost/Carthagina/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-08-25 09:12:31', '2018-08-25 07:12:31', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-08-25 09:12:31', '2018-08-25 07:12:31', '', 30, 'http://localhost/Carthagina/2018/08/25/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-08-25 09:12:50', '2018-08-25 07:12:50', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-08-25 09:12:50', '2018-08-25 07:12:50', '', 0, 'http://localhost/Carthagina/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-08-25 09:12:50', '2018-08-25 07:12:50', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-08-25 09:12:50', '2018-08-25 07:12:50', '', 32, 'http://localhost/Carthagina/2018/08/25/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-25 09:13:07', '2018-08-25 07:13:07', '', 'Mission', '', 'publish', 'closed', 'closed', '', 'mission', '', '', '2018-08-25 09:13:07', '2018-08-25 07:13:07', '', 0, 'http://localhost/Carthagina/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-08-25 09:13:07', '2018-08-25 07:13:07', '', 'Mission', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-08-25 09:13:07', '2018-08-25 07:13:07', '', 34, 'http://localhost/Carthagina/2018/08/25/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-25 09:13:16', '2018-08-25 07:13:16', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2018-08-25 09:13:16', '2018-08-25 07:13:16', '', 0, 'http://localhost/Carthagina/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-08-25 09:13:16', '2018-08-25 07:13:16', '', 'Team', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-08-25 09:13:16', '2018-08-25 07:13:16', '', 36, 'http://localhost/Carthagina/2018/08/25/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-25 09:13:30', '2018-08-25 07:13:30', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-08-25 09:13:30', '2018-08-25 07:13:30', '', 0, 'http://localhost/Carthagina/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-08-25 09:13:30', '2018-08-25 07:13:30', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-08-25 09:13:30', '2018-08-25 07:13:30', '', 38, 'http://localhost/Carthagina/2018/08/25/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-08-25 09:13:55', '2018-08-25 07:13:55', '', 'History', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2018-08-25 09:13:55', '2018-08-25 07:13:55', '', 0, 'http://localhost/Carthagina/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-08-25 09:13:55', '2018-08-25 07:13:55', '', 'History', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-08-25 09:13:55', '2018-08-25 07:13:55', '', 40, 'http://localhost/Carthagina/2018/08/25/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=43', 8, 'nav_menu_item', '', 0),
(44, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=44', 2, 'nav_menu_item', '', 0),
(45, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=46', 12, 'nav_menu_item', '', 0),
(47, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=48', 10, 'nav_menu_item', '', 0),
(49, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=49', 9, 'nav_menu_item', '', 0),
(50, 1, '2018-08-25 09:14:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-25 09:14:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/Carthagina/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=52', 7, 'nav_menu_item', '', 0),
(53, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=53', 11, 'nav_menu_item', '', 0),
(54, 1, '2018-08-25 09:15:32', '2018-08-25 07:15:32', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2018-08-25 09:15:32', '2018-08-25 07:15:32', '', 0, 'http://localhost/Carthagina/?p=54', 6, 'nav_menu_item', '', 0),
(55, 1, '2018-08-25 09:16:07', '2018-08-25 07:16:07', '', 'cropped-mosque-251183_960_720.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mosque-251183_960_720-jpg', '', '', '2018-08-25 09:16:07', '2018-08-25 07:16:07', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-mosque-251183_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-08-25 09:16:51', '2018-08-25 07:16:51', '', 'cropped-roman-2419702_960_720.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-roman-2419702_960_720-jpg', '', '', '2018-08-25 09:16:51', '2018-08-25 07:16:51', '', 0, 'http://localhost/Carthagina/wp-content/uploads/2018/08/cropped-roman-2419702_960_720.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginatermmeta`
--

DROP TABLE IF EXISTS `wp_carthaginatermmeta`;
CREATE TABLE IF NOT EXISTS `wp_carthaginatermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginaterms`
--

DROP TABLE IF EXISTS `wp_carthaginaterms`;
CREATE TABLE IF NOT EXISTS `wp_carthaginaterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginaterms`
--

INSERT INTO `wp_carthaginaterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginaterm_relationships`
--

DROP TABLE IF EXISTS `wp_carthaginaterm_relationships`;
CREATE TABLE IF NOT EXISTS `wp_carthaginaterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginaterm_relationships`
--

INSERT INTO `wp_carthaginaterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(42, 2, 0),
(44, 2, 0),
(45, 2, 0),
(47, 2, 0),
(51, 2, 0),
(54, 2, 0),
(52, 2, 0),
(43, 2, 0),
(49, 2, 0),
(48, 2, 0),
(53, 2, 0),
(46, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginaterm_taxonomy`
--

DROP TABLE IF EXISTS `wp_carthaginaterm_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_carthaginaterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginaterm_taxonomy`
--

INSERT INTO `wp_carthaginaterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 12);

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginausermeta`
--

DROP TABLE IF EXISTS `wp_carthaginausermeta`;
CREATE TABLE IF NOT EXISTS `wp_carthaginausermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginausermeta`
--

INSERT INTO `wp_carthaginausermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminCar'),
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
(12, 1, 'wp_carthaginacapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_carthaginauser_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice,kebo_twitter_settings_pointer'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"cb9a0377173d09a1cf3ab119b24db3e6048ff30f0c5f6bcef0bceff1e06859c6\";a:4:{s:10:\"expiration\";i:1545508779;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1544299179;}}'),
(17, 1, 'wp_carthaginadashboard_quick_press_last_post_id', '66'),
(18, 1, 'wp_carthaginauser-settings', 'libraryContent=browse'),
(19, 1, 'wp_carthaginauser-settings-time', '1535180781'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_carthaginausers`
--

DROP TABLE IF EXISTS `wp_carthaginausers`;
CREATE TABLE IF NOT EXISTS `wp_carthaginausers` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_carthaginausers`
--

INSERT INTO `wp_carthaginausers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminCar', '$P$BglV1Pmdd/eCzSbYqoUqfD7rlRoW3M/', 'admincar', 'brahim.guedich@gmail.com', '', '2018-08-25 04:39:05', '', 0, 'adminCar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
