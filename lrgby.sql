-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 18 2016 г., 19:02
-- Версия сервера: 5.5.48
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lrgby`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_assets`
--

CREATE TABLE IF NOT EXISTS `kqgk0_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_assets`
--

INSERT INTO `kqgk0_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 149, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 70, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 71, 72, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 73, 74, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 75, 76, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 77, 78, 1, 'com_login', 'com_login', '{}'),
(13, 1, 79, 80, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 81, 82, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 83, 84, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 85, 86, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 87, 88, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 89, 118, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 119, 122, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 123, 124, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 125, 126, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 127, 128, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 129, 130, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 131, 134, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"6":1}}'),
(26, 1, 135, 136, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 120, 121, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 132, 133, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 137, 138, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(35, 27, 19, 20, 3, 'com_content.article.2', 'About Us', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 8, 22, 25, 2, 'com_content.category.8', 'News', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 36, 23, 24, 3, 'com_content.article.3', 'Article 1 Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 76, 57, 58, 3, 'com_content.article.6', 'Главная страница', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 1, 139, 140, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(42, 1, 141, 142, 1, 'com_tags', 'com_tags', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 1, 143, 144, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(44, 1, 145, 146, 1, 'com_ajax', 'com_ajax', '{}'),
(47, 1, 147, 148, 1, 'com_postinstall', 'com_postinstall', '{}'),
(48, 18, 90, 91, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 18, 92, 93, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 18, 94, 95, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 96, 97, 2, 'com_modules.module.89', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 98, 99, 2, 'com_modules.module.88', 'Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 18, 100, 101, 2, 'com_modules.module.90', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 18, 102, 103, 2, 'com_modules.module.91', 'Контактные данные', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(56, 18, 104, 105, 2, 'com_modules.module.93', 'Контакты в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(57, 18, 106, 107, 2, 'com_modules.module.94', 'Контакты в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(58, 18, 108, 109, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(61, 18, 110, 111, 2, 'com_modules.module.97', 'Модуль с блоками', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(62, 8, 26, 35, 2, 'com_content.category.9', 'Сварные металлополимерные трубы и фитинги  DEEPIPE', '{}'),
(63, 8, 36, 43, 2, 'com_content.category.10', 'Цветной металлопрокат и металлообработка', '{}'),
(64, 8, 44, 51, 2, 'com_content.category.11', 'Электротехнические изделия', '{}'),
(65, 8, 52, 55, 2, 'com_content.category.12', 'Мелкоразмерная нарубка листового металла', '{}'),
(66, 62, 27, 28, 3, 'com_content.article.7', 'Композитные металлополимерные трубы  DEEPIPE Composite', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(67, 62, 29, 30, 3, 'com_content.article.8', 'Модульные фитинги DEEPIPE Elements', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(68, 62, 31, 32, 3, 'com_content.article.9', 'SCW сварка', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(69, 63, 37, 38, 3, 'com_content.article.10', 'Алюминиевый прокат в рулонах и листах', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(70, 63, 39, 40, 3, 'com_content.article.11', 'Алюминиевый экструдированный профиль', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(71, 63, 41, 42, 3, 'com_content.article.12', 'Стальной горячеоцинкованный либо  алюмоцинковый прокат в рулонах и листах', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(72, 64, 45, 46, 3, 'com_content.article.13', 'Звуковые извещатели', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(73, 64, 47, 48, 3, 'com_content.article.14', 'Звуковые извещатели', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(74, 64, 49, 50, 3, 'com_content.article.15', 'Микросхемы', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(75, 65, 53, 54, 3, 'com_content.article.16', 'Мелкоразмерная нарубка листового металла', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(76, 8, 56, 59, 2, 'com_content.category.13', 'Технический раздел', '{}'),
(77, 8, 60, 69, 2, 'com_content.category.14', 'Материалы главного меню', '{}'),
(78, 77, 61, 62, 3, 'com_content.article.17', 'Партнеры', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(79, 77, 63, 64, 3, 'com_content.article.18', 'Вопрос-ответ', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(80, 77, 65, 66, 3, 'com_content.article.19', 'Контакты', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(81, 77, 67, 68, 3, 'com_content.article.20', 'Прайс', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(82, 18, 112, 113, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(83, 18, 114, 115, 2, 'com_modules.module.98', 'Форма обратной связи', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(84, 18, 116, 117, 2, 'com_modules.module.99', 'Модуль карты', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(85, 62, 33, 34, 3, 'com_content.article.21', 'Почему DEEPIPE?', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_associations`
--

CREATE TABLE IF NOT EXISTS `kqgk0_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_banners`
--

CREATE TABLE IF NOT EXISTS `kqgk0_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_banner_clients`
--

CREATE TABLE IF NOT EXISTS `kqgk0_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `kqgk0_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_categories`
--

CREATE TABLE IF NOT EXISTS `kqgk0_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_categories`
--

INSERT INTO `kqgk0_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 25, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 36, 1, 11, 12, 1, 'news', 'com_content', 'News', 'news', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 386, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 62, 1, 13, 14, 1, 'svarnye-metallopolimernye-truby-i-fitingi-deepipe', 'com_content', 'Сварные металлополимерные трубы и фитинги  DEEPIPE', 'svarnye-metallopolimernye-truby-i-fitingi-deepipe', '', '<h2>DEEPIPE COMPOSITE &amp; ELEMENT – МЫ СОЕДИНИЛИ ЛУЧШЕЕ.</h2>\r\n<p>Универсальная, инновационная трубопроводная система, вобравшая в себя все лучшее от металлопластиковых и полипропиленовых труб, избавившись от их недостатков:</p>\r\n<p class="flright hidden-xs hidden-sm">\r\n    <iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''//otr.webcaster.pro/iframe/feed/start/api_free_55835c30f01fdbd6600cb770b31c3438_hd/5_302530290/3f7bd52e4cb82d73b8ee1800a4126136/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen></iframe>\r\n</p>\r\n<ul>\r\n    <li>Простота сборки и сварки (стандартное паяльное оборудование);</li>\r\n    <li>Срок службы до 100 лет;</li>\r\n    <li>Цена в 2 раза ниже аналогичных систем;</li>\r\n    <li>Гибкость и память форм;</li>\r\n    <li>Минимум отходов при монтаже;</li>\r\n    <li>Температура расширения как у металла;</li>\r\n    <li>100% кислородонепроницаемость;</li>\r\n    <li>Стойкость к расслоению выше в 3 раза, а прочность соединений в 7 раз;</li>\r\n    <li>Модульные фитинги не меняют проходного сечения трубопровода, а следовательно малые потери давления и отсутствие заиливания стенок;</li>\r\n    <li>Стойкость к гидроударам.</li>\r\n    <li>Модульные фитинги не меняют проходного сечения трубопровода,  отсутствие заиливания стенок, и как  следствие малые потери давления в системе.</li>\r\n    <li>Высокая стойкость к гидроударам, ввиду надежного соединения компонентов системы</li>\r\n</ul>\r\n\r\n<p class="flright">\r\n    <a href="http://www.deepipe.ru/advans/files/doc/catalog.pdf" target="_blank">\r\n        <button type="button" class="btn btn-primary btn-lg">\r\n            Каталог DEEPIPE\r\n        </button>\r\n    </a> \r\n    <a href="https://cloud.mail.ru/public/G6xC/zfBczjCos">\r\n        <button type="button" class="btn btn-primary btn-lg">\r\n            Прайс\r\n        </button>\r\n    </a>\r\n</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 386, '2016-07-07 22:14:05', 386, '2016-07-18 07:56:39', 0, '*', 1),
(10, 63, 1, 15, 16, 1, 'tsvetnoj-metalloprokat-i-metalloobrabotka', 'com_content', 'Цветной металлопрокат и металлообработка', 'tsvetnoj-metalloprokat-i-metalloobrabotka', '', '<p>ООО «ЛИТОРАН Групп» является импортером алюминиевого металлопроката.</p>\r\n\r\n<p>Многолетний опыт работы с ведущими производителями алюминиевого проката является залогом того, что клиент получит необходимый соответствии с тех требовании, с оптимальной логистикой и ценами. Поставка возможна как через полный цикл размещения заказа, так и с отгрузкой с европейских складов.</p>\r\n\r\n<p>Предложение действует только при оптовых заказах (более 5 тонн).</p>\r\n\r\n<p>Основные типы продукции - алюминиевый прокат в рулонах и листах.</p>\r\n<p>По запросу возможна поставка алюминиевого экструдированного профиля.</p>\r\n\r\n\r\n<h2>Алюминиевый прокат,  складские позиции.</h2>\r\n\r\n<img width="50%" class="flright" src="/images/imgmatherials/tsvetnoj-metalloprokat-i-metalloobrabotka/cat-img-1.jpg" />\r\n\r\n<p>Позиции, перечисленные в таблице справа, всегда имеются в наличии на европейском складе. По точным срокам доставки, пожалуйста, свяжитесь с нами.</p>\r\n\r\n<p>На условиях размещения отдельного заказа, возможна поставка самого широкого спектра алюминиевого проката в соответсвии с EN 573-3, EN515, EN 485-1,2,4.</p>\r\n\r\n<p>Деформируемые сплавы 1, 3, 5, 8 серий;  (1050, 1100, 3003, 3103, 3105, 3005, 5005, 5754, 5251, 5052, 5183, 8011 и другие), аналоги ГОСТ АД0, АД, АМц, ММ, АМг1-AМг6.</p>\r\n\r\n<p>Форма поставки — рулон, лист; толщина — от 0.20 до 12.00 мм, ширина - от 20 до 2600 мм.</p>\r\n\r\n<h2>Алюминиевый прокат специального назначения.</h2>\r\n\r\n<img width="60%" class="flright" src="/images/imgmatherials/tsvetnoj-metalloprokat-i-metalloobrabotka/cat-img-2.jpg" />\r\n\r\n<p>В данную группу входят сплавы в типоразмерах,  которые не так распространены, но широко используются в судостроении, перевозке и хранении сыпучих грузов, горюче смазочных материалов и так далее. Товары данной группы отличаются эксклюзивными параметрами поставки (ширина до 2.6 метров, толщина до 12 мм, физико-механическими параметрами).</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 386, '2016-07-07 22:14:30', 386, '2016-07-18 12:42:13', 0, '*', 1),
(11, 64, 1, 17, 18, 1, 'elektrotekhnicheskie-izdeliya', 'com_content', 'Электротехнические изделия', 'elektrotekhnicheskie-izdeliya', '', '<p>Наша компания:</p>\r\n    <ul>\r\n        <li>Реализует электронные компоненты для нужд изготовителей;</li>\r\n        <li>\r\n            Разрабатывает и изготавливает электронные и электротехнические изделия по заданию заказчика;<br/>\r\n            <img width="30%" src="/images/imgmatherials/elektrotekhnicheskie-izdeliya/cat-img-1.png" />\r\n        </li>\r\n        <li>\r\n            Является официальным поставщиком оборудования Vimpex (противопожарные системы и средства производства).<br/>\r\n            <img width="30%" src="/images/imgmatherials/elektrotekhnicheskie-izdeliya/cat-img-2.png" />\r\n        </li>\r\n    </ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 386, '2016-07-07 22:14:50', 386, '2016-07-18 11:29:15', 0, '*', 1),
(12, 65, 1, 19, 20, 1, 'melkorazmernaya-narubka-listovogo-metalla', 'com_content', 'Мелкоразмерная нарубка листового металла', 'melkorazmernaya-narubka-listovogo-metalla', '', '<p>Оборудование ООО ЛИТОРАН Групп позволяет в автоматическом режиме производить нарубку листового металла в размер заказчика.</p> \r\n\r\n<p>Данный способ нарубки изделий является наиболее дешёвым и эффективным способом в расчёте затрат на единицу выпускаемой продукции, а так же с точки зрения минимизации отходов.</p>\r\n\r\n<p>Работаем как со своим, так и с материалом Заказчика.</p>\r\n\r\n<div style="text-align: center;">\r\n    <img width="30%" src="/images/imgmatherials/melkorazmernaya-narubka-listovogo-metalla/cat-img-1.png" /> \r\n    <img width="30%" src="/images/imgmatherials/melkorazmernaya-narubka-listovogo-metalla/cat-img-2.png" /> \r\n    <img width="30%" src="/images/imgmatherials/melkorazmernaya-narubka-listovogo-metalla/cat-img-3.png" />\r\n</div>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 386, '2016-07-07 22:15:16', 386, '2016-07-18 11:38:50', 0, '*', 1),
(13, 76, 1, 21, 22, 1, 'tekhnicheskij-razdel', 'com_content', 'Технический раздел', 'tekhnicheskij-razdel', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 386, '2016-07-07 22:37:29', 0, '2016-07-07 22:37:29', 0, '*', 1),
(14, 77, 1, 23, 24, 1, 'materialy-glavnogo-menyu', 'com_content', 'Материалы главного меню', 'materialy-glavnogo-menyu', '', '', 1, 386, '2016-07-08 00:53:51', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 386, '2016-07-08 00:48:08', 386, '2016-07-08 00:48:32', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_contact_details`
--

CREATE TABLE IF NOT EXISTS `kqgk0_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `suburb` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_contact_details`
--

INSERT INTO `kqgk0_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Your Name', 'your-name', '', 'This is a contact form which you can edit in the contact manager. Put your address or other information here. This can be a good place to put things like business hours too.Don''t forget to put a real email address.You also may want to enable Captcha in the global configurationto prevent spam submissions of contact forms. ', '', '', '', '', '', '', '', '', 'email@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 386, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_content`
--

CREATE TABLE IF NOT EXISTS `kqgk0_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `urls` text COLLATE utf8_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_content`
--

INSERT INTO `kqgk0_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(2, 35, 'About Us', 'about-us', '<p>Put more information on this page.</p>', '', -2, 2, '2011-01-01 00:00:01', 386, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-04 03:06:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'Article 1 Title', 'article-1-title', '<p>Here is a news article.</p>', '', 1, 8, '2011-01-01 00:00:01', 386, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-04 03:10:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 40, 'Главная страница', 'creating-your-site', '', '', 1, 13, '2011-01-01 00:00:01', 386, 'Joomla', '2016-07-07 22:38:14', 386, 0, '0000-00-00 00:00:00', '2012-01-04 04:27:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, '', '', 1, 1145, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 66, 'Композитные металлополимерные трубы  DEEPIPE Composite', 'kompozitnye-metallopolimernye-truby-deepipe-composite', 'Характеристики\r\n<br/><br/>\r\nЛучшее решение для инженерных систем\r\n', '\r\n<p><b>DEEPIPE Composite</b> – это композитные металлополимерные трубы с повышенной стойкостью к расслоению. Изготовлены по уникальной технологии PSA (Plasma surface activation) может на русском формирующей на поверхности металлического слоя трубы анизотропный рельеф увеличивающий сцепление ее слоев между собой, и обеспечивающий необходимую прочность для сварки.</p>\r\n\r\n<button type="button" class="btn" data-toggle="collapse" data-target="#demo">\r\n  Универсальные области применения\r\n</button>\r\n\r\n<div id="demo" class="collapse out">\r\n    <ul>\r\n        <li>Превосходные характеристики, благодаря технологии PSA</li>\r\n        <li>Технические характеристики - <a href="/images/documents/compos-metpol-truba.pdf">скачать</a></li>\r\n        <li>Сравнение труб различных систем - <a href="/images/documents/tech-char-deepipe.pdf">скачать</a></li>\r\n        <li>Превосходные характеристики, благодаря технологии PSA - <a href="/images/documents/tech-char-deepipe.pdf">скачать сертификат</a></li>\r\n        <li>Пртокол испытаний - <a href="/images/documents/protocol-ispit.pdf">скачать</a></li>\r\n    </ul>\r\n</div>', 1, 9, '2016-07-07 22:19:41', 386, '', '2016-07-18 11:19:57', 386, 386, '2016-07-18 13:24:42', '2016-07-07 22:19:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 2, '', '', 1, 51, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 67, 'Модульные фитинги DEEPIPE Elements', 'modulnye-fitingi-deepipe-elements', '23=240<br/>\r\nРаботать стало проще\r\n', '\r\n<p></p>', 1, 9, '2016-07-07 22:20:24', 386, '', '2016-07-18 08:32:46', 386, 0, '0000-00-00 00:00:00', '2016-07-07 22:20:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 68, 'SCW сварка', 'scw-svarka', 'Надёжно и удобно<br/><br/>\r\nВсе паяется простым паяльником для полипропилен (ПП)\r\n', '\r\n<p></p>', 1, 9, '2016-07-07 22:20:46', 386, '', '2016-07-18 08:32:21', 386, 0, '0000-00-00 00:00:00', '2016-07-07 22:20:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 69, 'Алюминиевый прокат в рулонах и листах', 'alyuminievyj-prokat-v-rulonakh-i-listakh', '<p>Извините, раздел находится в разработке.</p>', '', 1, 10, '2016-07-07 22:21:16', 386, '', '2016-07-07 22:21:16', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:21:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 70, 'Алюминиевый экструдированный профиль', 'alyuminievyj-ekstrudirovannyj-profil', '<p>Извините, раздел находится в разработке.</p>', '', 1, 10, '2016-07-07 22:21:44', 386, '', '2016-07-07 22:21:44', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:21:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 71, 'Стальной горячеоцинкованный либо  алюмоцинковый прокат в рулонах и листах', 'stalnoj-goryacheotsinkovannyj-libo-alyumotsinkovyj-prokat-v-rulonakh-i-listakh', '<p>Извините, раздел находится в разработке.</p>', '', 1, 10, '2016-07-07 22:22:11', 386, '', '2016-07-07 22:22:11', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:22:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 72, 'Звуковые извещатели', 'zvukovye-izveshchateli', '<p>Извините, раздел находится в разработке.</p>', '', 1, 11, '2016-07-07 22:22:53', 386, '', '2016-07-07 22:22:53', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:22:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 73, 'Звуковые извещатели', 'zvukovye-izveshchateli-2', '<p>Извините, раздел находится в разработке.</p>', '', 1, 11, '2016-07-07 22:23:14', 386, '', '2016-07-07 22:23:14', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:23:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 74, 'Микросхемы', 'mikroskhemy', '<p>Извините, раздел находится в разработке.</p>', '', 1, 11, '2016-07-07 22:23:41', 386, '', '2016-07-07 22:23:41', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:23:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 75, 'Мелкоразмерная нарубка листового металла', 'melkorazmernaya-narubka-listovogo-metalla', '<p>Извините, раздел находится в разработке.</p>', '', 1, 12, '2016-07-07 22:24:12', 386, '', '2016-07-07 22:24:12', 0, 0, '0000-00-00 00:00:00', '2016-07-07 22:24:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 78, 'Партнеры', 'partnery', '<p>Извините, материал находится в разработке.</p>', '', 1, 14, '2016-07-08 00:49:26', 386, '', '2016-07-08 00:49:26', 0, 0, '0000-00-00 00:00:00', '2016-07-08 00:49:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 79, 'Вопрос-ответ', 'vopros-otvet', '<p>Извините, материал находится в разработке.</p>', '', 1, 14, '2016-07-08 00:50:06', 386, '', '2016-07-08 00:52:01', 386, 0, '0000-00-00 00:00:00', '2016-07-08 00:50:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 80, 'Контакты', 'kontakty', '<table class="page-contacts">\r\n    <tr>\r\n        <td>\r\n            <img src="images/icon/marker.jpg" />\r\n        </td>\r\n        <td>\r\n            <h2>ООО ЛИТОРАН Групп</h2>\r\n            <p>220073, г.Минск, ул. Скрыганова, 6а, тел./факс +375 (17) 256 95 48</p>\r\n            <p>Тел. моб. +375 (29) 105 105 27</p>\r\n            <p>E-mail <a href="mailto: info@lrg.by">info@lrg.by</a></p>\r\n            <p>Почтовый адрес: 220007, Минск, РБ, а/я 19</p>\r\n        </td>\r\n        <td>\r\n            <img src="images/icon/marker.jpg" />\r\n        </td>\r\n        <td>\r\n            <h2>Промышленно-складского комплекса:</h2>\r\n            <p>г.Минск, ул. Фабрициуса, 2</p>\r\n        </td>\r\n    </tr>\r\n</table>\r\n<div class="form_back">\r\n{loadposition form_back}\r\n</div>\r\n{loadposition map}', '', 1, 14, '2016-07-08 00:51:38', 386, '', '2016-07-13 15:33:31', 386, 0, '0000-00-00 00:00:00', '2016-07-08 00:51:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, '', '', 1, 210, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 81, 'Прайс', 'prajs', '', '', 1, 14, '2016-07-13 09:53:58', 386, '', '2016-07-13 09:53:58', 0, 0, '0000-00-00 00:00:00', '2016-07-13 09:53:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 85, 'Почему DEEPIPE?', 'pochemu-deepipe', 'Сравнение с известными системами:<br/>\r\n- Металлопласт;<br/>\r\n- Полипропилен (ПП);<br/>\r\n', '\r\n<p></p>\r\n', 1, 9, '2016-07-18 07:56:59', 386, '', '2016-07-18 08:30:07', 386, 0, '0000-00-00 00:00:00', '2016-07-18 07:56:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `kqgk0_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `kqgk0_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_content_rating`
--

CREATE TABLE IF NOT EXISTS `kqgk0_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_content_types`
--

CREATE TABLE IF NOT EXISTS `kqgk0_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_content_types`
--

INSERT INTO `kqgk0_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `kqgk0_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_extensions`
--

CREATE TABLE IF NOT EXISTS `kqgk0_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=805 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_extensions`
--

INSERT INTO `kqgk0_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"a4b923d600f56afb0bc4fe6774384433"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 0, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.15.2","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.12","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"2","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","code_sample":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `kqgk0_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1468852260}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":"","unique_id":"919e2d725bf1658f8630b13f6ef3f77adb042461","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"July 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"July 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian language pack (site) for Joomla! 3.5.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, '', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f)","type":"language","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian language pack (administrator) for Joomla! 3.5.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian (ru-RU) Language Pack","type":"package","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian (ru-RU) language pack for Joomla","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(707, 'mod_blocks_ra', 'module', 'mod_blocks_ra', '', 0, 1, 0, 0, '{"name":"mod_blocks_ra","type":"module","creationDate":"2016","author":"Andrei Kravchenko","copyright":"","authorEmail":"krauchanka.a@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0431\\u043b\\u043e\\u043a\\u043e\\u0432 \\u0441 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f\\u043c\\u0438","group":"","filename":"mod_blocks_ra"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"July 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 'Модуль формы обратной связи', 'module', 'mod_form_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0444\\u043e\\u0440\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0444\\u043e\\u0440\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438","group":"","filename":"mod_form_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(804, 'Модуль карты', 'module', 'mod_map_gr', '', 0, 1, 0, 0, '{"name":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u043a\\u0430\\u0440\\u0442\\u044b","type":"module","creationDate":"2016","author":"Sergei Bolonikov","copyright":"","authorEmail":"sergeibolonikov@gmail.com","authorUrl":"","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u043a\\u0430\\u0440\\u0442\\u044b","group":"","filename":"mod_map_gr"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_filters`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kqgk0_finder_taxonomy`
--

INSERT INTO `kqgk0_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_terms`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kqgk0_finder_terms_common`
--

INSERT INTO `kqgk0_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_finder_types`
--

CREATE TABLE IF NOT EXISTS `kqgk0_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_languages`
--

CREATE TABLE IF NOT EXISTS `kqgk0_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_languages`
--

INSERT INTO `kqgk0_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_menu`
--

CREATE TABLE IF NOT EXISTS `kqgk0_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_menu`
--

INSERT INTO `kqgk0_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 75, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 19, 28, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 20, 21, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 22, 23, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 24, 25, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 26, 27, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 29, 34, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 30, 31, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 32, 33, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 35, 38, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 36, 37, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 39, 44, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 40, 41, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 42, 43, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 51, 52, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 49, 50, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 47, 48, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"main1","menu_image":"images\\/icon\\/main-menu\\/icon-1.png","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 6, 1, '*', 0),
(102, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 7, 8, 0, '*', 0),
(103, 'mainmenu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"0","num_columns":"1","num_links":"3","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"published","show_pagination":"0","show_pagination_results":"0","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","info_bloc_position":"0","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 9, 10, 0, '*', 0),
(104, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(105, 'mainmenu', 'Edit Profile', 'edit-profile', '', 'edit-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(106, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(107, 'mainmenu', 'Administrator', '2012-01-04-04-05-24', '', '2012-01-04-04-05-24', 'administrator', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 53, 54, 0, '*', 0),
(109, 'mainmenu', 'Create an Article', 'create-an-article', '', 'create-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(110, 'menu', 'com_tags', 'com-tags', '', 'com-tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 55, 56, 0, '', 1),
(111, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 57, 58, 0, '*', 1),
(112, 'mainmenu', 'Site Settings', 'site-settings', '', 'home/site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', -2, 101, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 2, 3, 0, '*', 0),
(113, 'mainmenu', 'Template Settings', 'template-settings', '', 'home/template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', -2, 101, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(114, 'mainmenu', 'Партнеры', 'partnery', '', 'partnery', 'index.php?option=com_content&view=article&id=17', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"main2","menu_image":"images\\/icon\\/main-menu\\/icon-3.png","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(115, 'mainmenu', 'Вопрос-ответ', 'vopros-otvet', '', 'vopros-otvet', 'index.php?option=com_content&view=article&id=18', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"main3","menu_image":"images\\/icon\\/main-menu\\/icon-2.png","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(116, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"1","link_titles":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"main4","menu_image":"images\\/icon\\/main-menu\\/icon-4.png","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(117, '1', 'Сварные металлополимерные трубы и фитинги  DEEPIPE', 'svarnye-metallopolimernye-truby-i-fitingi-deepipe', '', 'svarnye-metallopolimernye-truby-i-fitingi-deepipe', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"0","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"0","show_cat_num_articles":"0","show_cat_tags":"0","page_subheading":"","num_leading_articles":"0","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"0","orderby_pri":"none","orderby_sec":"alpha","order_date":"created","show_pagination":"0","show_pagination_results":"0","show_featured":"","show_title":"","link_titles":"1","show_intro":"0","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(118, '1', 'Цветной металлопрокат и металлообработка', 'tsvetnoj-metalloprokat-i-metalloobrabotka', '', 'tsvetnoj-metalloprokat-i-metalloobrabotka', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"0","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"0","show_cat_num_articles":"0","show_cat_tags":"0","page_subheading":"","num_leading_articles":"0","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"0","show_subcategory_content":"0","orderby_pri":"none","orderby_sec":"alpha","order_date":"created","show_pagination":"1","show_pagination_results":"1","show_featured":"","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(119, '1', 'Электротехнические изделия', 'elektrotekhnicheskie-izdeliya', '', 'elektrotekhnicheskie-izdeliya', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"0","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"0","show_cat_num_articles":"0","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(120, '1', 'Мелкоразмерная нарубка листового металла', 'melkorazmernaya-narubka-listovogo-metalla', '', 'melkorazmernaya-narubka-listovogo-metalla', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"0","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(121, 'mainmenu', 'Прайс', 'prajs', '', 'prajs', 'index.php?option=com_content&view=article&id=20', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/icon\\/main-menu\\/icon-5.png","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_menu_types`
--

CREATE TABLE IF NOT EXISTS `kqgk0_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_menu_types`
--

INSERT INTO `kqgk0_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 0, '1', 'Меню для блоков', '');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_messages`
--

CREATE TABLE IF NOT EXISTS `kqgk0_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `kqgk0_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_modules`
--

CREATE TABLE IF NOT EXISTS `kqgk0_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_modules`
--

INSERT INTO `kqgk0_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 58, 'Main Menu', '', '', 1, 'main-menu', 0, '0000-00-00 00:00:00', '2016-06-29 07:50:21', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 49, 'Popular Articles', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 50, 'Recently Added Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 48, 'Logged-in Users', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 82, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(80, 0, 'Search', '', '', -2, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(82, 0, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_news', 1, 1, '{"catid":["8"],"image":"0","item_title":"1","link_titles":"1","item_heading":"h4","showLastSeparator":"0","readmore":"0","count":"5","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(83, 0, 'Side Module', '', '<p>This is a module where you might want to add some more information or an image,  a link to your social media presence, or whatever makes sense for your site.  </p><p>You can edit this module in the module manager. Look for the Side Module.</p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 52, 'Image', '', '<p><img src="images/headers/windows.jpg" alt="" /></p>', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 51, 'Site Information', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 6, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 53, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(91, 54, 'Контактные данные', '', '<p><span class="glyphicon glyphicon-earphone"> </span><span class="phone__phone"><a href="tel:+375172569548">+375 (17) 256-95-48</a></span><span class="phone__email"><a href="mailto:info@lrg.by">info@lrg.by</a></span></p>', 1, 'phone', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 56, 'Контакты в футере', '', '<p><span class="foot-contact">220073, г. Минск, ул. Скрыганова, 6А<br />+375 (17) 256-95-48</span></p>', 1, 'contacts-foot', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 57, 'Контакты в футере', '', '<div> 220073, г.Минск, ул. Скрыганова, 6А</div>\r\n<div>+375 (17) 256-95-48</div>', 1, 'foot-contact', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 61, 'Модуль с блоками', '', '', 1, 'sqr-block', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_blocks_ra', 1, 0, '{"img0":"images\\/blocks\\/block1.png","txt0":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 DEEPIPE","url0":"\\/svarnye-metallopolimernye-truby-i-fitingi-deepipe","img-sl0":"images\\/blocks\\/big-img\\/slide0.png","txt-sl0":"\\u041d\\u043e\\u0432\\u043e\\u0435 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0432\\u043e\\u0434\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c PERT ALAP \\u0441 \\u043f\\u0435\\u0440\\u0435\\u0434\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438","img1":"images\\/blocks\\/block2.png","txt1":"\\u0422\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f \\u0446\\u0432\\u0435\\u0442\\u043d\\u044b\\u043c \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u043e\\u043c","url1":"\\/tsvetnoj-metalloprokat-i-metalloobrabotka","img-sl1":"images\\/blocks\\/big-img\\/slide1.png","txt-sl1":"\\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u0432 \\u0431\\u0443\\u0445\\u0442\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445 \\u0438 \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u0435\\u0439 \\u0441\\u043e \\u0441\\u043a\\u043b\\u0430\\u0434\\u0430 \\u0438 \\u043f\\u043e\\u0434 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u0441 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u0445 \\u043a\\u043e\\u043c\\u0431\\u0438\\u043d\\u0430\\u0442\\u043e\\u0432 \\u0415\\u0432\\u0440\\u043e\\u043f\\u044b \\u0438 \\u041a\\u0438\\u0442\\u0430\\u044f","img2":"images\\/blocks\\/block3.png","txt2":"\\u041c\\u0435\\u043b\\u043a\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u043d\\u0430\\u044f \\u043d\\u0430\\u0440\\u0443\\u0431\\u043a\\u0430 \\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430","url2":"\\/melkorazmernaya-narubka-listovogo-metalla","img-sl2":"images\\/blocks\\/big-img\\/slide2.png","txt-sl2":"\\u041c\\u0435\\u043b\\u043a\\u043e-\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u043d\\u0430\\u044f \\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u0437\\u0430\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0430  \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0447\\u0438\\u043a\\u0430 \\u0438\\u0437 \\u0440\\u0443\\u043b\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430","img3":"images\\/blocks\\/block4.png","txt3":"\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f","url3":"\\/elektrotekhnicheskie-izdeliya","img-sl3":"images\\/blocks\\/big-img\\/slide3.png","txt-sl3":"\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 83, 'Форма обратной связи', '', '', 1, 'form_back', 0, '0000-00-00 00:00:00', '2016-07-13 14:53:46', '0000-00-00 00:00:00', 1, 'mod_form_gr', 1, 1, '{"head":"","recipient":"akravchenko@medialine.by","button_text":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","mail_head":"\\u041f\\u0438\\u0441\\u044c\\u043c\\u043e \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 lrg.by","thanks":"\\u0412\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u043e","captcha_key":"","captcha_secret_key":"","file_on":"1","file_text":"\\u041f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u0438\\u0442\\u044c \\u0444\\u0430\\u0439\\u043b (\\u0434\\u043e 3 \\u041c\\u0431)","field":"{\\"type\\":[\\"text\\",\\"text\\",\\"textarea\\"],\\"title\\":[\\"\\",\\"\\",\\"\\"],\\"placeholder\\":[\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\\",\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0412\\u0430\\u0448 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\",\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0412\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435\\"],\\"required\\":[null,null,null]}","modal_btn_text":"","modal_btn_class":"","layout":"_:default","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 84, 'Модуль карты', '', '', 1, 'map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_map_gr', 1, 0, '{"mapx":"53.911382","mapy":"27.517061","mapzoom":"11","address":"","phone":"","marker":"{\\"markerx\\":[\\"53.911382\\"],\\"markery\\":[\\"27.517061\\"]}","modal-btn-text":"","layout":"_:default","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_modules_menu`
--

CREATE TABLE IF NOT EXISTS `kqgk0_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_modules_menu`
--

INSERT INTO `kqgk0_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, -101),
(79, 0),
(80, 0),
(83, 0),
(85, 0),
(86, 0),
(88, 0),
(91, 0),
(93, 0),
(94, 0),
(97, -121),
(97, -116),
(97, -115),
(97, -114),
(98, 116),
(99, 116);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `kqgk0_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_overrider`
--

CREATE TABLE IF NOT EXISTS `kqgk0_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `string` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `kqgk0_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_postinstall_messages`
--

INSERT INTO `kqgk0_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_redirect_links`
--

CREATE TABLE IF NOT EXISTS `kqgk0_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_schemas`
--

CREATE TABLE IF NOT EXISTS `kqgk0_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_schemas`
--

INSERT INTO `kqgk0_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.0-2016-06-05');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_session`
--

CREATE TABLE IF NOT EXISTS `kqgk0_session` (
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_session`
--

INSERT INTO `kqgk0_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('co11j566v17r5qunlgtrq60k17', 0, 1, '1468856539', 'joomla|s:576:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxNjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0Njg4NTYzMTY7czo0OiJsYXN0IjtpOjE0Njg4NTY1MzY7czozOiJub3ciO2k6MTQ2ODg1NjUzODt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_tags`
--

CREATE TABLE IF NOT EXISTS `kqgk0_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `urls` text COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_tags`
--

INSERT INTO `kqgk0_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 386, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_template_styles`
--

CREATE TABLE IF NOT EXISTS `kqgk0_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_template_styles`
--

INSERT INTO `kqgk0_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'My Default Style (Protostar)', '{"templateColor":"#696969","templateBackgroundColor":"#E3E3E3","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#000000","logoFile":"","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_ucm_base`
--

CREATE TABLE IF NOT EXISTS `kqgk0_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_ucm_content`
--

CREATE TABLE IF NOT EXISTS `kqgk0_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_ucm_history`
--

CREATE TABLE IF NOT EXISTS `kqgk0_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_ucm_history`
--

INSERT INTO `kqgk0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(2, 10, 5, '', '2016-07-07 22:14:30', 386, 804, '936e99f2335f906556b97692d281630f69bca01b', '{"id":10,"asset_id":63,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"\\u0426\\u0432\\u0435\\u0442\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","alias":"tsvetnoj-metalloprokat-i-metalloobrabotka","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:30","modified_user_id":null,"modified_time":"2016-07-07 22:14:30","hits":"0","language":"*","version":null}', 0),
(3, 11, 5, '', '2016-07-07 22:14:50', 386, 718, '224e812a6ad0b9acfc2a11f4ecf82bb79df09bde', '{"id":11,"asset_id":64,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f","alias":"elektrotekhnicheskie-izdeliya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:50","modified_user_id":null,"modified_time":"2016-07-07 22:14:50","hits":"0","language":"*","version":null}', 0),
(4, 12, 5, '', '2016-07-07 22:15:16', 386, 804, '482ab553f3587e9f65c8cfe58beb3def988ea456', '{"id":12,"asset_id":65,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"\\u041c\\u0435\\u043b\\u043a\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u043d\\u0430\\u044f \\u043d\\u0430\\u0440\\u0443\\u0431\\u043a\\u0430 \\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430","alias":"melkorazmernaya-narubka-listovogo-metalla","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:15:16","modified_user_id":null,"modified_time":"2016-07-07 22:15:16","hits":"0","language":"*","version":null}', 0),
(5, 7, 1, '', '2016-07-07 22:19:41', 386, 2180, '52dcc3d15c4ba48f38760acb97c60fb149852e88', '{"id":7,"asset_id":66,"title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u043d\\u043e \\u0434\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:19:41","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 8, 1, '', '2016-07-07 22:20:24', 386, 2005, '6ff5517ea4bf78867000e7c6133be9776afe1f92', '{"id":8,"asset_id":67,"title":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 DEEPIPE Elements","alias":"modulnye-fitingi-deepipe-elements","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-07-07 22:20:24","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:20:24","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:20:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 9, 1, '', '2016-07-07 22:20:46', 386, 1908, 'b95786b78ef68423cc129b6f80ac675cb61d9fd5', '{"id":9,"asset_id":68,"title":"SCW \\u0441\\u0432\\u0430\\u0440\\u043a\\u0430","alias":"scw-svarka","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2016-07-07 22:20:46","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:20:46","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:20:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 10, 1, '', '2016-07-07 22:21:16', 386, 2097, '3157541e3bfcba3d92659bfe9e17bf09feb10535', '{"id":10,"asset_id":69,"title":"\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445","alias":"alyuminievyj-prokat-v-rulonakh-i-listakh","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-07-07 22:21:16","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:21:16","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:21:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 11, 1, '', '2016-07-07 22:21:44', 386, 2102, '9427e38243f2aa1d4e72f7fa9df2676468dd9158', '{"id":11,"asset_id":70,"title":"\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u044d\\u043a\\u0441\\u0442\\u0440\\u0443\\u0434\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c","alias":"alyuminievyj-ekstrudirovannyj-profil","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-07-07 22:21:44","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:21:44","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:21:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 12, 1, '', '2016-07-07 22:22:11', 386, 2331, '29c4153beb33ce6e501f1419f79b13943de6f204', '{"id":12,"asset_id":71,"title":"\\u0421\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0433\\u043e\\u0440\\u044f\\u0447\\u0435\\u043e\\u0446\\u0438\\u043d\\u043a\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0438\\u0431\\u043e  \\u0430\\u043b\\u044e\\u043c\\u043e\\u0446\\u0438\\u043d\\u043a\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445","alias":"stalnoj-goryacheotsinkovannyj-libo-alyumotsinkovyj-prokat-v-rulonakh-i-listakh","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2016-07-07 22:22:11","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:22:11","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:22:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 13, 1, '', '2016-07-07 22:22:53', 386, 1991, '24fa431a8deeb53153ac8af81ccbab887d389a46', '{"id":13,"asset_id":72,"title":"\\u0417\\u0432\\u0443\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438\\u0437\\u0432\\u0435\\u0449\\u0430\\u0442\\u0435\\u043b\\u0438","alias":"zvukovye-izveshchateli","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-07-07 22:22:53","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:22:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:22:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 14, 1, '', '2016-07-07 22:23:14', 386, 1993, 'f564c7abb61c286b8eaa62ae35db98a7567c1a0a', '{"id":14,"asset_id":73,"title":"\\u0417\\u0432\\u0443\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438\\u0437\\u0432\\u0435\\u0449\\u0430\\u0442\\u0435\\u043b\\u0438","alias":"zvukovye-izveshchateli-2","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-07-07 22:23:14","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:23:14","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:23:14","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 15, 1, '', '2016-07-07 22:23:41', 386, 1931, '7a10d4c3348bcd171b0a540f3ca4bc74b3cdc3c2', '{"id":15,"asset_id":74,"title":"\\u041c\\u0438\\u043a\\u0440\\u043e\\u0441\\u0445\\u0435\\u043c\\u044b","alias":"mikroskhemy","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2016-07-07 22:23:41","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:23:41","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:23:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 16, 1, '', '2016-07-07 22:24:12', 386, 2126, 'f540f57b37ea44dcbec445578252873cbcac7f84', '{"id":16,"asset_id":75,"title":"\\u041c\\u0435\\u043b\\u043a\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u043d\\u0430\\u044f \\u043d\\u0430\\u0440\\u0443\\u0431\\u043a\\u0430 \\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430","alias":"melkorazmernaya-narubka-listovogo-metalla","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"12","created":"2016-07-07 22:24:12","created_by":"386","created_by_alias":"","modified":"2016-07-07 22:24:12","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-07 22:24:12","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 13, 5, '', '2016-07-07 22:37:29', 386, 661, '1435748f1a96959df22569a812efc1b2d9a91d8a', '{"id":13,"asset_id":76,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"\\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b","alias":"tekhnicheskij-razdel","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:37:29","modified_user_id":null,"modified_time":"2016-07-07 22:37:29","hits":"0","language":"*","version":null}', 0),
(16, 6, 1, '', '2016-07-07 22:38:14', 386, 1780, '36b62af56130d5b0f6022e3f50416b92a4abab59', '{"id":"6","asset_id":"40","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430","alias":"creating-your-site","introtext":"","fulltext":"","state":1,"catid":"13","created":"2011-01-01 00:00:01","created_by":"386","created_by_alias":"Joomla","modified":"2016-07-07 22:38:14","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-07 22:37:38","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"689","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 14, 5, '', '2016-07-08 00:48:08', 386, 690, 'efd22d54a8fe9c02498b10b9dc1770697970b718', '{"id":14,"asset_id":77,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_content","title":"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0433\\u043e \\u043c\\u0435\\u043d\\u044e","alias":"materialy-glavnogo-menyu","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-08 00:48:08","modified_user_id":null,"modified_time":"2016-07-08 00:48:08","hits":"0","language":"*","version":null}', 0),
(18, 17, 1, '', '2016-07-08 00:49:26', 386, 1928, '3ad8fc4f55ab4b02c1ba31e737a646bbb25d95c3', '{"id":17,"asset_id":78,"title":"\\u041f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u044b","alias":"partnery","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:49:26","created_by":"386","created_by_alias":"","modified":"2016-07-08 00:49:26","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-08 00:49:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 18, 1, '', '2016-07-08 00:50:06', 386, 1721, '5d79cad90a1d5a2b19f0b9fdf8c5c8668a447818', '{"id":18,"asset_id":79,"title":"\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441-\\u043e\\u0442\\u0432\\u0435\\u0442","alias":"vopros-otvet","introtext":"","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:50:06","created_by":"386","created_by_alias":"","modified":"2016-07-08 00:50:06","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-08 00:50:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 19, 1, '', '2016-07-08 00:51:38', 386, 1862, 'f0c0ff318fe4e39ec7147964422b6be902f0cc15', '{"id":19,"asset_id":80,"title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<p>\\u0422\\u0443\\u0442 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b. \\u041d\\u043e \\u043f\\u043e\\u043f\\u043e\\u0437\\u0436\\u0435.<\\/p>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-08 00:51:38","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 18, 1, '', '2016-07-08 00:52:01', 386, 1972, 'e04f2c91a432ceb2d6fcecc8b0a125118ba641f2', '{"id":"18","asset_id":"79","title":"\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441-\\u043e\\u0442\\u0432\\u0435\\u0442","alias":"vopros-otvet","introtext":"<p>\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435.<\\/p>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:50:06","created_by":"386","created_by_alias":"","modified":"2016-07-08 00:52:01","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-08 00:51:41","publish_up":"2016-07-08 00:50:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 9, 5, '', '2016-07-11 13:22:08', 386, 4700, '1aadbffc88f38105e8aef5dbcba1110ee5177b60', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnie-trubi-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnie-trubi-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n<li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n<li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n<li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n<li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n<li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n<li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n<li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n<li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n<li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n<li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n<\\/ul>\\r\\n<p><iframe frameborder=''0'' width=''1280'' height=''720'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-11 13:21:59","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-11 13:22:08","hits":"0","language":"*","version":"1"}', 0);
INSERT INTO `kqgk0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(27, 9, 5, '', '2016-07-11 13:24:27', 386, 4715, 'f3ea0046946c5e50b516266d18639110dd060b38', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnie-trubi-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnie-trubi-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n<li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n<li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n<li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n<li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n<li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n<li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n<li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n<li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n<li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n<li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-11 13:23:57","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-11 13:24:27","hits":"0","language":"*","version":"1"}', 0),
(28, 20, 1, '', '2016-07-13 09:53:58', 386, 1705, 'de7cc2c976915f927be9100da5b046f669bc14c4', '{"id":20,"asset_id":81,"title":"\\u041f\\u0440\\u0430\\u0439\\u0441","alias":"prajs","introtext":"","fulltext":"","state":1,"catid":"14","created":"2016-07-13 09:53:58","created_by":"386","created_by_alias":"","modified":"2016-07-13 09:53:58","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-13 09:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 19, 1, '', '2016-07-13 13:31:25', 386, 3111, 'a723860f049bad5f6e77d33194a377d5e4bbddb6', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"\\\\lrgby\\\\images\\\\icon\\\\marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"\\\\lrgby\\\\images\\\\icon\\\\marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 13:31:25","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 13:01:28","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 19, 1, '', '2016-07-13 13:32:29', 386, 3116, '58076b8e2eda8da4787e717803247b894e6f88cb', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"page-contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"\\\\lrgby\\\\images\\\\icon\\\\marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"\\\\lrgby\\\\images\\\\icon\\\\marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 13:32:29","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 13:31:25","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"15","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 19, 1, '', '2016-07-13 13:32:51', 386, 3102, 'cb776514b9c28fa24a0cc2f2bca197549b7a2cb7', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"page-contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"\\\\images\\\\icon\\\\marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"\\\\images\\\\icon\\\\marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 13:32:51","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 13:32:29","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(32, 19, 1, '', '2016-07-13 13:33:56', 386, 3098, '48ef213a773be87619d2fdf4a4edf3cb3ebc8a67', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"page-contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 13:33:56","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 13:32:51","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 19, 1, '', '2016-07-13 14:11:43', 386, 3126, '311fc37b5109a7fd721754386c0b30e8ff552ce4', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"page-contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>\\r\\n{loadposition form_back}","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 14:11:43","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 14:11:08","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"32","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 19, 1, '', '2016-07-13 14:12:18', 386, 3148, 'd94bb278e885da88a75fb26dafb4638444f283c6', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"page-contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>\\r\\n{loadposition form_back}\\r\\n{loadposition map}","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 14:12:18","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 14:11:43","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"33","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 19, 1, '', '2016-07-13 15:33:31', 386, 3188, 'e2cf7a62c41c3280b020294cc711b2f725d653c5', '{"id":"19","asset_id":"80","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<table class=\\"page-contacts\\">\\r\\n    <tr>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f<\\/h2>\\r\\n            <p>220073, \\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0421\\u043a\\u0440\\u044b\\u0433\\u0430\\u043d\\u043e\\u0432\\u0430, 6\\u0430, \\u0442\\u0435\\u043b.\\/\\u0444\\u0430\\u043a\\u0441 +375 (17) 256 95 48<\\/p>\\r\\n            <p>\\u0422\\u0435\\u043b. \\u043c\\u043e\\u0431. +375 (29) 105 105 27<\\/p>\\r\\n            <p>E-mail <a href=\\"mailto: info@lrg.by\\">info@lrg.by<\\/a><\\/p>\\r\\n            <p>\\u041f\\u043e\\u0447\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441: 220007, \\u041c\\u0438\\u043d\\u0441\\u043a, \\u0420\\u0411, \\u0430\\/\\u044f 19<\\/p>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <img src=\\"images\\/icon\\/marker.jpg\\" \\/>\\r\\n        <\\/td>\\r\\n        <td>\\r\\n            <h2>\\u041f\\u0440\\u043e\\u043c\\u044b\\u0448\\u043b\\u0435\\u043d\\u043d\\u043e-\\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u0430:<\\/h2>\\r\\n            <p>\\u0433.\\u041c\\u0438\\u043d\\u0441\\u043a, \\u0443\\u043b. \\u0424\\u0430\\u0431\\u0440\\u0438\\u0446\\u0438\\u0443\\u0441\\u0430, 2<\\/p>\\r\\n        <\\/td>\\r\\n    <\\/tr>\\r\\n<\\/table>\\r\\n<div class=\\"form_back\\">\\r\\n{loadposition form_back}\\r\\n<\\/div>\\r\\n{loadposition map}","fulltext":"","state":1,"catid":"14","created":"2016-07-08 00:51:38","created_by":"386","created_by_alias":"","modified":"2016-07-13 15:33:31","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-13 15:32:57","publish_up":"2016-07-08 00:51:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"66","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 9, 5, '', '2016-07-15 11:52:04', 386, 5996, 'ea59d03368ac2a2c3da9909001bbc55a4a23325d', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-15 11:40:28","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-15 11:52:04","hits":"0","language":"*","version":"1"}', 0),
(37, 9, 5, '', '2016-07-15 11:54:06', 386, 6016, 'df6883b5f649124dbb52bf9ddfb35161a4524bb9', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video hidden-xs hidden-ms\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-15 11:52:04","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-15 11:54:06","hits":"0","language":"*","version":"1"}', 0);
INSERT INTO `kqgk0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(38, 9, 5, '', '2016-07-15 12:04:53', 386, 6016, '95a58344082e6949870949e576cee1d34ab3d03b', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video hidden-xs hidden-sm\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-15 11:54:14","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-15 12:04:53","hits":"0","language":"*","version":"1"}', 0),
(39, 9, 5, '', '2016-07-15 12:43:32', 386, 6225, '4f34b60200c31e64915874b3143427c75882376a', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video hidden-xs hidden-sm\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn btn-default\\">\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 DEEPIPE<\\/button> <button type=\\"button\\" class=\\"btn btn-default\\">\\u041f\\u0440\\u0430\\u0439\\u0441<\\/button>","published":"1","checked_out":"386","checked_out_time":"2016-07-15 12:04:53","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-15 12:43:32","hits":"0","language":"*","version":"1"}', 0),
(40, 9, 5, '', '2016-07-15 12:47:49', 386, 6225, 'f90449e577dd7c91e7b3ebf06d2949f64a77fbab', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video hidden-xs hidden-sm\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn btn-primary\\">\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 DEEPIPE<\\/button> <button type=\\"button\\" class=\\"btn btn-primary\\">\\u041f\\u0440\\u0430\\u0439\\u0441<\\/button>","published":"1","checked_out":"386","checked_out_time":"2016-07-15 12:43:32","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-15 12:47:49","hits":"0","language":"*","version":"1"}', 0),
(41, 9, 5, '', '2016-07-15 13:31:02', 386, 6383, '4ddd3f02e03d57babf229c401881c24974d2f9fd', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n<p class=\\"video hidden-xs hidden-sm\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>\\r\\n\\r\\n<a href=\\"http:\\/\\/www.deepipe.ru\\/advans\\/files\\/doc\\/catalog.pdf\\" target=\\"_blank\\"><button type=\\"button\\" class=\\"btn btn-primary\\">\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 DEEPIPE<\\/button><\\/a> <a href=\\"https:\\/\\/cloud.mail.ru\\/public\\/G6xC\\/zfBczjCos\\"><button type=\\"button\\" class=\\"btn btn-primary\\">\\u041f\\u0440\\u0430\\u0439\\u0441<\\/button><\\/a>","published":"1","checked_out":"386","checked_out_time":"2016-07-15 12:47:58","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-15 13:31:02","hits":"0","language":"*","version":"1"}', 0),
(42, 9, 5, '', '2016-07-18 07:47:18', 386, 6397, '90070d169e73e31230686f7966961f117889e0b1', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<p class=\\"video hidden-xs hidden-sm\\"><iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe><\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<a href=\\"http:\\/\\/www.deepipe.ru\\/advans\\/files\\/doc\\/catalog.pdf\\" target=\\"_blank\\"><button type=\\"button\\" class=\\"btn btn-primary btn-lg\\">\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 DEEPIPE<\\/button><\\/a> <a href=\\"https:\\/\\/cloud.mail.ru\\/public\\/G6xC\\/zfBczjCos\\"><button type=\\"button\\" class=\\"btn btn-primary btn-lg\\">\\u041f\\u0440\\u0430\\u0439\\u0441<\\/button><\\/a>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 07:47:08","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-18 07:47:18","hits":"0","language":"*","version":"1"}', 0),
(43, 9, 5, '', '2016-07-18 07:50:28', 386, 6553, '8a1a37ce85c4bcfb38ac4326c627299d825a2f11', '{"id":"9","asset_id":"62","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","extension":"com_content","title":"\\u0421\\u0432\\u0430\\u0440\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0438 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438  DEEPIPE","alias":"svarnye-metallopolimernye-truby-i-fitingi-deepipe","note":"","description":"<h2>DEEPIPE COMPOSITE &amp; ELEMENT \\u2013 \\u041c\\u042b \\u0421\\u041e\\u0415\\u0414\\u0418\\u041d\\u0418\\u041b\\u0418 \\u041b\\u0423\\u0427\\u0428\\u0415\\u0415.<\\/h2>\\r\\n<p>\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f, \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430, \\u0432\\u043e\\u0431\\u0440\\u0430\\u0432\\u0448\\u0430\\u044f \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0432\\u0441\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u043e\\u0442 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0442\\u0440\\u0443\\u0431, \\u0438\\u0437\\u0431\\u0430\\u0432\\u0438\\u0432\\u0448\\u0438\\u0441\\u044c \\u043e\\u0442 \\u0438\\u0445 \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u043e\\u0432:<\\/p>\\r\\n<p class=\\"flright hidden-xs hidden-sm\\">\\r\\n    <iframe frameborder=''0'' width=''480'' height=''320'' scrolling=''no'' src=''\\/\\/otr.webcaster.pro\\/iframe\\/feed\\/start\\/api_free_55835c30f01fdbd6600cb770b31c3438_hd\\/5_302530290\\/3f7bd52e4cb82d73b8ee1800a4126136\\/4603940281?type_id=&width=100%25&height=100%25&lang=ru'' allowfullscreen><\\/iframe>\\r\\n<\\/p>\\r\\n<ul>\\r\\n    <li>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0442\\u0430 \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438 (\\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435);<\\/li>\\r\\n    <li>\\u0421\\u0440\\u043e\\u043a \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u0434\\u043e 100 \\u043b\\u0435\\u0442;<\\/li>\\r\\n    <li>\\u0426\\u0435\\u043d\\u0430 \\u0432 2 \\u0440\\u0430\\u0437\\u0430 \\u043d\\u0438\\u0436\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c;<\\/li>\\r\\n    <li>\\u0413\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c \\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c \\u0444\\u043e\\u0440\\u043c;<\\/li>\\r\\n    <li>\\u041c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432 \\u043f\\u0440\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0435;<\\/li>\\r\\n    <li>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u0443 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430;<\\/li>\\r\\n    <li>100% \\u043a\\u0438\\u0441\\u043b\\u043e\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u043f\\u0440\\u043e\\u043d\\u0438\\u0446\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u044c;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e \\u0432\\u044b\\u0448\\u0435 \\u0432 3 \\u0440\\u0430\\u0437\\u0430, \\u0430 \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0432 7 \\u0440\\u0430\\u0437;<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430, \\u0430 \\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a;<\\/li>\\r\\n    <li>\\u0421\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c.<\\/li>\\r\\n    <li>\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 \\u043d\\u0435 \\u043c\\u0435\\u043d\\u044f\\u044e\\u0442 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0441\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \\u0442\\u0440\\u0443\\u0431\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430,  \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0437\\u0430\\u0438\\u043b\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0442\\u0435\\u043d\\u043e\\u043a, \\u0438 \\u043a\\u0430\\u043a  \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043c\\u0430\\u043b\\u044b\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0438 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435.<\\/li>\\r\\n    <li>\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c \\u043a \\u0433\\u0438\\u0434\\u0440\\u043e\\u0443\\u0434\\u0430\\u0440\\u0430\\u043c, \\u0432\\u0432\\u0438\\u0434\\u0443 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p class=\\"flright\\">\\r\\n    <a href=\\"http:\\/\\/www.deepipe.ru\\/advans\\/files\\/doc\\/catalog.pdf\\" target=\\"_blank\\">\\r\\n        <button type=\\"button\\" class=\\"btn btn-primary btn-lg\\">\\r\\n            \\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 DEEPIPE\\r\\n        <\\/button>\\r\\n    <\\/a> \\r\\n    <a href=\\"https:\\/\\/cloud.mail.ru\\/public\\/G6xC\\/zfBczjCos\\">\\r\\n        <button type=\\"button\\" class=\\"btn btn-primary btn-lg\\">\\r\\n            \\u041f\\u0440\\u0430\\u0439\\u0441\\r\\n        <\\/button>\\r\\n    <\\/a>\\r\\n<\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 07:47:18","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:05","modified_user_id":"386","modified_time":"2016-07-18 07:50:28","hits":"0","language":"*","version":"1"}', 0),
(44, 21, 1, '', '2016-07-18 07:56:59', 386, 1729, 'fd9943c87d3f3320230464ed7d290be23a99e585', '{"id":21,"asset_id":85,"title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"","fulltext":"","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 07:56:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 21, 1, '', '2016-07-18 08:05:39', 386, 1870, '0543151648a81cfcdb1085c15aa98f13d9db43ea', '{"id":"21","asset_id":"85","title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"ghjcnj ntcn\\r\\n","fulltext":"\\r\\n\\u0435\\u0449\\u0435 \\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0442\\u0435\\u043a\\u0441\\u0442","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:05:39","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:05:07","publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `kqgk0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(46, 21, 1, '', '2016-07-18 08:26:38', 386, 2142, '156f09625db995a39c341653a5911d3b2355d700', '{"id":"21","asset_id":"85","title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0441 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438:\\r\\n<ul>\\r\\n<li>\\u041c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442;<\\/li>\\r\\n<li>\\u041f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d (\\u041f\\u041f);<\\/li>\\r\\n<\\/ul>\\r\\n","fulltext":"","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:26:38","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:06:00","publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 21, 1, '', '2016-07-18 08:27:36', 386, 2158, '59614fec1a55931491171388f9381510a8831c05', '{"id":"21","asset_id":"85","title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0441 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438:\\r\\n<ul>\\r\\n<li>\\u041c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442;<\\/li>\\r\\n<li>\\u041f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d (\\u041f\\u041f);<\\/li>\\r\\n<\\/ul>\\r\\n","fulltext":"\\r\\n<p><\\/p>\\r\\n","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:27:36","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:26:47","publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(48, 21, 1, '', '2016-07-18 08:28:14', 386, 2124, 'bf9cd14235824e90a547e340cb341e367dd54123', '{"id":"21","asset_id":"85","title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0441 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438:\\r\\n- \\u041c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442;\\r\\n- \\u041f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d (\\u041f\\u041f);\\r\\n","fulltext":"\\r\\n<p><\\/p>\\r\\n","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:28:14","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:27:36","publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 21, 1, '', '2016-07-18 08:28:32', 386, 2136, '7fc4b8c71fbdd3fa6daa022bc75fe9c1e4c5f8f3', '{"id":"21","asset_id":"85","title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0441 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438:\\r\\n- \\u041c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442;<br\\/>\\r\\n- \\u041f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d (\\u041f\\u041f);<br\\/>\\r\\n","fulltext":"\\r\\n<p><\\/p>\\r\\n","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:28:32","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:28:14","publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(50, 21, 1, '', '2016-07-18 08:29:52', 386, 2142, '43eed6c5fd7fd724010c9c477b0dea88ac6692f1', '{"id":"21","asset_id":"85","title":"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 DEEPIPE?","alias":"pochemu-deepipe","introtext":"\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0441 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438:<br\\/>\\r\\n- \\u041c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043b\\u0430\\u0441\\u0442;<br\\/>\\r\\n- \\u041f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d (\\u041f\\u041f);<br\\/>\\r\\n","fulltext":"\\r\\n<p><\\/p>\\r\\n","state":1,"catid":"9","created":"2016-07-18 07:56:59","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:29:52","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:28:32","publish_up":"2016-07-18 07:56:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 9, 1, '', '2016-07-18 08:30:49', 386, 2133, '644bd6926b5bb9ee23a0e13bcc45e48edea47862', '{"id":"9","asset_id":"68","title":"SCW \\u0441\\u0432\\u0430\\u0440\\u043a\\u0430","alias":"scw-svarka","introtext":"\\u041d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e \\u0438 \\u0443\\u0434\\u043e\\u0431\\u043d\\u043e<br\\/><br\\/>\\r\\n\\u0412\\u0441\\u0435 \\u043f\\u0430\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0441\\u0442\\u044b\\u043c \\u043f\\u0430\\u044f\\u043b\\u044c\\u043d\\u0438\\u043a\\u043e\\u043c \\u0434\\u043b\\u044f \\u043f\\u043e\\u043b\\u0438\\u043f\\u0440\\u043e\\u043f\\u0438\\u043b\\u0435\\u043d (\\u041f\\u041f)\\r\\n","fulltext":"\\r\\n<p><\\/p>","state":1,"catid":"9","created":"2016-07-07 22:20:46","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:30:49","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:30:21","publish_up":"2016-07-07 22:20:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(52, 8, 1, '', '2016-07-18 08:32:46', 386, 1982, 'c8bcf24e6bcb68b1a0a298618a85ec2dc2918a33', '{"id":"8","asset_id":"67","title":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0444\\u0438\\u0442\\u0438\\u043d\\u0433\\u0438 DEEPIPE Elements","alias":"modulnye-fitingi-deepipe-elements","introtext":"23=240<br\\/>\\r\\n\\u0420\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u0441\\u0442\\u0430\\u043b\\u043e \\u043f\\u0440\\u043e\\u0449\\u0435\\r\\n","fulltext":"\\r\\n<p><\\/p>","state":1,"catid":"9","created":"2016-07-07 22:20:24","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:32:46","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:32:24","publish_up":"2016-07-07 22:20:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 7, 1, '', '2016-07-18 08:35:17', 386, 2280, '86a8c9cbe743f922f8d7898d11f43c69353f9a69', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><\\/p>","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 08:35:17","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 08:34:44","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 7, 1, '', '2016-07-18 09:06:43', 386, 3962, 'e91a5d5ae083674393aa9e69959c995b0fa03e20', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><b>DEEPIPE Composite<\\/b> \\u2013 \\u044d\\u0442\\u043e \\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0441 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c\\u044e \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e. \\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA (Plasma surface activation) \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u044e\\u0449\\u0435\\u0439 \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043b\\u043e\\u044f \\u0442\\u0440\\u0443\\u0431\\u044b \\u0430\\u043d\\u0438\\u0437\\u043e\\u0442\\u0440\\u043e\\u043f\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043b\\u044c\\u0435\\u0444 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0441\\u0446\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0441\\u043b\\u043e\\u0435\\u0432 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0438 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438.<\\/p> ","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 09:06:43","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 09:06:14","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 7, 1, '', '2016-07-18 09:32:46', 386, 4336, '31d915d16a68a44d781018807618fbab27901e4e', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><b>DEEPIPE Composite<\\/b> \\u2013 \\u044d\\u0442\\u043e \\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0441 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c\\u044e \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e. \\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA (Plasma surface activation) \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u044e\\u0449\\u0435\\u0439 \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043b\\u043e\\u044f \\u0442\\u0440\\u0443\\u0431\\u044b \\u0430\\u043d\\u0438\\u0437\\u043e\\u0442\\u0440\\u043e\\u043f\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043b\\u044c\\u0435\\u0444 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0441\\u0446\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0441\\u043b\\u043e\\u0435\\u0432 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0438 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438.<\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn btn-danger\\" data-toggle=\\"collapse\\" data-target=\\"#demo\\">\\r\\n  simple collapsible\\r\\n<\\/button>\\r\\n\\r\\n<div id=\\"demo\\" class=\\"collapse in\\">\\u0444\\u0446\\u043a\\u043f\\u0438\\u043c\\u0444\\u0443\\u043a\\u0438\\u043f\\u0440\\u044b\\u0444\\u0443\\u043a\\u0438\\u0440\\u0444\\u0443\\u043a\\u0430\\u0438\\u0440\\u0444\\u0443\\u0430\\u0438\\u0444<\\/div>\\r\\n","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 09:32:46","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 09:32:29","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(56, 7, 1, '', '2016-07-18 10:30:07', 386, 5469, '729e77172c335267f7872c2bc18608c2011d028e', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><b>DEEPIPE Composite<\\/b> \\u2013 \\u044d\\u0442\\u043e \\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0441 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c\\u044e \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e. \\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA (Plasma surface activation) \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u044e\\u0449\\u0435\\u0439 \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043b\\u043e\\u044f \\u0442\\u0440\\u0443\\u0431\\u044b \\u0430\\u043d\\u0438\\u0437\\u043e\\u0442\\u0440\\u043e\\u043f\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043b\\u044c\\u0435\\u0444 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0441\\u0446\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0441\\u043b\\u043e\\u0435\\u0432 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0438 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438.<\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn\\" data-toggle=\\"collapse\\" data-target=\\"#demo\\">\\r\\n  \\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f\\r\\n<\\/button>\\r\\n\\r\\n<div id=\\"demo\\" class=\\"collapse in\\">\\r\\n    <ul>\\r\\n        <li>\\u041f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438<\\/li>\\r\\n        <li>\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0443\\u0431 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c<\\/li>\\r\\n        <li>\\u043f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u041f\\u0440\\u0442\\u043e\\u043a\\u043e\\u043b \\u0438\\u0441\\u043f\\u044b\\u0442\\u0430\\u043d\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c<\\/li>\\r\\n    <\\/ul>\\r\\n<\\/div>","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 10:30:07","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 09:32:46","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(57, 7, 1, '', '2016-07-18 10:36:33', 386, 5470, '0bd24c4c5be1f411e4227fca8321aba576e33a53', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><b>DEEPIPE Composite<\\/b> \\u2013 \\u044d\\u0442\\u043e \\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0441 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c\\u044e \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e. \\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA (Plasma surface activation) \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u044e\\u0449\\u0435\\u0439 \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043b\\u043e\\u044f \\u0442\\u0440\\u0443\\u0431\\u044b \\u0430\\u043d\\u0438\\u0437\\u043e\\u0442\\u0440\\u043e\\u043f\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043b\\u044c\\u0435\\u0444 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0441\\u0446\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0441\\u043b\\u043e\\u0435\\u0432 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0438 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438.<\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn\\" data-toggle=\\"collapse\\" data-target=\\"#demo\\">\\r\\n  \\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f\\r\\n<\\/button>\\r\\n\\r\\n<div id=\\"demo\\" class=\\"collapse out\\">\\r\\n    <ul>\\r\\n        <li>\\u041f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438<\\/li>\\r\\n        <li>\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0443\\u0431 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c<\\/li>\\r\\n        <li>\\u043f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u041f\\u0440\\u0442\\u043e\\u043a\\u043e\\u043b \\u0438\\u0441\\u043f\\u044b\\u0442\\u0430\\u043d\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c<\\/li>\\r\\n    <\\/ul>\\r\\n<\\/div>","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 10:36:33","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 10:30:07","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 7, 1, '', '2016-07-18 10:41:46', 386, 5466, 'a12fbbd4da695d7509a1355ace9c0637abe8eeaf', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><b>DEEPIPE Composite<\\/b> \\u2013 \\u044d\\u0442\\u043e \\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0441 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c\\u044e \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e. \\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA (Plasma surface activation) \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u044e\\u0449\\u0435\\u0439 \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043b\\u043e\\u044f \\u0442\\u0440\\u0443\\u0431\\u044b \\u0430\\u043d\\u0438\\u0437\\u043e\\u0442\\u0440\\u043e\\u043f\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043b\\u044c\\u0435\\u0444 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0441\\u0446\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0441\\u043b\\u043e\\u0435\\u0432 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0438 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438.<\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn\\" data-toggle=\\"collapse\\" data-target=\\"#demo\\">\\r\\n  \\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f\\r\\n<\\/button>\\r\\n\\r\\n<div id=\\"demo\\" class=\\"collapse\\">\\r\\n    <ul>\\r\\n        <li>\\u041f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438<\\/li>\\r\\n        <li>\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0443\\u0431 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c<\\/li>\\r\\n        <li>\\u043f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u041f\\u0440\\u0442\\u043e\\u043a\\u043e\\u043b \\u0438\\u0441\\u043f\\u044b\\u0442\\u0430\\u043d\\u0438\\u0439 \\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c<\\/li>\\r\\n    <\\/ul>\\r\\n<\\/div>","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 10:41:46","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 10:36:33","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `kqgk0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(59, 7, 1, '', '2016-07-18 11:01:49', 386, 5907, 'cc40c3d36e3223cfc257e97cf591aa5271e227d3', '{"id":"7","asset_id":"66","title":"\\u041a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b  DEEPIPE Composite","alias":"kompozitnye-metallopolimernye-truby-deepipe-composite","introtext":"\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438\\r\\n<br\\/><br\\/>\\r\\n\\u041b\\u0443\\u0447\\u0448\\u0435\\u0435 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\r\\n","fulltext":"\\r\\n<p><b>DEEPIPE Composite<\\/b> \\u2013 \\u044d\\u0442\\u043e \\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0442\\u0440\\u0443\\u0431\\u044b \\u0441 \\u043f\\u043e\\u0432\\u044b\\u0448\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0439\\u043a\\u043e\\u0441\\u0442\\u044c\\u044e \\u043a \\u0440\\u0430\\u0441\\u0441\\u043b\\u043e\\u0435\\u043d\\u0438\\u044e. \\u0418\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u044b \\u043f\\u043e \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA (Plasma surface activation) \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043d\\u0430 \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u044e\\u0449\\u0435\\u0439 \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043b\\u043e\\u044f \\u0442\\u0440\\u0443\\u0431\\u044b \\u0430\\u043d\\u0438\\u0437\\u043e\\u0442\\u0440\\u043e\\u043f\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043b\\u044c\\u0435\\u0444 \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u0441\\u0446\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0441\\u043b\\u043e\\u0435\\u0432 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u0438 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0434\\u043b\\u044f \\u0441\\u0432\\u0430\\u0440\\u043a\\u0438.<\\/p>\\r\\n\\r\\n<button type=\\"button\\" class=\\"btn\\" data-toggle=\\"collapse\\" data-target=\\"#demo\\">\\r\\n  \\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f\\r\\n<\\/button>\\r\\n\\r\\n<div id=\\"demo\\" class=\\"collapse out\\">\\r\\n    <ul>\\r\\n        <li>\\u041f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA<\\/li>\\r\\n        <li>\\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 - <a href=\\"\\/images\\/documents\\/compos-metpol-truba.pdf\\">\\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c<\\/a><\\/li>\\r\\n        <li>\\u0421\\u0440\\u0430\\u0432\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0443\\u0431 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c - <a href=\\"\\/images\\/documents\\/tech-char-deepipe.pdf\\">\\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c<\\/a><\\/li>\\r\\n        <li>\\u041f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 PSA - <a href=\\"\\/images\\/documents\\/tech-char-deepipe.pdf\\">\\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442<\\/a><\\/li>\\r\\n        <li>\\u041f\\u0440\\u0442\\u043e\\u043a\\u043e\\u043b \\u0438\\u0441\\u043f\\u044b\\u0442\\u0430\\u043d\\u0438\\u0439 - <a href=\\"\\/images\\/documents\\/protocol-ispit.pdf\\">\\u0441\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c<\\/a><\\/li>\\r\\n    <\\/ul>\\r\\n<\\/div>","state":1,"catid":"9","created":"2016-07-07 22:19:41","created_by":"386","created_by_alias":"","modified":"2016-07-18 11:01:49","modified_by":"386","checked_out":"386","checked_out_time":"2016-07-18 10:41:46","publish_up":"2016-07-07 22:19:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"17","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(60, 11, 5, '', '2016-07-18 11:22:16', 386, 2553, '6ce8eae1282a709df51dcb132c9cea2e176de5ee', '{"id":"11","asset_id":"64","parent_id":"1","lft":"17","rgt":"18","level":"1","path":"elektrotekhnicheskie-izdeliya","extension":"com_content","title":"\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f","alias":"elektrotekhnicheskie-izdeliya","note":"","description":"<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f:<\\/p>\\r\\n    <ul>\\r\\n        <li>\\u0420\\u0435\\u0430\\u043b\\u0438\\u0437\\u0443\\u0435\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043d\\u0443\\u0436\\u0434 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439;<\\/li>\\r\\n        <li>\\r\\n            \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0438 \\u0438\\u0437\\u0433\\u043e\\u0442\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0435 \\u0438 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f \\u043f\\u043e \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0447\\u0438\\u043a\\u0430;<br\\/>\\r\\n            <img src=\\"\\/images\\/imgmatherials\\/elektrotekhnicheskie-izdeliya\\/cat-img-1.png\\" \\/>\\r\\n        <\\/li>\\r\\n        <li>\\r\\n            \\u042f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u043e\\u043c \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f Vimpex (\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432\\u043e\\u043f\\u043e\\u0436\\u0430\\u0440\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u0438 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430).<br\\/>\\r\\n            <img src=\\"\\/images\\/imgmatherials\\/elektrotekhnicheskie-izdeliya\\/cat-img-2.png\\" \\/>\\r\\n        <\\/li>\\r\\n    <\\/ul>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 11:21:54","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:50","modified_user_id":"386","modified_time":"2016-07-18 11:22:16","hits":"0","language":"*","version":"1"}', 0),
(61, 11, 5, '', '2016-07-18 11:26:52', 386, 2581, 'e457060f9c75ed519781ff76912c20002c74a2da', '{"id":"11","asset_id":"64","parent_id":"1","lft":"17","rgt":"18","level":"1","path":"elektrotekhnicheskie-izdeliya","extension":"com_content","title":"\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f","alias":"elektrotekhnicheskie-izdeliya","note":"","description":"<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f:<\\/p>\\r\\n    <ul>\\r\\n        <li>\\u0420\\u0435\\u0430\\u043b\\u0438\\u0437\\u0443\\u0435\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043d\\u0443\\u0436\\u0434 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439;<\\/li>\\r\\n        <li>\\r\\n            \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0438 \\u0438\\u0437\\u0433\\u043e\\u0442\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0435 \\u0438 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f \\u043f\\u043e \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0447\\u0438\\u043a\\u0430;<br\\/>\\r\\n            <img width=\\"50%\\" src=\\"\\/images\\/imgmatherials\\/elektrotekhnicheskie-izdeliya\\/cat-img-1.png\\" \\/>\\r\\n        <\\/li>\\r\\n        <li>\\r\\n            \\u042f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u043e\\u043c \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f Vimpex (\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432\\u043e\\u043f\\u043e\\u0436\\u0430\\u0440\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u0438 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430).<br\\/>\\r\\n            <img width=\\"50%\\" src=\\"\\/images\\/imgmatherials\\/elektrotekhnicheskie-izdeliya\\/cat-img-2.png\\" \\/>\\r\\n        <\\/li>\\r\\n    <\\/ul>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 11:26:33","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:50","modified_user_id":"386","modified_time":"2016-07-18 11:26:52","hits":"0","language":"*","version":"1"}', 0),
(62, 11, 5, '', '2016-07-18 11:28:07', 386, 2581, '8adcdcf946359e75031f88076a4f1bc8148e7857', '{"id":"11","asset_id":"64","parent_id":"1","lft":"17","rgt":"18","level":"1","path":"elektrotekhnicheskie-izdeliya","extension":"com_content","title":"\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f","alias":"elektrotekhnicheskie-izdeliya","note":"","description":"<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f:<\\/p>\\r\\n    <ul>\\r\\n        <li>\\u0420\\u0435\\u0430\\u043b\\u0438\\u0437\\u0443\\u0435\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043d\\u0443\\u0436\\u0434 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439;<\\/li>\\r\\n        <li>\\r\\n            \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0438 \\u0438\\u0437\\u0433\\u043e\\u0442\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0435 \\u0438 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f \\u043f\\u043e \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0447\\u0438\\u043a\\u0430;<br\\/>\\r\\n            <img width=\\"30%\\" src=\\"\\/images\\/imgmatherials\\/elektrotekhnicheskie-izdeliya\\/cat-img-1.png\\" \\/>\\r\\n        <\\/li>\\r\\n        <li>\\r\\n            \\u042f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u043e\\u043c \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f Vimpex (\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432\\u043e\\u043f\\u043e\\u0436\\u0430\\u0440\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u0438 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0430).<br\\/>\\r\\n            <img width=\\"30%\\" src=\\"\\/images\\/imgmatherials\\/elektrotekhnicheskie-izdeliya\\/cat-img-2.png\\" \\/>\\r\\n        <\\/li>\\r\\n    <\\/ul>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 11:26:52","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:50","modified_user_id":"386","modified_time":"2016-07-18 11:28:07","hits":"0","language":"*","version":"1"}', 0),
(63, 12, 5, '', '2016-07-18 11:37:51', 386, 3159, '14d58aa6d0375d1f0d14b6bbc82d37060051fed9', '{"id":"12","asset_id":"65","parent_id":"1","lft":"19","rgt":"20","level":"1","path":"melkorazmernaya-narubka-listovogo-metalla","extension":"com_content","title":"\\u041c\\u0435\\u043b\\u043a\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u043d\\u0430\\u044f \\u043d\\u0430\\u0440\\u0443\\u0431\\u043a\\u0430 \\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430","alias":"melkorazmernaya-narubka-listovogo-metalla","note":"","description":"<p>\\u041e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u041e\\u041e\\u041e \\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0432 \\u0430\\u0432\\u0442\\u043e\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u043c \\u0440\\u0435\\u0436\\u0438\\u043c\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u043d\\u0430\\u0440\\u0443\\u0431\\u043a\\u0443 \\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u0430 \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0447\\u0438\\u043a\\u0430.<\\/p> \\r\\n\\r\\n<p>\\u0414\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043d\\u0430\\u0440\\u0443\\u0431\\u043a\\u0438 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u0439 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u0438\\u0431\\u043e\\u043b\\u0435\\u0435 \\u0434\\u0435\\u0448\\u0451\\u0432\\u044b\\u043c \\u0438 \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u043c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c \\u0432 \\u0440\\u0430\\u0441\\u0447\\u0451\\u0442\\u0435 \\u0437\\u0430\\u0442\\u0440\\u0430\\u0442 \\u043d\\u0430 \\u0435\\u0434\\u0438\\u043d\\u0438\\u0446\\u0443 \\u0432\\u044b\\u043f\\u0443\\u0441\\u043a\\u0430\\u0435\\u043c\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438, \\u0430 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0441 \\u0442\\u043e\\u0447\\u043a\\u0438 \\u0437\\u0440\\u0435\\u043d\\u0438\\u044f \\u043c\\u0438\\u043d\\u0438\\u043c\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u043e\\u0442\\u0445\\u043e\\u0434\\u043e\\u0432.<\\/p>\\r\\n\\r\\n<p>\\u0420\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u043a\\u0430\\u043a \\u0441\\u043e \\u0441\\u0432\\u043e\\u0438\\u043c, \\u0442\\u0430\\u043a \\u0438 \\u0441 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u043c \\u0417\\u0430\\u043a\\u0430\\u0437\\u0447\\u0438\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<div style=\\"text-align: center;\\">\\r\\n    <img width=\\"30%\\" src=\\"\\/images\\/imgmatherials\\/melkorazmernaya-narubka-listovogo-metalla\\/cat-img-1.png\\" \\/> \\r\\n    <img width=\\"30%\\" src=\\"\\/images\\/imgmatherials\\/melkorazmernaya-narubka-listovogo-metalla\\/cat-img-2.png\\" \\/> \\r\\n    <img width=\\"30%\\" src=\\"\\/images\\/imgmatherials\\/melkorazmernaya-narubka-listovogo-metalla\\/cat-img-3.png\\" \\/>\\r\\n<\\/div>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 11:32:50","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:15:16","modified_user_id":"386","modified_time":"2016-07-18 11:37:51","hits":"0","language":"*","version":"1"}', 0),
(64, 10, 5, '', '2016-07-18 12:23:13', 386, 8588, '510c902af2a68224d4e32f90bb9c2e362faddc57', '{"id":"10","asset_id":"63","parent_id":"1","lft":"15","rgt":"16","level":"1","path":"tsvetnoj-metalloprokat-i-metalloobrabotka","extension":"com_content","title":"\\u0426\\u0432\\u0435\\u0442\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","alias":"tsvetnoj-metalloprokat-i-metalloobrabotka","note":"","description":"<p>\\u041e\\u041e\\u041e \\u00ab\\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f\\u00bb \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440\\u043e\\u043c \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u043b\\u043e\\u0433\\u043e\\u043c \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0442\\u0435\\u0445 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438, \\u0441 \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043b\\u043e\\u0433\\u0438\\u0441\\u0442\\u0438\\u043a\\u043e\\u0439 \\u0438 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438. \\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043a\\u0430\\u043a \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0442\\u0430\\u043a \\u0438 \\u0441 \\u043e\\u0442\\u0433\\u0440\\u0443\\u0437\\u043a\\u043e\\u0439 \\u0441 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043b\\u0430\\u0434\\u043e\\u0432.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u0438 \\u043e\\u043f\\u0442\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\\u0445 (\\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u0442\\u043e\\u043d\\u043d).<\\/p>\\r\\n\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u0442\\u0438\\u043f\\u044b \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 - \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445.<\\/p>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u044d\\u043a\\u0441\\u0442\\u0440\\u0443\\u0434\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044f.<\\/p>\\r\\n\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442,  \\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u0438\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438.<\\/h2>\\r\\n\\r\\n<p>\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0435 \\u0441\\u043f\\u0440\\u0430\\u0432\\u0430, \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u043c\\u0435\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043d\\u0430 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u043c \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435. \\u041f\\u043e \\u0442\\u043e\\u0447\\u043d\\u044b\\u043c \\u0441\\u0440\\u043e\\u043a\\u0430\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438.<\\/p>\\r\\n<img class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-1.jpg\\" \\/>\\r\\n<p>\\u041d\\u0430 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u0433\\u043e \\u0441\\u043f\\u0435\\u043a\\u0442\\u0440\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0432\\u0438\\u0438 \\u0441 EN 573-3, EN515, EN 485-1,2,4.<\\/p>\\r\\n\\r\\n<p>\\u0414\\u0435\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b 1, 3, 5, 8 \\u0441\\u0435\\u0440\\u0438\\u0439;  (1050, 1100, 3003, 3103, 3105, 3005, 5005, 5754, 5251, 5052, 5183, 8011 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435), \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u0413\\u041e\\u0421\\u0422 \\u0410\\u04140, \\u0410\\u0414, \\u0410\\u041c\\u0446, \\u041c\\u041c, \\u0410\\u041c\\u04331-A\\u041c\\u04336.<\\/p>\\r\\n\\r\\n<p>\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u2014 \\u0440\\u0443\\u043b\\u043e\\u043d, \\u043b\\u0438\\u0441\\u0442; \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u2014 \\u043e\\u0442 0.20 \\u0434\\u043e 12.00 \\u043c\\u043c, \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 - \\u043e\\u0442 20 \\u0434\\u043e 2600 \\u043c\\u043c.<\\/p>\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/h2>\\r\\n\\r\\n<p>\\u0412 \\u0434\\u0430\\u043d\\u043d\\u0443\\u044e \\u0433\\u0440\\u0443\\u043f\\u043f\\u0443 \\u0432\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b \\u0432 \\u0442\\u0438\\u043f\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430\\u0445,  \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043d\\u0435 \\u0442\\u0430\\u043a \\u0440\\u0430\\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\\u043d\\u044b, \\u043d\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0441\\u0443\\u0434\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0437\\u043a\\u0435 \\u0438 \\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u044b\\u043f\\u0443\\u0447\\u0438\\u0445 \\u0433\\u0440\\u0443\\u0437\\u043e\\u0432, \\u0433\\u043e\\u0440\\u044e\\u0447\\u0435 \\u0441\\u043c\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435. \\u0422\\u043e\\u0432\\u0430\\u0440\\u044b \\u0434\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 (\\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u0434\\u043e 2.6 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0434\\u043e 12 \\u043c\\u043c, \\u0444\\u0438\\u0437\\u0438\\u043a\\u043e-\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438).<\\/p>\\r\\n\\r\\n<img class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-2.jpg\\" \\/>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 12:23:00","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:30","modified_user_id":"386","modified_time":"2016-07-18 12:23:13","hits":"0","language":"*","version":"1"}', 0),
(65, 10, 5, '', '2016-07-18 12:26:05', 386, 8616, 'a206b5c81b0d075d852446dbe9b9ef37abcfa94e', '{"id":"10","asset_id":"63","parent_id":"1","lft":"15","rgt":"16","level":"1","path":"tsvetnoj-metalloprokat-i-metalloobrabotka","extension":"com_content","title":"\\u0426\\u0432\\u0435\\u0442\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","alias":"tsvetnoj-metalloprokat-i-metalloobrabotka","note":"","description":"<p>\\u041e\\u041e\\u041e \\u00ab\\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f\\u00bb \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440\\u043e\\u043c \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u043b\\u043e\\u0433\\u043e\\u043c \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0442\\u0435\\u0445 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438, \\u0441 \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043b\\u043e\\u0433\\u0438\\u0441\\u0442\\u0438\\u043a\\u043e\\u0439 \\u0438 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438. \\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043a\\u0430\\u043a \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0442\\u0430\\u043a \\u0438 \\u0441 \\u043e\\u0442\\u0433\\u0440\\u0443\\u0437\\u043a\\u043e\\u0439 \\u0441 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043b\\u0430\\u0434\\u043e\\u0432.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u0438 \\u043e\\u043f\\u0442\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\\u0445 (\\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u0442\\u043e\\u043d\\u043d).<\\/p>\\r\\n\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u0442\\u0438\\u043f\\u044b \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 - \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445.<\\/p>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u044d\\u043a\\u0441\\u0442\\u0440\\u0443\\u0434\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044f.<\\/p>\\r\\n\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442,  \\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u0438\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438.<\\/h2>\\r\\n\\r\\n<p>\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0435 \\u0441\\u043f\\u0440\\u0430\\u0432\\u0430, \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u043c\\u0435\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043d\\u0430 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u043c \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435. \\u041f\\u043e \\u0442\\u043e\\u0447\\u043d\\u044b\\u043c \\u0441\\u0440\\u043e\\u043a\\u0430\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438.<\\/p>\\r\\n<img width=\\"30%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-1.jpg\\" \\/>\\r\\n<p>\\u041d\\u0430 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u0433\\u043e \\u0441\\u043f\\u0435\\u043a\\u0442\\u0440\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0432\\u0438\\u0438 \\u0441 EN 573-3, EN515, EN 485-1,2,4.<\\/p>\\r\\n\\r\\n<p>\\u0414\\u0435\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b 1, 3, 5, 8 \\u0441\\u0435\\u0440\\u0438\\u0439;  (1050, 1100, 3003, 3103, 3105, 3005, 5005, 5754, 5251, 5052, 5183, 8011 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435), \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u0413\\u041e\\u0421\\u0422 \\u0410\\u04140, \\u0410\\u0414, \\u0410\\u041c\\u0446, \\u041c\\u041c, \\u0410\\u041c\\u04331-A\\u041c\\u04336.<\\/p>\\r\\n\\r\\n<p>\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u2014 \\u0440\\u0443\\u043b\\u043e\\u043d, \\u043b\\u0438\\u0441\\u0442; \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u2014 \\u043e\\u0442 0.20 \\u0434\\u043e 12.00 \\u043c\\u043c, \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 - \\u043e\\u0442 20 \\u0434\\u043e 2600 \\u043c\\u043c.<\\/p>\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/h2>\\r\\n\\r\\n<img width=\\"30%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-2.jpg\\" \\/>\\r\\n\\r\\n<p>\\u0412 \\u0434\\u0430\\u043d\\u043d\\u0443\\u044e \\u0433\\u0440\\u0443\\u043f\\u043f\\u0443 \\u0432\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b \\u0432 \\u0442\\u0438\\u043f\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430\\u0445,  \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043d\\u0435 \\u0442\\u0430\\u043a \\u0440\\u0430\\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\\u043d\\u044b, \\u043d\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0441\\u0443\\u0434\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0437\\u043a\\u0435 \\u0438 \\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u044b\\u043f\\u0443\\u0447\\u0438\\u0445 \\u0433\\u0440\\u0443\\u0437\\u043e\\u0432, \\u0433\\u043e\\u0440\\u044e\\u0447\\u0435 \\u0441\\u043c\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435. \\u0422\\u043e\\u0432\\u0430\\u0440\\u044b \\u0434\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 (\\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u0434\\u043e 2.6 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0434\\u043e 12 \\u043c\\u043c, \\u0444\\u0438\\u0437\\u0438\\u043a\\u043e-\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438).<\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 12:25:53","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:30","modified_user_id":"386","modified_time":"2016-07-18 12:26:05","hits":"0","language":"*","version":"1"}', 0),
(66, 10, 5, '', '2016-07-18 12:27:13', 386, 8624, 'dcd7a01d22653036bf24eb0602ee6f4369b67a7c', '{"id":"10","asset_id":"63","parent_id":"1","lft":"15","rgt":"16","level":"1","path":"tsvetnoj-metalloprokat-i-metalloobrabotka","extension":"com_content","title":"\\u0426\\u0432\\u0435\\u0442\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","alias":"tsvetnoj-metalloprokat-i-metalloobrabotka","note":"","description":"<p>\\u041e\\u041e\\u041e \\u00ab\\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f\\u00bb \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440\\u043e\\u043c \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u043b\\u043e\\u0433\\u043e\\u043c \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0442\\u0435\\u0445 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438, \\u0441 \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043b\\u043e\\u0433\\u0438\\u0441\\u0442\\u0438\\u043a\\u043e\\u0439 \\u0438 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438. \\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043a\\u0430\\u043a \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0442\\u0430\\u043a \\u0438 \\u0441 \\u043e\\u0442\\u0433\\u0440\\u0443\\u0437\\u043a\\u043e\\u0439 \\u0441 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043b\\u0430\\u0434\\u043e\\u0432.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u0438 \\u043e\\u043f\\u0442\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\\u0445 (\\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u0442\\u043e\\u043d\\u043d).<\\/p>\\r\\n\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u0442\\u0438\\u043f\\u044b \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 - \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445.<\\/p>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u044d\\u043a\\u0441\\u0442\\u0440\\u0443\\u0434\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044f.<\\/p>\\r\\n\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442,  \\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u0438\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438.<\\/h2>\\r\\n\\r\\n<img width=\\"40%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-1.jpg\\" \\/>\\r\\n\\r\\n<p>\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0435 \\u0441\\u043f\\u0440\\u0430\\u0432\\u0430, \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u043c\\u0435\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043d\\u0430 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u043c \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435. \\u041f\\u043e \\u0442\\u043e\\u0447\\u043d\\u044b\\u043c \\u0441\\u0440\\u043e\\u043a\\u0430\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u041d\\u0430 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u0433\\u043e \\u0441\\u043f\\u0435\\u043a\\u0442\\u0440\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0432\\u0438\\u0438 \\u0441 EN 573-3, EN515, EN 485-1,2,4.<\\/p>\\r\\n\\r\\n<p>\\u0414\\u0435\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b 1, 3, 5, 8 \\u0441\\u0435\\u0440\\u0438\\u0439;  (1050, 1100, 3003, 3103, 3105, 3005, 5005, 5754, 5251, 5052, 5183, 8011 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435), \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u0413\\u041e\\u0421\\u0422 \\u0410\\u04140, \\u0410\\u0414, \\u0410\\u041c\\u0446, \\u041c\\u041c, \\u0410\\u041c\\u04331-A\\u041c\\u04336.<\\/p>\\r\\n\\r\\n<p>\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u2014 \\u0440\\u0443\\u043b\\u043e\\u043d, \\u043b\\u0438\\u0441\\u0442; \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u2014 \\u043e\\u0442 0.20 \\u0434\\u043e 12.00 \\u043c\\u043c, \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 - \\u043e\\u0442 20 \\u0434\\u043e 2600 \\u043c\\u043c.<\\/p>\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/h2>\\r\\n\\r\\n<img width=\\"40%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-2.jpg\\" \\/>\\r\\n\\r\\n<p>\\u0412 \\u0434\\u0430\\u043d\\u043d\\u0443\\u044e \\u0433\\u0440\\u0443\\u043f\\u043f\\u0443 \\u0432\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b \\u0432 \\u0442\\u0438\\u043f\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430\\u0445,  \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043d\\u0435 \\u0442\\u0430\\u043a \\u0440\\u0430\\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\\u043d\\u044b, \\u043d\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0441\\u0443\\u0434\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0437\\u043a\\u0435 \\u0438 \\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u044b\\u043f\\u0443\\u0447\\u0438\\u0445 \\u0433\\u0440\\u0443\\u0437\\u043e\\u0432, \\u0433\\u043e\\u0440\\u044e\\u0447\\u0435 \\u0441\\u043c\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435. \\u0422\\u043e\\u0432\\u0430\\u0440\\u044b \\u0434\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 (\\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u0434\\u043e 2.6 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0434\\u043e 12 \\u043c\\u043c, \\u0444\\u0438\\u0437\\u0438\\u043a\\u043e-\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438).<\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 12:26:05","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:30","modified_user_id":"386","modified_time":"2016-07-18 12:27:13","hits":"0","language":"*","version":"1"}', 0);
INSERT INTO `kqgk0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(67, 10, 5, '', '2016-07-18 12:27:45', 386, 8624, '3adc6309345d37fd855adef56e3dfaebba554cf7', '{"id":"10","asset_id":"63","parent_id":"1","lft":"15","rgt":"16","level":"1","path":"tsvetnoj-metalloprokat-i-metalloobrabotka","extension":"com_content","title":"\\u0426\\u0432\\u0435\\u0442\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","alias":"tsvetnoj-metalloprokat-i-metalloobrabotka","note":"","description":"<p>\\u041e\\u041e\\u041e \\u00ab\\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f\\u00bb \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440\\u043e\\u043c \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u043b\\u043e\\u0433\\u043e\\u043c \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0442\\u0435\\u0445 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438, \\u0441 \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043b\\u043e\\u0433\\u0438\\u0441\\u0442\\u0438\\u043a\\u043e\\u0439 \\u0438 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438. \\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043a\\u0430\\u043a \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0442\\u0430\\u043a \\u0438 \\u0441 \\u043e\\u0442\\u0433\\u0440\\u0443\\u0437\\u043a\\u043e\\u0439 \\u0441 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043b\\u0430\\u0434\\u043e\\u0432.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u0438 \\u043e\\u043f\\u0442\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\\u0445 (\\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u0442\\u043e\\u043d\\u043d).<\\/p>\\r\\n\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u0442\\u0438\\u043f\\u044b \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 - \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445.<\\/p>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u044d\\u043a\\u0441\\u0442\\u0440\\u0443\\u0434\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044f.<\\/p>\\r\\n\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442,  \\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u0438\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438.<\\/h2>\\r\\n\\r\\n<img width=\\"50%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-1.jpg\\" \\/>\\r\\n\\r\\n<p>\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0435 \\u0441\\u043f\\u0440\\u0430\\u0432\\u0430, \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u043c\\u0435\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043d\\u0430 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u043c \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435. \\u041f\\u043e \\u0442\\u043e\\u0447\\u043d\\u044b\\u043c \\u0441\\u0440\\u043e\\u043a\\u0430\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u041d\\u0430 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u0433\\u043e \\u0441\\u043f\\u0435\\u043a\\u0442\\u0440\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0432\\u0438\\u0438 \\u0441 EN 573-3, EN515, EN 485-1,2,4.<\\/p>\\r\\n\\r\\n<p>\\u0414\\u0435\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b 1, 3, 5, 8 \\u0441\\u0435\\u0440\\u0438\\u0439;  (1050, 1100, 3003, 3103, 3105, 3005, 5005, 5754, 5251, 5052, 5183, 8011 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435), \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u0413\\u041e\\u0421\\u0422 \\u0410\\u04140, \\u0410\\u0414, \\u0410\\u041c\\u0446, \\u041c\\u041c, \\u0410\\u041c\\u04331-A\\u041c\\u04336.<\\/p>\\r\\n\\r\\n<p>\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u2014 \\u0440\\u0443\\u043b\\u043e\\u043d, \\u043b\\u0438\\u0441\\u0442; \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u2014 \\u043e\\u0442 0.20 \\u0434\\u043e 12.00 \\u043c\\u043c, \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 - \\u043e\\u0442 20 \\u0434\\u043e 2600 \\u043c\\u043c.<\\/p>\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/h2>\\r\\n\\r\\n<img width=\\"50%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-2.jpg\\" \\/>\\r\\n\\r\\n<p>\\u0412 \\u0434\\u0430\\u043d\\u043d\\u0443\\u044e \\u0433\\u0440\\u0443\\u043f\\u043f\\u0443 \\u0432\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b \\u0432 \\u0442\\u0438\\u043f\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430\\u0445,  \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043d\\u0435 \\u0442\\u0430\\u043a \\u0440\\u0430\\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\\u043d\\u044b, \\u043d\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0441\\u0443\\u0434\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0437\\u043a\\u0435 \\u0438 \\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u044b\\u043f\\u0443\\u0447\\u0438\\u0445 \\u0433\\u0440\\u0443\\u0437\\u043e\\u0432, \\u0433\\u043e\\u0440\\u044e\\u0447\\u0435 \\u0441\\u043c\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435. \\u0422\\u043e\\u0432\\u0430\\u0440\\u044b \\u0434\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 (\\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u0434\\u043e 2.6 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0434\\u043e 12 \\u043c\\u043c, \\u0444\\u0438\\u0437\\u0438\\u043a\\u043e-\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438).<\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 12:27:13","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:30","modified_user_id":"386","modified_time":"2016-07-18 12:27:45","hits":"0","language":"*","version":"1"}', 0),
(68, 10, 5, '', '2016-07-18 12:28:01', 386, 8624, 'a3af8320c595a4a8ef136e7ad827f1aa29417a05', '{"id":"10","asset_id":"63","parent_id":"1","lft":"15","rgt":"16","level":"1","path":"tsvetnoj-metalloprokat-i-metalloobrabotka","extension":"com_content","title":"\\u0426\\u0432\\u0435\\u0442\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","alias":"tsvetnoj-metalloprokat-i-metalloobrabotka","note":"","description":"<p>\\u041e\\u041e\\u041e \\u00ab\\u041b\\u0418\\u0422\\u041e\\u0420\\u0410\\u041d \\u0413\\u0440\\u0443\\u043f\\u043f\\u00bb \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440\\u043e\\u043c \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0430\\u043b\\u043b\\u043e\\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u043b\\u043e\\u0433\\u043e\\u043c \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0438 \\u0441 \\u0442\\u0435\\u0445 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438, \\u0441 \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043b\\u043e\\u0433\\u0438\\u0441\\u0442\\u0438\\u043a\\u043e\\u0439 \\u0438 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438. \\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043a\\u0430\\u043a \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0442\\u0430\\u043a \\u0438 \\u0441 \\u043e\\u0442\\u0433\\u0440\\u0443\\u0437\\u043a\\u043e\\u0439 \\u0441 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043b\\u0430\\u0434\\u043e\\u0432.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u0438 \\u043e\\u043f\\u0442\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\\u0445 (\\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u0442\\u043e\\u043d\\u043d).<\\/p>\\r\\n\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u0442\\u0438\\u043f\\u044b \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 - \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0432 \\u0440\\u0443\\u043b\\u043e\\u043d\\u0430\\u0445 \\u0438 \\u043b\\u0438\\u0441\\u0442\\u0430\\u0445.<\\/p>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u044d\\u043a\\u0441\\u0442\\u0440\\u0443\\u0434\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044f.<\\/p>\\r\\n\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442,  \\u0441\\u043a\\u043b\\u0430\\u0434\\u0441\\u043a\\u0438\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438.<\\/h2>\\r\\n\\r\\n<img width=\\"50%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-1.jpg\\" \\/>\\r\\n\\r\\n<p>\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0435 \\u0441\\u043f\\u0440\\u0430\\u0432\\u0430, \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u043c\\u0435\\u044e\\u0442\\u0441\\u044f \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043d\\u0430 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u043c \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435. \\u041f\\u043e \\u0442\\u043e\\u0447\\u043d\\u044b\\u043c \\u0441\\u0440\\u043e\\u043a\\u0430\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u041d\\u0430 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u0433\\u043e \\u0441\\u043f\\u0435\\u043a\\u0442\\u0440\\u0430 \\u0430\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442\\u0430 \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0432\\u0438\\u0438 \\u0441 EN 573-3, EN515, EN 485-1,2,4.<\\/p>\\r\\n\\r\\n<p>\\u0414\\u0435\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b 1, 3, 5, 8 \\u0441\\u0435\\u0440\\u0438\\u0439;  (1050, 1100, 3003, 3103, 3105, 3005, 5005, 5754, 5251, 5052, 5183, 8011 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435), \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u0413\\u041e\\u0421\\u0422 \\u0410\\u04140, \\u0410\\u0414, \\u0410\\u041c\\u0446, \\u041c\\u041c, \\u0410\\u041c\\u04331-A\\u041c\\u04336.<\\/p>\\r\\n\\r\\n<p>\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u2014 \\u0440\\u0443\\u043b\\u043e\\u043d, \\u043b\\u0438\\u0441\\u0442; \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u2014 \\u043e\\u0442 0.20 \\u0434\\u043e 12.00 \\u043c\\u043c, \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 - \\u043e\\u0442 20 \\u0434\\u043e 2600 \\u043c\\u043c.<\\/p>\\r\\n\\r\\n<h2>\\u0410\\u043b\\u044e\\u043c\\u0438\\u043d\\u0438\\u0435\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u043a\\u0430\\u0442 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f.<\\/h2>\\r\\n\\r\\n<img width=\\"60%\\" class=\\"flright\\" src=\\"\\/images\\/imgmatherials\\/tsvetnoj-metalloprokat-i-metalloobrabotka\\/cat-img-2.jpg\\" \\/>\\r\\n\\r\\n<p>\\u0412 \\u0434\\u0430\\u043d\\u043d\\u0443\\u044e \\u0433\\u0440\\u0443\\u043f\\u043f\\u0443 \\u0432\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0441\\u043f\\u043b\\u0430\\u0432\\u044b \\u0432 \\u0442\\u0438\\u043f\\u043e\\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430\\u0445,  \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043d\\u0435 \\u0442\\u0430\\u043a \\u0440\\u0430\\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\\u043d\\u044b, \\u043d\\u043e \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0441\\u0443\\u0434\\u043e\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u0438\\u0438, \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0437\\u043a\\u0435 \\u0438 \\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u044b\\u043f\\u0443\\u0447\\u0438\\u0445 \\u0433\\u0440\\u0443\\u0437\\u043e\\u0432, \\u0433\\u043e\\u0440\\u044e\\u0447\\u0435 \\u0441\\u043c\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435. \\u0422\\u043e\\u0432\\u0430\\u0440\\u044b \\u0434\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 (\\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u0434\\u043e 2.6 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0442\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0434\\u043e 12 \\u043c\\u043c, \\u0444\\u0438\\u0437\\u0438\\u043a\\u043e-\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u0430\\u043c\\u0438).<\\/p>","published":"1","checked_out":"386","checked_out_time":"2016-07-18 12:27:45","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"386","created_time":"2016-07-07 22:14:30","modified_user_id":"386","modified_time":"2016-07-18 12:28:01","hits":"0","language":"*","version":"1"}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_updates`
--

CREATE TABLE IF NOT EXISTS `kqgk0_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Available Updates';

--
-- Дамп данных таблицы `kqgk0_updates`
--

INSERT INTO `kqgk0_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(11, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(12, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(13, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(14, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(15, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(16, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(17, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(18, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(19, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(20, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(21, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(22, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(23, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(24, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(25, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(26, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(27, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(28, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(29, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(30, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(31, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(32, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.4', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(33, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(34, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(35, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(36, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(37, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(38, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(39, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(40, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(41, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(42, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(43, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(44, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(45, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(46, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(47, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(48, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(49, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(50, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(51, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(52, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(53, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(54, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(55, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(56, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(57, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(58, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(59, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(60, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(61, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(62, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(63, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(64, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(65, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(66, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(67, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(68, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(69, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(70, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_update_sites`
--

CREATE TABLE IF NOT EXISTS `kqgk0_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `kqgk0_update_sites`
--

INSERT INTO `kqgk0_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1468852275, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1468852276, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1468827849, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1468827849, '');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `kqgk0_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `kqgk0_update_sites_extensions`
--

INSERT INTO `kqgk0_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 703),
(3, 802),
(4, 28);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_usergroups`
--

CREATE TABLE IF NOT EXISTS `kqgk0_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_usergroups`
--

INSERT INTO `kqgk0_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_users`
--

CREATE TABLE IF NOT EXISTS `kqgk0_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_users`
--

INSERT INTO `kqgk0_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(386, 'Super User', 'admin', 'akravchenko@medialine.by', '$2y$10$SvkZFRGiYoprLl9CmoibB.gGfidWhTRgUZ7hUkgwIUifSKQ8puKP2', 0, 1, '2016-06-24 15:14:15', '2016-07-18 13:16:45', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_user_keys`
--

CREATE TABLE IF NOT EXISTS `kqgk0_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_user_notes`
--

CREATE TABLE IF NOT EXISTS `kqgk0_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_user_profiles`
--

CREATE TABLE IF NOT EXISTS `kqgk0_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `kqgk0_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_user_usergroup_map`
--

INSERT INTO `kqgk0_user_usergroup_map` (`user_id`, `group_id`) VALUES
(386, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `kqgk0_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_utf8_conversion`
--

INSERT INTO `kqgk0_utf8_conversion` (`converted`) VALUES
(1);

-- --------------------------------------------------------

--
-- Структура таблицы `kqgk0_viewlevels`
--

CREATE TABLE IF NOT EXISTS `kqgk0_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kqgk0_viewlevels`
--

INSERT INTO `kqgk0_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kqgk0_assets`
--
ALTER TABLE `kqgk0_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `kqgk0_associations`
--
ALTER TABLE `kqgk0_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `kqgk0_banners`
--
ALTER TABLE `kqgk0_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `kqgk0_banner_clients`
--
ALTER TABLE `kqgk0_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `kqgk0_banner_tracks`
--
ALTER TABLE `kqgk0_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `kqgk0_categories`
--
ALTER TABLE `kqgk0_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `kqgk0_contact_details`
--
ALTER TABLE `kqgk0_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `kqgk0_content`
--
ALTER TABLE `kqgk0_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `kqgk0_contentitem_tag_map`
--
ALTER TABLE `kqgk0_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `kqgk0_content_frontpage`
--
ALTER TABLE `kqgk0_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `kqgk0_content_rating`
--
ALTER TABLE `kqgk0_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `kqgk0_content_types`
--
ALTER TABLE `kqgk0_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `kqgk0_extensions`
--
ALTER TABLE `kqgk0_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `kqgk0_finder_filters`
--
ALTER TABLE `kqgk0_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `kqgk0_finder_links`
--
ALTER TABLE `kqgk0_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `kqgk0_finder_links_terms0`
--
ALTER TABLE `kqgk0_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms1`
--
ALTER TABLE `kqgk0_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms2`
--
ALTER TABLE `kqgk0_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms3`
--
ALTER TABLE `kqgk0_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms4`
--
ALTER TABLE `kqgk0_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms5`
--
ALTER TABLE `kqgk0_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms6`
--
ALTER TABLE `kqgk0_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms7`
--
ALTER TABLE `kqgk0_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms8`
--
ALTER TABLE `kqgk0_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_terms9`
--
ALTER TABLE `kqgk0_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_termsa`
--
ALTER TABLE `kqgk0_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_termsb`
--
ALTER TABLE `kqgk0_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_termsc`
--
ALTER TABLE `kqgk0_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_termsd`
--
ALTER TABLE `kqgk0_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_termse`
--
ALTER TABLE `kqgk0_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_links_termsf`
--
ALTER TABLE `kqgk0_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `kqgk0_finder_taxonomy`
--
ALTER TABLE `kqgk0_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `kqgk0_finder_taxonomy_map`
--
ALTER TABLE `kqgk0_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `kqgk0_finder_terms`
--
ALTER TABLE `kqgk0_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `kqgk0_finder_terms_common`
--
ALTER TABLE `kqgk0_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `kqgk0_finder_tokens`
--
ALTER TABLE `kqgk0_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `kqgk0_finder_tokens_aggregate`
--
ALTER TABLE `kqgk0_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `kqgk0_finder_types`
--
ALTER TABLE `kqgk0_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `kqgk0_languages`
--
ALTER TABLE `kqgk0_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `kqgk0_menu`
--
ALTER TABLE `kqgk0_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `kqgk0_menu_types`
--
ALTER TABLE `kqgk0_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `kqgk0_messages`
--
ALTER TABLE `kqgk0_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `kqgk0_messages_cfg`
--
ALTER TABLE `kqgk0_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `kqgk0_modules`
--
ALTER TABLE `kqgk0_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `kqgk0_modules_menu`
--
ALTER TABLE `kqgk0_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `kqgk0_newsfeeds`
--
ALTER TABLE `kqgk0_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `kqgk0_overrider`
--
ALTER TABLE `kqgk0_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kqgk0_postinstall_messages`
--
ALTER TABLE `kqgk0_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `kqgk0_redirect_links`
--
ALTER TABLE `kqgk0_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `kqgk0_schemas`
--
ALTER TABLE `kqgk0_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `kqgk0_session`
--
ALTER TABLE `kqgk0_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `kqgk0_tags`
--
ALTER TABLE `kqgk0_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `kqgk0_template_styles`
--
ALTER TABLE `kqgk0_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `kqgk0_ucm_base`
--
ALTER TABLE `kqgk0_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `kqgk0_ucm_content`
--
ALTER TABLE `kqgk0_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `kqgk0_ucm_history`
--
ALTER TABLE `kqgk0_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `kqgk0_updates`
--
ALTER TABLE `kqgk0_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `kqgk0_update_sites`
--
ALTER TABLE `kqgk0_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `kqgk0_update_sites_extensions`
--
ALTER TABLE `kqgk0_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `kqgk0_usergroups`
--
ALTER TABLE `kqgk0_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `kqgk0_users`
--
ALTER TABLE `kqgk0_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `kqgk0_user_keys`
--
ALTER TABLE `kqgk0_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `kqgk0_user_notes`
--
ALTER TABLE `kqgk0_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `kqgk0_user_profiles`
--
ALTER TABLE `kqgk0_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `kqgk0_user_usergroup_map`
--
ALTER TABLE `kqgk0_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `kqgk0_viewlevels`
--
ALTER TABLE `kqgk0_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kqgk0_assets`
--
ALTER TABLE `kqgk0_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT для таблицы `kqgk0_banners`
--
ALTER TABLE `kqgk0_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_banner_clients`
--
ALTER TABLE `kqgk0_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_categories`
--
ALTER TABLE `kqgk0_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `kqgk0_contact_details`
--
ALTER TABLE `kqgk0_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kqgk0_content`
--
ALTER TABLE `kqgk0_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `kqgk0_content_types`
--
ALTER TABLE `kqgk0_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `kqgk0_extensions`
--
ALTER TABLE `kqgk0_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=805;
--
-- AUTO_INCREMENT для таблицы `kqgk0_finder_filters`
--
ALTER TABLE `kqgk0_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_finder_links`
--
ALTER TABLE `kqgk0_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_finder_taxonomy`
--
ALTER TABLE `kqgk0_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kqgk0_finder_terms`
--
ALTER TABLE `kqgk0_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_finder_types`
--
ALTER TABLE `kqgk0_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_languages`
--
ALTER TABLE `kqgk0_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kqgk0_menu`
--
ALTER TABLE `kqgk0_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT для таблицы `kqgk0_menu_types`
--
ALTER TABLE `kqgk0_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `kqgk0_messages`
--
ALTER TABLE `kqgk0_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_modules`
--
ALTER TABLE `kqgk0_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT для таблицы `kqgk0_newsfeeds`
--
ALTER TABLE `kqgk0_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_overrider`
--
ALTER TABLE `kqgk0_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `kqgk0_postinstall_messages`
--
ALTER TABLE `kqgk0_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `kqgk0_redirect_links`
--
ALTER TABLE `kqgk0_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_tags`
--
ALTER TABLE `kqgk0_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kqgk0_template_styles`
--
ALTER TABLE `kqgk0_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `kqgk0_ucm_content`
--
ALTER TABLE `kqgk0_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_ucm_history`
--
ALTER TABLE `kqgk0_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT для таблицы `kqgk0_updates`
--
ALTER TABLE `kqgk0_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT для таблицы `kqgk0_update_sites`
--
ALTER TABLE `kqgk0_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `kqgk0_usergroups`
--
ALTER TABLE `kqgk0_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `kqgk0_users`
--
ALTER TABLE `kqgk0_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=387;
--
-- AUTO_INCREMENT для таблицы `kqgk0_user_keys`
--
ALTER TABLE `kqgk0_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_user_notes`
--
ALTER TABLE `kqgk0_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kqgk0_viewlevels`
--
ALTER TABLE `kqgk0_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
