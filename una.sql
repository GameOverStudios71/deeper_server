SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `bx_acl_level_prices` (
  `id` int(11) NOT NULL,
  `level_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `trial` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `immediate` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_acl_licenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(16) NOT NULL DEFAULT 'single',
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `items` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_categories_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `display_add` varchar(255) NOT NULL DEFAULT '',
  `display_edit` varchar(255) NOT NULL DEFAULT '',
  `display_view` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_commodities` (
  `id` int(11) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(16) NOT NULL DEFAULT '',
  `amount` float NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_covers` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `shipped` int(11) NOT NULL,
  `received` int(11) NOT NULL,
  `source_type` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `auction` tinyint(4) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `single` tinyint(4) NOT NULL DEFAULT 1,
  `year` int(11) NOT NULL,
  `text` mediumtext NOT NULL,
  `notes_purchased` text NOT NULL,
  `labels` text NOT NULL,
  `tags` text NOT NULL,
  `location` text NOT NULL,
  `budget_total` float NOT NULL DEFAULT 0,
  `budget_daily` float NOT NULL DEFAULT 0,
  `impressions` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `clicks` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reviews` int(11) NOT NULL DEFAULT 0,
  `reviews_avg` float NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `seg` tinyint(4) NOT NULL DEFAULT 0,
  `seg_gender` tinyint(4) NOT NULL DEFAULT 0,
  `seg_age_min` int(11) NOT NULL DEFAULT 0,
  `seg_age_max` int(11) NOT NULL DEFAULT 0,
  `seg_tags` tinyint(4) NOT NULL DEFAULT 0,
  `seg_country` varchar(255) NOT NULL DEFAULT '',
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','offer','sold','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending','unpaid') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_interested_track` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_licenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `entry_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_licenses_deleted` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `entry_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `reason` varchar(16) NOT NULL DEFAULT '',
  `deleted` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_links` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_links2content` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `link_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_offers` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `status` enum('accepted','awaiting','declined','canceled','paid') NOT NULL DEFAULT 'awaiting'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_polls_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_polls_answers_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_polls_answers_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_promo_licenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `commodity_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `entry_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_promo_licenses_deleted` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `commodity_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `entry_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(16) NOT NULL DEFAULT '',
  `deleted` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_promo_tracker` (
  `id` int(11) UNSIGNED NOT NULL,
  `entry_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `impressions` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `clicks` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_reviews` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `caption` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(128) NOT NULL DEFAULT '',
  `option_prefix` varchar(32) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `class_name` varchar(128) NOT NULL DEFAULT '',
  `class_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_sources_options` (
  `id` int(11) NOT NULL,
  `source_id` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT 'text',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `extra` varchar(255) NOT NULL DEFAULT '',
  `check_type` varchar(64) NOT NULL DEFAULT '',
  `check_params` varchar(128) NOT NULL DEFAULT '',
  `check_error` varchar(128) NOT NULL DEFAULT '',
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_sources_options_values` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `option_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_ads_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_cmts_media` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_favorites_media_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `duration` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_files2albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `rate` float NOT NULL,
  `votes` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `data` text NOT NULL,
  `exif` text NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_meta_keywords_media` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_meta_keywords_media_camera` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_reports_media` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_reports_media_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_scores_media` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_scores_media_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_views_media_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_votes_media` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_votes_media_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_albums_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_anon_follow_subscriptions` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_antispam_block_log` (
  `id` int(11) NOT NULL,
  `ip` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) NOT NULL,
  `extra` text NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_antispam_disposable_email_domains` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `list` enum('blacklist','custom_blacklist','whitelist','custom_whitelist') NOT NULL DEFAULT 'custom_blacklist'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_antispam_dnsbluri_zones` (
  `id` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `zone` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_antispam_dnsbl_rules` (
  `id` int(11) NOT NULL,
  `chain` enum('spammers','whitelist','uridns') NOT NULL,
  `zonedomain` varchar(255) NOT NULL,
  `postvresp` varchar(32) NOT NULL,
  `url` varchar(255) NOT NULL,
  `recheck` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `added` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_antispam_ip_table` (
  `ID` int(11) NOT NULL,
  `From` int(10) UNSIGNED NOT NULL,
  `To` int(10) UNSIGNED NOT NULL,
  `Type` enum('allow','deny') NOT NULL DEFAULT 'deny',
  `LastDT` int(11) UNSIGNED NOT NULL,
  `Desc` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_attendant_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `added` int(11) DEFAULT NULL,
  `processed` int(11) DEFAULT NULL,
  `action` varchar(10) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `module` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `avail` int(11) NOT NULL,
  `cmts` int(11) NOT NULL,
  `completed_when` int(11) NOT NULL,
  `text` mediumtext NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_covers` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_links` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_links2content` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `link_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `module_title` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_polls_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_polls_answers_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_polls_answers_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_sounds` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_sounds_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `student_profile_id` int(11) NOT NULL,
  `viewed` int(11) NOT NULL,
  `replied` int(11) NOT NULL,
  `completed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_classes_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_content` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `cnl_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `module_name` varchar(19) NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `channel_name` varchar(191) NOT NULL,
  `lc_id` int(11) NOT NULL DEFAULT 0,
  `lc_date` int(11) NOT NULL DEFAULT 0,
  `contents` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(255) DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_cnl_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_contact_entries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `uri` varchar(255) NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_conv2folder` (
  `id` int(10) UNSIGNED NOT NULL,
  `conv_id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL,
  `collaborator` int(10) UNSIGNED NOT NULL,
  `read_comments` int(11) NOT NULL DEFAULT -1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `text` text NOT NULL,
  `allow_edit` tinyint(4) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `last_reply_timestamp` int(11) NOT NULL,
  `last_reply_profile_id` int(10) UNSIGNED NOT NULL,
  `last_reply_comment_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_convos_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_admins` (
  `id` int(11) NOT NULL,
  `group_profile_id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(10) UNSIGNED NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_content_data` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT 0,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(32) NOT NULL DEFAULT '',
  `content_id` int(11) NOT NULL DEFAULT 0,
  `usage` tinyint(4) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_content_data2users` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_content_nodes` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `passing` tinyint(4) NOT NULL DEFAULT 0,
  `counters` text NOT NULL,
  `added` int(11) NOT NULL,
  `status` enum('active','hidden') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_content_nodes2users` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_content_structure` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `cn_l2` int(11) NOT NULL DEFAULT 0,
  `cn_l3` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `desc` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `members` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `join_confirmation` tinyint(4) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_fans` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_invites` (
  `id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL DEFAULT '0',
  `group_profile_id` int(11) NOT NULL DEFAULT 0,
  `author_profile_id` int(11) NOT NULL DEFAULT 0,
  `invited_profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_prices` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_courses_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_credits_bundles` (
  `id` int(11) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `bonus` int(11) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_credits_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_pid` int(11) NOT NULL DEFAULT 0,
  `second_pid` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `type` varchar(16) NOT NULL DEFAULT '',
  `direction` enum('in','out') NOT NULL DEFAULT 'in',
  `order` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `cleared` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_credits_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bundle_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_credits_orders_deleted` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bundle_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `reason` varchar(16) NOT NULL DEFAULT '',
  `deleted` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_credits_profiles` (
  `id` int(11) NOT NULL DEFAULT 0,
  `wdw_clearing` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wdw_minimum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wdw_remaining` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `balance` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_credits_withdrawals` (
  `id` int(11) UNSIGNED NOT NULL,
  `performer_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `message` text NOT NULL DEFAULT '',
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `confirmed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('requested','canceled','confirmed') NOT NULL DEFAULT 'requested'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_donations_entries` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `period` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `amount` float UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_donations_entries_deleted` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `period` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `amount` float UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(16) NOT NULL DEFAULT '',
  `deleted` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_donations_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `amount` float UNSIGNED NOT NULL DEFAULT 0,
  `custom` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_admins` (
  `id` int(11) NOT NULL,
  `group_profile_id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(10) UNSIGNED NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_check_in` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_cat` int(11) NOT NULL,
  `event_desc` text NOT NULL,
  `hashtag` varchar(32) NOT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `date_max` int(11) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `threshold` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `members` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `join_confirmation` tinyint(4) NOT NULL DEFAULT 0,
  `reminder` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_fans` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_intervals` (
  `interval_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `repeat_year` int(11) NOT NULL,
  `repeat_month` int(11) NOT NULL,
  `repeat_week_of_month` int(11) NOT NULL,
  `repeat_day_of_month` int(11) NOT NULL,
  `repeat_day_of_week` int(11) NOT NULL,
  `repeat_stop` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_invites` (
  `id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL DEFAULT '0',
  `group_profile_id` int(11) NOT NULL DEFAULT 0,
  `author_profile_id` int(11) NOT NULL DEFAULT 0,
  `invited_profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_prices` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_qnr_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(10) NOT NULL DEFAULT 0,
  `answer` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_qnr_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(10) NOT NULL DEFAULT 0,
  `action` varchar(16) NOT NULL DEFAULT 'add',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(16) NOT NULL DEFAULT 'text',
  `extra` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_events_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_fdb_answers` (
  `id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `important` tinyint(4) NOT NULL DEFAULT 0,
  `data` text NOT NULL DEFAULT '',
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_fdb_answers2users` (
  `id` int(11) UNSIGNED NOT NULL,
  `answer_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `text` varchar(255) NOT NULL DEFAULT '',
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_fdb_questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` int(11) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `lifetime` int(11) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status_admin` enum('active','hidden') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_bookmarks` (
  `object_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_downloading_jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL,
  `files` mediumtext NOT NULL,
  `result` text NOT NULL,
  `started` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_main` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `desc` text NOT NULL,
  `data` text NOT NULL,
  `data_processed` tinyint(4) NOT NULL DEFAULT 0,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active',
  `type` enum('file','folder') NOT NULL DEFAULT 'file',
  `parent_folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_sounds_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_files_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_categories` (
  `category` int(11) NOT NULL DEFAULT 0,
  `visible_for_levels` int(11) NOT NULL DEFAULT 2147483647,
  `icon` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_covers` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(24) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `thumb_data` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `multicat` text NOT NULL,
  `text` mediumtext NOT NULL,
  `text_comments` mediumtext NOT NULL,
  `lr_timestamp` int(11) NOT NULL,
  `lr_profile_id` int(11) NOT NULL,
  `lr_comment_id` int(11) NOT NULL,
  `labels` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `stick` tinyint(4) NOT NULL DEFAULT 0,
  `lock` tinyint(4) NOT NULL DEFAULT 0,
  `resolvable` tinyint(4) NOT NULL DEFAULT 0,
  `resolved` tinyint(4) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `cf` int(11) NOT NULL DEFAULT 1,
  `status` enum('active','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(24) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_links` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_links2content` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `link_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(24) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_polls_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_polls_answers_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_polls_answers_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_subscribers` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_forum_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `text` text NOT NULL,
  `labels` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_glossary_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_admins` (
  `id` int(11) NOT NULL,
  `group_profile_id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(10) UNSIGNED NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_cat` int(11) NOT NULL,
  `group_desc` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `members` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `join_confirmation` tinyint(4) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_fans` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_invites` (
  `id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL DEFAULT '0',
  `group_profile_id` int(11) NOT NULL DEFAULT 0,
  `author_profile_id` int(11) NOT NULL DEFAULT 0,
  `invited_profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_prices` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_groups_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_help_tours` (
  `id` int(11) NOT NULL,
  `overlay` tinyint(1) NOT NULL,
  `page` varchar(128) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_help_tours_items` (
  `id` int(11) NOT NULL,
  `tour` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL,
  `arrow` enum('auto','auto-start','auto-end','top','top-start','top-end','bottom','bottom-start','bottom-end','right','right-start','right-end','left','left-start','left-end') DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `text` varchar(128) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_help_tours_track_views` (
  `account` int(11) NOT NULL,
  `tour` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_inv_invites` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL,
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `date_seen` int(11) DEFAULT NULL,
  `date_joined` int(11) DEFAULT NULL,
  `joined_account_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_inv_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_admins` (
  `id` int(11) NOT NULL,
  `group_profile_id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(10) UNSIGNED NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `desc` text NOT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `pay_hourly` float NOT NULL DEFAULT 0,
  `pay_total` float NOT NULL DEFAULT 0,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `members` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `join_confirmation` tinyint(4) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_fans` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_invites` (
  `id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL DEFAULT '0',
  `group_profile_id` int(11) NOT NULL DEFAULT 0,
  `author_profile_id` int(11) NOT NULL DEFAULT 0,
  `invited_profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_prices` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_qnr_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(10) NOT NULL DEFAULT 0,
  `answer` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_qnr_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(10) NOT NULL DEFAULT 0,
  `action` varchar(16) NOT NULL DEFAULT 'add',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(16) NOT NULL DEFAULT 'text',
  `extra` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_jobs_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_mapshow_accounts` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `lng` float DEFAULT NULL,
  `lat` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_downloads_track` (
  `id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `profile_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_files2products` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `type` enum('version','update') NOT NULL DEFAULT 'version',
  `version` varchar(255) NOT NULL,
  `version_to` varchar(255) NOT NULL,
  `downloads` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_licenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `domain` varchar(128) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired_notif` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_licenses_deleted` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `license` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `domain` varchar(128) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired_notif` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `reason` varchar(16) NOT NULL DEFAULT '',
  `deleted` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_photos2products` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `thumb` int(11) NOT NULL DEFAULT 0,
  `cover` int(11) NOT NULL DEFAULT 0,
  `cover_data` varchar(64) NOT NULL DEFAULT '',
  `cover_raw` longtext NOT NULL,
  `package` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `notes` text NOT NULL,
  `notes_purchased` text NOT NULL,
  `cat` int(11) NOT NULL,
  `price_single` float NOT NULL DEFAULT 0,
  `price_recurring` float NOT NULL DEFAULT 0,
  `duration_recurring` varchar(16) NOT NULL DEFAULT 'month',
  `trial_recurring` int(11) NOT NULL DEFAULT 0,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(32) NOT NULL DEFAULT '3',
  `allow_purchase_to` varchar(32) NOT NULL DEFAULT '3',
  `allow_comment_to` varchar(32) NOT NULL DEFAULT 'c',
  `allow_vote_to` varchar(32) NOT NULL DEFAULT 'c',
  `status` enum('active','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_subproducts` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_market_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_massmailer_campaigns` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `reply_to` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `segments` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `date_sent` int(11) NOT NULL DEFAULT 0,
  `email_list` text DEFAULT NULL,
  `is_one_per_account` smallint(1) NOT NULL,
  `is_track_links` smallint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_massmailer_letters` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_sent` int(11) NOT NULL DEFAULT 0,
  `date_seen` int(11) NOT NULL DEFAULT 0,
  `date_click` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_massmailer_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `letter_hash` varchar(35) DEFAULT NULL,
  `hash` varchar(35) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `date_click` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_massmailer_segments` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `email_list` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_massmailer_unsubscribe` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `unsubscribed` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_events` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `object_id` text NOT NULL,
  `object_owner_id` int(11) NOT NULL DEFAULT 0,
  `object_privacy_view` varchar(32) NOT NULL DEFAULT '3',
  `subobject_id` int(11) NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `allow_view_event_to` varchar(32) NOT NULL DEFAULT '3',
  `date` int(11) NOT NULL DEFAULT 0,
  `processed` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_events2users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `clicked` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_handlers` (
  `id` int(11) NOT NULL,
  `group` varchar(64) NOT NULL DEFAULT '',
  `type` enum('insert','update','delete') NOT NULL DEFAULT 'insert',
  `alert_unit` varchar(64) NOT NULL DEFAULT '',
  `alert_action` varchar(64) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `privacy` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_queue` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `delivery` varchar(64) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_read` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `event_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_settings` (
  `id` int(11) NOT NULL,
  `group` varchar(64) NOT NULL DEFAULT '',
  `handler_id` int(11) NOT NULL DEFAULT 0,
  `delivery` enum('site','email','push') NOT NULL DEFAULT 'site',
  `type` enum('personal','follow_member','follow_context','other') NOT NULL DEFAULT 'personal',
  `title` varchar(64) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_notifications_settings2users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `setting_id` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_admins` (
  `id` int(11) NOT NULL,
  `group_profile_id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(10) UNSIGNED NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_cat` int(11) NOT NULL,
  `multicat` text NOT NULL,
  `org_desc` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `members` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `join_confirmation` tinyint(4) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '5',
  `allow_contact_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `settings` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_fans` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_invites` (
  `id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL DEFAULT '0',
  `group_profile_id` int(11) NOT NULL DEFAULT 0,
  `author_profile_id` int(11) NOT NULL DEFAULT 0,
  `invited_profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_prices` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_organizations_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_cart` (
  `client_id` int(11) NOT NULL DEFAULT 0,
  `items` text NOT NULL DEFAULT '',
  `customs` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_commissions` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `caption` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(128) NOT NULL DEFAULT '',
  `acl_id` int(11) NOT NULL DEFAULT 0,
  `percentage` float NOT NULL DEFAULT 0,
  `installment` float NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL DEFAULT '',
  `rate` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_invoices` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `commissionaire_id` varchar(32) NOT NULL DEFAULT '',
  `committent_id` varchar(32) NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT 0,
  `currency` varchar(4) NOT NULL DEFAULT '',
  `period_start` int(11) NOT NULL DEFAULT 0,
  `period_end` int(11) NOT NULL DEFAULT 0,
  `date_issue` int(11) NOT NULL DEFAULT 0,
  `date_due` int(11) NOT NULL DEFAULT 0,
  `status` varchar(32) NOT NULL DEFAULT 'unpaid',
  `ntf_exp` tinyint(4) NOT NULL DEFAULT 0,
  `ntf_due` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `caption` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(128) NOT NULL DEFAULT '',
  `option_prefix` varchar(32) NOT NULL DEFAULT '',
  `for_visitor` tinyint(4) NOT NULL DEFAULT 0,
  `for_owner_only` tinyint(4) NOT NULL DEFAULT 0,
  `for_single` tinyint(4) NOT NULL DEFAULT 0,
  `for_recurring` tinyint(4) NOT NULL DEFAULT 0,
  `single_seller` tinyint(4) NOT NULL DEFAULT 0,
  `time_tracker` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `class_name` varchar(128) NOT NULL DEFAULT '',
  `class_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_providers_options` (
  `id` int(11) NOT NULL,
  `provider_id` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT 'text',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `extra` varchar(255) NOT NULL DEFAULT '',
  `check_type` varchar(64) NOT NULL DEFAULT '',
  `check_params` varchar(128) NOT NULL DEFAULT '',
  `check_error` varchar(128) NOT NULL DEFAULT '',
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_stripe_payments_pending` (
  `id` int(11) NOT NULL,
  `subscription_id` varchar(32) NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT 0,
  `currency` varchar(4) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_subscriptions` (
  `id` int(11) NOT NULL,
  `pending_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` varchar(32) NOT NULL DEFAULT '',
  `subscription_id` varchar(32) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `trial` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date_add` int(11) NOT NULL DEFAULT 0,
  `date_next` int(11) NOT NULL DEFAULT 0,
  `pay_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(32) NOT NULL DEFAULT 'unpaid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_subscriptions_deleted` (
  `id` int(11) NOT NULL,
  `pending_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` varchar(32) NOT NULL DEFAULT '',
  `subscription_id` varchar(32) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `trial` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date_add` int(11) NOT NULL DEFAULT 0,
  `date_next` int(11) NOT NULL DEFAULT 0,
  `pay_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(32) NOT NULL DEFAULT 'unpaid',
  `reason` varchar(16) NOT NULL DEFAULT '',
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_transactions` (
  `id` int(11) NOT NULL,
  `pending_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `module_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `item_count` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `currency` varchar(4) NOT NULL DEFAULT '',
  `license` varchar(16) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_transactions_pending` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(16) NOT NULL DEFAULT 'single',
  `provider` varchar(32) NOT NULL DEFAULT '',
  `items` text NOT NULL DEFAULT '',
  `customs` text NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT 0,
  `currency` varchar(4) NOT NULL DEFAULT '',
  `order` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `error_code` varchar(16) NOT NULL DEFAULT '',
  `error_msg` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `authorized` tinyint(4) NOT NULL DEFAULT 0,
  `processed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_payment_user_values` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `option_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '5',
  `allow_contact_to` varchar(16) NOT NULL DEFAULT '3',
  `settings` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_pictures` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_pictures_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(500) DEFAULT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_persons_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `thumb` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `text` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `srate` float NOT NULL DEFAULT 0,
  `svotes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `cf` int(11) NOT NULL DEFAULT 1,
  `status` enum('active','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active',
  `exif` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_media_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_meta_keywords_camera` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_svotes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_svotes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_photos_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `text` text NOT NULL,
  `cat` int(11) NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `hidden_results` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('active','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_subentries` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_votes_subentries` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_votes_subentries_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_polls_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_covers` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL,
  `dimensions` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_links` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_links2content` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `link_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL,
  `dimensions` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_polls_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_polls_answers_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_polls_answers_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `thumb_data` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `multicat` text NOT NULL,
  `abstract` text NOT NULL,
  `text` mediumtext NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_comments` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_sounds` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_sounds_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_posts_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_quoteofday_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `added` int(11) DEFAULT NULL,
  `status` enum('active','hidden') DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reminders_entries` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `rmd_pid` int(11) NOT NULL DEFAULT 0,
  `cnt_pid` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL DEFAULT '',
  `notified` text NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(4) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL,
  `expired` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reminders_types` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `when` varchar(32) NOT NULL,
  `show` int(11) NOT NULL DEFAULT 0,
  `notify` varchar(255) NOT NULL,
  `personal` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reputation_events` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `object_id` int(11) NOT NULL DEFAULT 0,
  `object_owner_id` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reputation_handlers` (
  `id` int(11) NOT NULL,
  `group` varchar(64) NOT NULL DEFAULT '',
  `type` enum('insert','update','delete') NOT NULL DEFAULT 'insert',
  `alert_unit` varchar(64) NOT NULL DEFAULT '',
  `alert_action` varchar(64) NOT NULL DEFAULT '',
  `points_active` int(11) NOT NULL DEFAULT 0,
  `points_passive` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reputation_levels` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(64) NOT NULL DEFAULT '',
  `icon` text NOT NULL,
  `points_in` int(11) NOT NULL DEFAULT 0,
  `points_out` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reputation_profiles` (
  `id` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reputation_profiles_levels` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `level_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_covers` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_polls_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_polls_answers_votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_polls_answers_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `voting_options` text NOT NULL,
  `voting_avg` float NOT NULL,
  `cat` int(11) NOT NULL,
  `multicat` text NOT NULL,
  `text` mediumtext NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `srate` float NOT NULL DEFAULT 0,
  `svotes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `reviewed_profile` int(11) NOT NULL DEFAULT 0,
  `product` varchar(255) NOT NULL,
  `allow_comments` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_svotes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_svotes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_reviews_voting_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `lkey` varchar(255) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_admins` (
  `id` int(11) NOT NULL,
  `group_profile_id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(10) UNSIGNED NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` varchar(32) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `parent_space` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `cover_data` varchar(50) NOT NULL,
  `space_name` varchar(255) NOT NULL,
  `space_cat` int(11) NOT NULL,
  `space_desc` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `members` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `srate` float NOT NULL DEFAULT 0,
  `svotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `join_confirmation` tinyint(4) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active',
  `stg_tabs` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_fans` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_invites` (
  `id` int(11) NOT NULL,
  `key` varchar(128) NOT NULL DEFAULT '0',
  `group_profile_id` int(11) NOT NULL DEFAULT 0,
  `author_profile_id` int(11) NOT NULL DEFAULT 0,
  `invited_profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_pics` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_pics_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_prices` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `period` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `period_unit` varchar(32) NOT NULL DEFAULT '',
  `price` float UNSIGNED NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_stars` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_stars_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_spaces_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_entries` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` int(11) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `expired` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_entries_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `cf` int(11) NOT NULL DEFAULT 1,
  `data` text NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `duration` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_stories_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_assignments` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_covers` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_lists` (
  `id` int(11) NOT NULL,
  `context_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_photos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `thumb` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `multicat` text NOT NULL,
  `text` mediumtext NOT NULL,
  `labels` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `due_date` int(11) NOT NULL,
  `tasks_list` int(11) NOT NULL,
  `completed` tinyint(4) NOT NULL DEFAULT 0,
  `expired` tinyint(4) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_comments` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_videos_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_tasks_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_comments` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_ef_files` (
  `event_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_ef_photos` (
  `event_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_ef_videos` (
  `event_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_events` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `system` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `object_owner_id` int(11) NOT NULL DEFAULT 0,
  `object_privacy_view` varchar(16) NOT NULL DEFAULT '3',
  `object_cf` int(11) NOT NULL DEFAULT 1,
  `content` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reports` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reposts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `reacted` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','awaiting','failed','hidden','deleted') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active',
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `pinned` int(11) NOT NULL DEFAULT 0,
  `sticked` int(11) NOT NULL DEFAULT 0,
  `promoted` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_events2users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `event_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_events_slice` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `system` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `object_owner_id` int(11) NOT NULL DEFAULT 0,
  `object_privacy_view` varchar(16) NOT NULL DEFAULT '3',
  `object_cf` int(11) NOT NULL DEFAULT 1,
  `content` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reports` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reposts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `reacted` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','awaiting','failed','hidden','deleted') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active',
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `pinned` int(11) NOT NULL DEFAULT 0,
  `sticked` int(11) NOT NULL DEFAULT 0,
  `promoted` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_files2events` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `media_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_handlers` (
  `id` int(11) NOT NULL,
  `group` varchar(64) NOT NULL DEFAULT '',
  `type` enum('insert','update','delete') NOT NULL DEFAULT 'insert',
  `alert_unit` varchar(64) NOT NULL DEFAULT '',
  `alert_action` varchar(64) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `privacy` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_hot_track` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_links` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_links2events` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `link_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_mute` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(24) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_photos2events` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `media_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_photos_processed` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_polls_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_polls_answers_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_polls_answers_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_reposts_track` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reposted_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_videos2events` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `media_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_videos_processed` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_timeline_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_cmts` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_cmts_notes` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_embeds_providers` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(64) NOT NULL,
  `params` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `thumb` int(11) NOT NULL DEFAULT 0,
  `poster` int(11) NOT NULL DEFAULT 0,
  `video_source` enum('upload','embed') NOT NULL DEFAULT 'upload',
  `video` int(11) NOT NULL DEFAULT 0,
  `video_embed` text DEFAULT NULL,
  `video_embed_data` text DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `multicat` text NOT NULL,
  `text` text NOT NULL,
  `duration` int(11) NOT NULL,
  `labels` text NOT NULL,
  `location` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `srate` float NOT NULL DEFAULT 0,
  `svotes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `cf` int(11) NOT NULL DEFAULT 1,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `status` enum('active','awaiting','failed','hidden') NOT NULL DEFAULT 'active',
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_favorites_lists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `allow_view_favorite_list_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_media_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_meta_locations` (
  `object_id` int(10) UNSIGNED NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_photos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_svotes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_svotes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_videos` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_videos_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `favorites` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3',
  `allow_post_to` varchar(16) NOT NULL DEFAULT '5',
  `allow_contact_to` varchar(16) NOT NULL DEFAULT '3',
  `settings` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_favorites_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_views_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `viewer_id` int(11) NOT NULL DEFAULT 0,
  `viewer_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `bx_workspaces_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `email_confirmed` tinyint(4) NOT NULL DEFAULT 0,
  `phone` varchar(255) NOT NULL,
  `phone_confirmed` tinyint(4) NOT NULL DEFAULT 0,
  `receive_updates` tinyint(4) NOT NULL DEFAULT 1,
  `receive_news` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(40) NOT NULL,
  `password_changed` int(11) NOT NULL DEFAULT 0,
  `salt` varchar(10) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `lang_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `changed` int(11) NOT NULL DEFAULT 0,
  `logged` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `referred` varchar(255) NOT NULL DEFAULT '',
  `login_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_accounts_password` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password_changed` int(11) NOT NULL DEFAULT 0,
  `salt` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_accounts_pictures` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(12) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_accounts_pictures_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_acl_actions` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Module` varchar(32) NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `AdditionalParamName` varchar(80) DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `Desc` varchar(255) NOT NULL,
  `Countable` tinyint(4) NOT NULL DEFAULT 0,
  `DisabledForLevels` int(10) UNSIGNED NOT NULL DEFAULT 3
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_acl_actions_track` (
  `IDAction` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IDMember` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ActionsLeft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ValidSince` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_acl_levels` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Icon` text NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `Active` enum('yes','no') NOT NULL DEFAULT 'no',
  `Purchasable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Removable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `QuotaSize` bigint(20) NOT NULL,
  `QuotaNumber` int(11) NOT NULL,
  `QuotaMaxFileSize` bigint(20) NOT NULL,
  `Order` int(11) NOT NULL DEFAULT 0,
  `PasswordExpired` int(11) NOT NULL DEFAULT 0,
  `PasswordExpiredNotify` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_acl_levels_members` (
  `IDMember` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IDLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `DateStarts` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateExpires` datetime DEFAULT NULL,
  `State` varchar(16) NOT NULL DEFAULT '',
  `TransactionID` varchar(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_acl_matrix` (
  `IDLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IDAction` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AllowedCount` int(10) UNSIGNED DEFAULT NULL,
  `AllowedPeriodLen` int(10) UNSIGNED DEFAULT NULL,
  `AllowedPeriodStart` datetime DEFAULT NULL,
  `AllowedPeriodEnd` datetime DEFAULT NULL,
  `AdditionalParamValue` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_assistants` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `model_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `prompt` text NOT NULL,
  `ai_vs_id` varchar(64) NOT NULL DEFAULT '',
  `ai_asst_id` varchar(64) NOT NULL DEFAULT '',
  `added` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `hidden` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_assistants_chats` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `assistant_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `message_id` int(11) NOT NULL DEFAULT 0,
  `messages` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `ai_thread_id` varchar(64) NOT NULL DEFAULT '',
  `ai_file_id` varchar(64) NOT NULL DEFAULT '',
  `stored` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_assistants_chats_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(24) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_assistants_chats_messages` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_assistants_files` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `assistant_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `ai_file_id` varchar(64) NOT NULL DEFAULT '',
  `ai_file_size` int(11) NOT NULL DEFAULT 0,
  `ai_file_status` varchar(64) NOT NULL DEFAULT 'in_progress',
  `locked` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_automators` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `model_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('event','scheduler','webhook') NOT NULL DEFAULT 'event',
  `params` text NOT NULL,
  `alert_unit` varchar(128) NOT NULL DEFAULT '',
  `alert_action` varchar(128) NOT NULL DEFAULT '',
  `message_id` int(11) NOT NULL DEFAULT 0,
  `code` text NOT NULL,
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `messages` int(11) NOT NULL DEFAULT 0,
  `status` enum('auto','manual','ready') NOT NULL DEFAULT 'auto',
  `active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_automators_assistants` (
  `id` int(11) NOT NULL,
  `automator_id` int(11) NOT NULL DEFAULT 0,
  `assistant_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_automators_helpers` (
  `id` int(11) NOT NULL,
  `automator_id` int(11) NOT NULL DEFAULT 0,
  `helper_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_automators_messages` (
  `cmt_id` int(11) NOT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_vparent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_object_id` int(11) NOT NULL DEFAULT 0,
  `cmt_author_id` int(11) NOT NULL DEFAULT 0,
  `cmt_level` int(11) NOT NULL DEFAULT 0,
  `cmt_text` text NOT NULL,
  `cmt_mood` tinyint(4) NOT NULL DEFAULT 0,
  `cmt_rate` int(11) NOT NULL DEFAULT 0,
  `cmt_rate_count` int(11) NOT NULL DEFAULT 0,
  `cmt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_replies` int(11) NOT NULL DEFAULT 0,
  `cmt_pinned` int(11) NOT NULL DEFAULT 0,
  `cmt_cf` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_automators_providers` (
  `id` int(11) NOT NULL,
  `automator_id` int(11) NOT NULL DEFAULT 0,
  `provider_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_helpers` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `prompt` text DEFAULT NULL,
  `added` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_models` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(64) NOT NULL DEFAULT '',
  `key` varchar(64) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `for_asst` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `hidden` tinyint(4) NOT NULL DEFAULT 0,
  `class_name` varchar(128) NOT NULL DEFAULT '',
  `class_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_providers_values` (
  `id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT 0,
  `option_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_provider_options` (
  `id` int(11) NOT NULL,
  `provider_type_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT 'text',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `extra` varchar(255) NOT NULL DEFAULT '',
  `check_type` varchar(64) NOT NULL DEFAULT '',
  `check_params` varchar(128) NOT NULL DEFAULT '',
  `check_error` varchar(128) NOT NULL DEFAULT '',
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_agents_provider_types` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `option_prefix` varchar(32) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `class_name` varchar(128) NOT NULL DEFAULT '',
  `class_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_alerts` (
  `id` int(11) UNSIGNED NOT NULL,
  `unit` varchar(128) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT 'none',
  `handler_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_alerts_cache_triggers` (
  `id` int(11) UNSIGNED NOT NULL,
  `unit` varchar(128) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cache_key` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_alerts_handlers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `class` varchar(128) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  `service_call` text NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_api_keys` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `key` varchar(48) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_api_origins` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_audit` (
  `id` int(11) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `profile_id` int(10) NOT NULL,
  `profile_title` varchar(255) NOT NULL,
  `content_id` int(10) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_module` varchar(32) NOT NULL DEFAULT '',
  `content_info_object` varchar(32) NOT NULL DEFAULT '',
  `context_profile_id` int(10) NOT NULL,
  `context_profile_title` varchar(255) NOT NULL,
  `action_lang_key` varchar(255) NOT NULL,
  `action_lang_key_params` text NOT NULL,
  `extras` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_background_jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `priority` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `service_call` text NOT NULL DEFAULT '',
  `status` varchar(16) NOT NULL DEFAULT 'awaiting'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_badges` (
  `id` int(11) UNSIGNED NOT NULL,
  `added` int(11) NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `icon` text NOT NULL DEFAULT '',
  `color` varchar(32) NOT NULL DEFAULT '',
  `fontcolor` varchar(32) NOT NULL DEFAULT '',
  `is_icon_only` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_badges2objects` (
  `id` int(11) UNSIGNED NOT NULL,
  `badge_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_categories` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `value` varchar(100) NOT NULL,
  `status` enum('active','hidden') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_categories2objects` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `object_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_ids` (
  `id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL DEFAULT 0,
  `cmt_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `sc_up` int(11) NOT NULL DEFAULT 0,
  `sc_down` int(11) NOT NULL DEFAULT 0,
  `reports` int(11) NOT NULL DEFAULT 0,
  `status_admin` enum('active','hidden','pending') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_images` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `dimensions` varchar(24) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_images2entries` (
  `id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL DEFAULT 0,
  `cmt_id` int(11) NOT NULL DEFAULT 0,
  `image_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_images_preview` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_meta_keywords` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_meta_mentions` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_reactions` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_reactions_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_reports` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_reports_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_scores` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count_up` int(11) NOT NULL DEFAULT 0,
  `count_down` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_scores_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(8) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cmts_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_content_info_grids` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `grid_object` varchar(64) NOT NULL,
  `grid_field_id` varchar(64) NOT NULL,
  `condition` text NOT NULL DEFAULT '',
  `selection` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_cron_jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(128) NOT NULL DEFAULT '*',
  `class` varchar(128) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  `service_call` text NOT NULL DEFAULT '',
  `ts` int(11) NOT NULL,
  `timing` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_email_templates` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Module` varchar(32) NOT NULL,
  `NameSystem` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Body` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_embeded_data` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `theme` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_displays` (
  `id` int(11) NOT NULL,
  `display_name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view_mode` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_display_inputs` (
  `id` int(11) NOT NULL,
  `display_name` varchar(64) NOT NULL,
  `input_name` varchar(32) NOT NULL,
  `visible_for_levels` int(11) NOT NULL DEFAULT 2147483647,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_fields_ids` (
  `id` int(11) NOT NULL,
  `object_form` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(32) NOT NULL,
  `field_name` varchar(255) NOT NULL DEFAULT '',
  `content_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(10) NOT NULL DEFAULT 0,
  `nested_content_id` int(10) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `rrate` float NOT NULL DEFAULT 0,
  `rvotes` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_fields_reaction` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_fields_reaction_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reaction` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_fields_votes` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_fields_votes_track` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `author_nip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` tinyint(4) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_inputs` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `values` text NOT NULL,
  `checked` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL,
  `caption_system` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `help` varchar(255) NOT NULL,
  `icon` text NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `unique` tinyint(4) NOT NULL DEFAULT 0,
  `collapsed` tinyint(4) NOT NULL DEFAULT 0,
  `html` tinyint(4) NOT NULL DEFAULT 0,
  `privacy` tinyint(4) NOT NULL DEFAULT 0,
  `rateable` varchar(32) NOT NULL DEFAULT '',
  `attrs` text NOT NULL,
  `attrs_tr` text NOT NULL,
  `attrs_wrapper` text NOT NULL,
  `checker_func` varchar(32) NOT NULL,
  `checker_params` text NOT NULL,
  `checker_error` varchar(255) NOT NULL,
  `db_pass` varchar(32) NOT NULL,
  `db_params` text NOT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT 1,
  `deletable` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_inputs_privacy` (
  `id` int(11) NOT NULL,
  `input_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `author_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `allow_view_to` varchar(16) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_pre_lists` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `key` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `use_for_sets` tinyint(4) UNSIGNED NOT NULL DEFAULT 1,
  `extendable` tinyint(4) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_form_pre_values` (
  `id` int(11) NOT NULL,
  `Key` varchar(255) NOT NULL DEFAULT '',
  `Value` varchar(255) NOT NULL DEFAULT '',
  `Order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `LKey` varchar(255) NOT NULL DEFAULT '',
  `LKey2` varchar(255) NOT NULL DEFAULT '',
  `Data` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_grid_actions` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `type` enum('bulk','single','independent') NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` text NOT NULL,
  `icon_only` tinyint(4) NOT NULL DEFAULT 0,
  `confirm` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_grid_fields` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `width` varchar(16) NOT NULL,
  `translatable` tinyint(4) NOT NULL DEFAULT 0,
  `chars_limit` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `hidden_on` varchar(255) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_iframely_data` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `theme` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_images` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_images_custom` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_images_editor` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_images_editor_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_images_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_injections` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `page_index` int(11) NOT NULL DEFAULT 0,
  `key` varchar(128) NOT NULL DEFAULT '',
  `type` enum('text','service') NOT NULL DEFAULT 'text',
  `data` text NOT NULL DEFAULT '',
  `replace` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_injections_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `page_index` int(11) NOT NULL DEFAULT 0,
  `key` varchar(128) NOT NULL DEFAULT '',
  `type` enum('text','service') NOT NULL DEFAULT 'text',
  `data` text NOT NULL,
  `replace` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_keys` (
  `key` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` int(11) NOT NULL,
  `salt` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_labels` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `value` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_localization_categories` (
  `ID` int(6) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_localization_keys` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IDCategory` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `Key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_localization_languages` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(5) NOT NULL DEFAULT '',
  `Flag` varchar(2) NOT NULL DEFAULT '',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Direction` enum('LTR','RTL') NOT NULL DEFAULT 'LTR',
  `LanguageCountry` varchar(8) NOT NULL,
  `Enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_localization_strings` (
  `IDKey` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IDLanguage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `String` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_menu_items` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `set_name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title_system` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_attr` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(512) NOT NULL,
  `onclick` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `area_label` varchar(255) NOT NULL DEFAULT '',
  `icon` text NOT NULL,
  `icon_only` tinyint(4) NOT NULL DEFAULT 0,
  `addon` text NOT NULL,
  `addon_cache` tinyint(4) NOT NULL DEFAULT 0,
  `markers` text NOT NULL,
  `submenu_object` varchar(64) NOT NULL,
  `submenu_popup` tinyint(4) NOT NULL DEFAULT 0,
  `visible_for_levels` int(11) NOT NULL DEFAULT 2147483647,
  `visibility_custom` text NOT NULL,
  `hidden_on` varchar(255) NOT NULL DEFAULT '',
  `hidden_on_cxt` varchar(255) NOT NULL DEFAULT '',
  `hidden_on_pt` int(11) NOT NULL DEFAULT 0,
  `hidden_on_col` int(11) NOT NULL DEFAULT 0,
  `config_api` text NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT 0,
  `collapsed` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `active_api` tinyint(4) NOT NULL DEFAULT 0,
  `copyable` tinyint(4) NOT NULL DEFAULT 1,
  `editable` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_menu_sets` (
  `set_name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deletable` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_menu_templates` (
  `id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_modules` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(16) NOT NULL DEFAULT 'module',
  `subtypes` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `vendor` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(32) NOT NULL DEFAULT '',
  `help_url` varchar(128) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(32) NOT NULL DEFAULT '',
  `class_prefix` varchar(32) NOT NULL DEFAULT '',
  `db_prefix` varchar(32) NOT NULL DEFAULT '',
  `lang_category` varchar(64) NOT NULL DEFAULT '',
  `dependencies` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `pending_uninstall` tinyint(4) NOT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `updated` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_modules_file_tracks` (
  `id` int(11) UNSIGNED NOT NULL,
  `module_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `file` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_modules_relations` (
  `id` int(11) UNSIGNED NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `on_install` varchar(255) NOT NULL DEFAULT '',
  `on_uninstall` varchar(255) NOT NULL DEFAULT '',
  `on_enable` varchar(255) NOT NULL DEFAULT '',
  `on_disable` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_auths` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Title` varchar(128) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `OnClick` varchar(255) NOT NULL,
  `Icon` varchar(64) NOT NULL,
  `Style` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_captcha` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_category` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `search_object` varchar(64) NOT NULL,
  `form_object` varchar(64) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `join` varchar(255) NOT NULL,
  `where` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_chart` (
  `id` int(11) NOT NULL,
  `object` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  `field_date_ts` varchar(255) NOT NULL,
  `field_date_dt` varchar(255) NOT NULL,
  `field_status` varchar(255) NOT NULL,
  `column_date` int(11) NOT NULL DEFAULT 0,
  `column_count` int(11) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL,
  `options` text NOT NULL,
  `query` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_cmts` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Module` varchar(32) NOT NULL,
  `Table` varchar(50) NOT NULL,
  `CharsPostMin` int(10) NOT NULL,
  `CharsPostMax` int(10) NOT NULL,
  `CharsDisplayMax` int(10) NOT NULL,
  `Html` smallint(1) NOT NULL,
  `PerView` smallint(6) NOT NULL,
  `PerViewReplies` smallint(6) NOT NULL,
  `BrowseType` varchar(50) NOT NULL,
  `IsBrowseSwitch` smallint(1) NOT NULL,
  `PostFormPosition` varchar(50) NOT NULL,
  `NumberOfLevels` smallint(6) NOT NULL,
  `IsDisplaySwitch` smallint(1) NOT NULL,
  `IsRatable` smallint(1) NOT NULL,
  `ViewingThreshold` smallint(6) NOT NULL,
  `IsOn` smallint(1) NOT NULL,
  `RootStylePrefix` varchar(16) NOT NULL DEFAULT 'cmt',
  `BaseUrl` varchar(256) NOT NULL,
  `ObjectVote` varchar(64) NOT NULL DEFAULT '',
  `ObjectReaction` varchar(64) NOT NULL DEFAULT '',
  `ObjectScore` varchar(64) NOT NULL DEFAULT '',
  `ObjectReport` varchar(64) NOT NULL DEFAULT '',
  `TriggerTable` varchar(32) NOT NULL,
  `TriggerFieldId` varchar(32) NOT NULL,
  `TriggerFieldAuthor` varchar(32) NOT NULL,
  `TriggerFieldTitle` varchar(32) NOT NULL,
  `TriggerFieldComments` varchar(32) NOT NULL,
  `ClassName` varchar(32) NOT NULL,
  `ClassFile` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_connection` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `table` varchar(255) NOT NULL,
  `profile_initiator` tinyint(4) NOT NULL DEFAULT 1,
  `profile_content` tinyint(4) NOT NULL DEFAULT 0,
  `type` enum('one-way','mutual') NOT NULL,
  `tt_initiator` varchar(32) NOT NULL DEFAULT '',
  `tf_id_initiator` varchar(32) NOT NULL DEFAULT '',
  `tf_count_initiator` varchar(32) NOT NULL DEFAULT '',
  `tt_content` varchar(32) NOT NULL DEFAULT '',
  `tf_id_content` varchar(32) NOT NULL DEFAULT '',
  `tf_count_content` varchar(32) NOT NULL DEFAULT '',
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_content_info` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `alert_unit` varchar(32) NOT NULL,
  `alert_action_add` varchar(32) NOT NULL,
  `alert_action_update` varchar(32) NOT NULL,
  `alert_action_delete` varchar(32) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_editor` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `skin` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_embeds` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_favorite` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `table_track` varchar(32) NOT NULL,
  `table_lists` varchar(32) NOT NULL,
  `pruning` int(11) NOT NULL DEFAULT 31536000,
  `is_on` tinyint(4) NOT NULL DEFAULT 1,
  `is_undo` tinyint(4) NOT NULL DEFAULT 1,
  `is_public` tinyint(4) NOT NULL DEFAULT 1,
  `base_url` varchar(256) NOT NULL DEFAULT '',
  `trigger_table` varchar(32) NOT NULL,
  `trigger_field_id` varchar(32) NOT NULL,
  `trigger_field_author` varchar(32) NOT NULL,
  `trigger_field_count` varchar(32) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `is_on` tinyint(4) NOT NULL DEFAULT 1,
  `is_undo` tinyint(4) NOT NULL DEFAULT 1,
  `base_url` varchar(256) NOT NULL DEFAULT '',
  `trigger_table` varchar(32) NOT NULL,
  `trigger_field_id` varchar(32) NOT NULL,
  `trigger_field_author` varchar(32) NOT NULL,
  `trigger_field_flag` varchar(32) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_file_handlers` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `preg_ext` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `order` int(11) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_form` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `form_attrs` text NOT NULL,
  `submit_name` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `uri_title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `deletable` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `parent_form` varchar(64) NOT NULL DEFAULT '',
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_grid` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `source_type` enum('Array','Sql') NOT NULL,
  `source` text NOT NULL,
  `table` varchar(255) NOT NULL,
  `field_id` varchar(255) NOT NULL,
  `field_order` varchar(255) NOT NULL,
  `field_active` varchar(255) NOT NULL,
  `order_get_field` varchar(255) NOT NULL DEFAULT 'order_field',
  `order_get_dir` varchar(255) NOT NULL DEFAULT 'order_dir',
  `paginate_url` varchar(255) NOT NULL,
  `paginate_per_page` int(11) NOT NULL DEFAULT 10,
  `paginate_simple` varchar(255) DEFAULT NULL,
  `paginate_get_start` varchar(255) NOT NULL,
  `paginate_get_per_page` varchar(255) NOT NULL,
  `filter_fields` text NOT NULL,
  `filter_fields_translatable` text NOT NULL,
  `filter_mode` enum('like','fulltext','auto') NOT NULL DEFAULT 'auto',
  `filter_get` varchar(255) NOT NULL DEFAULT 'filter',
  `sorting_fields` text NOT NULL,
  `sorting_fields_translatable` text NOT NULL,
  `visible_for_levels` int(11) NOT NULL DEFAULT 2147483647,
  `responsive` tinyint(4) NOT NULL DEFAULT 1,
  `show_total_count` tinyint(4) NOT NULL DEFAULT 0,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_live_updates` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `init` tinyint(4) NOT NULL DEFAULT 0,
  `frequency` tinyint(4) NOT NULL DEFAULT 1,
  `service_call` text NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_location_field` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_location_map` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_logs` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `logs_storage` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `class_name` varchar(255) NOT NULL,
  `class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_menu` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `set_name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `template_id` int(11) NOT NULL,
  `config_api` text NOT NULL,
  `persistent` tinyint(4) NOT NULL DEFAULT 0,
  `deletable` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_metatags` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL,
  `table_keywords` varchar(255) NOT NULL,
  `table_locations` varchar(255) NOT NULL,
  `table_mentions` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_page` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL DEFAULT 0,
  `object` varchar(64) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `title_system` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `module` varchar(32) NOT NULL,
  `cover` tinyint(4) NOT NULL DEFAULT 1,
  `cover_image` int(11) NOT NULL DEFAULT 0,
  `cover_title` varchar(255) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT 1,
  `layout_id` int(11) NOT NULL,
  `sticky_columns` tinyint(4) NOT NULL DEFAULT 0,
  `submenu` varchar(64) NOT NULL DEFAULT '',
  `visible_for_levels` int(11) NOT NULL DEFAULT 2147483647,
  `visible_for_levels_editable` tinyint(4) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `content_info` varchar(64) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_robots` varchar(255) NOT NULL,
  `cache_lifetime` int(11) NOT NULL DEFAULT 0,
  `cache_editable` tinyint(4) NOT NULL DEFAULT 1,
  `inj_head` text NOT NULL,
  `inj_footer` text NOT NULL,
  `config_api` text NOT NULL,
  `deletable` tinyint(1) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_payments` (
  `id` int(11) NOT NULL,
  `object` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `uri` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_player` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `skin` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_privacy` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `default_group` varchar(255) NOT NULL DEFAULT '1',
  `spaces` varchar(255) NOT NULL DEFAULT 'all',
  `table` varchar(255) NOT NULL DEFAULT '',
  `table_field_id` varchar(255) NOT NULL DEFAULT '',
  `table_field_author` varchar(255) NOT NULL DEFAULT '',
  `override_class_name` varchar(255) NOT NULL DEFAULT '',
  `override_class_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_push` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_recommendation` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(64) NOT NULL DEFAULT '',
  `connection` varchar(64) NOT NULL DEFAULT '',
  `content_info` varchar(64) NOT NULL DEFAULT '',
  `countable` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_report` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `table_main` varchar(32) NOT NULL,
  `table_track` varchar(32) NOT NULL,
  `pruning` int(11) NOT NULL DEFAULT 31536000,
  `is_on` tinyint(4) NOT NULL DEFAULT 1,
  `base_url` varchar(256) NOT NULL DEFAULT '',
  `object_comment` varchar(64) NOT NULL,
  `trigger_table` varchar(32) NOT NULL,
  `trigger_field_id` varchar(32) NOT NULL,
  `trigger_field_author` varchar(32) NOT NULL,
  `trigger_field_count` varchar(32) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_rss` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_score` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `module` varchar(32) NOT NULL,
  `table_main` varchar(50) NOT NULL DEFAULT '',
  `table_track` varchar(50) NOT NULL DEFAULT '',
  `post_timeout` int(11) NOT NULL DEFAULT 0,
  `pruning` int(11) NOT NULL DEFAULT 31536000,
  `is_undo` tinyint(1) NOT NULL DEFAULT 0,
  `is_on` tinyint(1) NOT NULL DEFAULT 1,
  `trigger_table` varchar(32) NOT NULL DEFAULT '',
  `trigger_field_id` varchar(32) NOT NULL DEFAULT '',
  `trigger_field_author` varchar(32) NOT NULL DEFAULT '',
  `trigger_field_score` varchar(32) NOT NULL DEFAULT '',
  `trigger_field_cup` varchar(32) NOT NULL DEFAULT '',
  `trigger_field_cdown` varchar(32) NOT NULL DEFAULT '',
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_search` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ObjectName` varchar(64) NOT NULL DEFAULT '',
  `Title` varchar(50) NOT NULL DEFAULT '',
  `Order` int(11) NOT NULL,
  `GlobalSearch` tinyint(4) NOT NULL DEFAULT 1,
  `ClassName` varchar(50) NOT NULL DEFAULT '',
  `ClassPath` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_search_extended` (
  `id` int(10) UNSIGNED NOT NULL,
  `object` varchar(64) NOT NULL DEFAULT '',
  `object_content_info` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `filter` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_sms` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_storage` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `params` text NOT NULL,
  `token_life` int(11) NOT NULL,
  `cache_control` int(11) NOT NULL,
  `levels` tinyint(4) NOT NULL,
  `table_files` varchar(64) NOT NULL,
  `ext_mode` enum('allow-deny','deny-allow') NOT NULL,
  `ext_allow` text NOT NULL,
  `ext_deny` text NOT NULL,
  `quota_size` int(11) NOT NULL,
  `current_size` int(11) NOT NULL,
  `quota_number` int(11) NOT NULL,
  `current_number` int(11) NOT NULL,
  `max_file_size` int(11) NOT NULL,
  `ts` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_transcoder` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `storage_object` varchar(64) NOT NULL,
  `source_type` enum('Folder','Storage','Proxy') NOT NULL,
  `source_params` text NOT NULL,
  `private` enum('auto','yes','no') NOT NULL,
  `atime_tracking` int(11) NOT NULL,
  `atime_pruning` int(11) NOT NULL,
  `ts` int(11) NOT NULL DEFAULT 0,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_uploader` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_view` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `table_track` varchar(32) NOT NULL,
  `period` int(11) NOT NULL DEFAULT 86400,
  `pruning` int(11) NOT NULL DEFAULT 31536000,
  `is_on` tinyint(4) NOT NULL DEFAULT 1,
  `trigger_table` varchar(32) NOT NULL,
  `trigger_field_id` varchar(32) NOT NULL,
  `trigger_field_author` varchar(32) NOT NULL,
  `trigger_field_count` varchar(32) NOT NULL,
  `class_name` varchar(32) NOT NULL DEFAULT '',
  `class_file` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_vote` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Module` varchar(32) NOT NULL DEFAULT '',
  `TableMain` varchar(50) NOT NULL DEFAULT '',
  `TableTrack` varchar(50) NOT NULL DEFAULT '',
  `PostTimeout` int(11) NOT NULL DEFAULT 0,
  `MinValue` tinyint(4) NOT NULL DEFAULT 1,
  `MaxValue` tinyint(4) NOT NULL DEFAULT 5,
  `Pruning` int(11) NOT NULL DEFAULT 31536000,
  `IsUndo` tinyint(1) NOT NULL DEFAULT 0,
  `IsOn` tinyint(1) NOT NULL DEFAULT 1,
  `TriggerTable` varchar(32) NOT NULL DEFAULT '',
  `TriggerFieldId` varchar(32) NOT NULL DEFAULT '',
  `TriggerFieldAuthor` varchar(32) NOT NULL DEFAULT '',
  `TriggerFieldRate` varchar(32) NOT NULL DEFAULT '',
  `TriggerFieldRateCount` varchar(32) NOT NULL DEFAULT '',
  `ClassName` varchar(32) NOT NULL DEFAULT '',
  `ClassFile` varchar(256) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_objects_wiki` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `uri` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `module` varchar(32) NOT NULL,
  `override_class_name` varchar(255) NOT NULL,
  `override_class_file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `type` enum('value','digit','text','code','checkbox','select','combobox','file','image','list','rlist','rgb','rgba','datetime') NOT NULL DEFAULT 'digit',
  `extra` text NOT NULL DEFAULT '',
  `check` varchar(32) NOT NULL,
  `check_params` text NOT NULL,
  `check_error` varchar(255) NOT NULL DEFAULT '',
  `order` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_options_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `type_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `caption` varchar(64) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_options_mixes` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(64) NOT NULL DEFAULT '',
  `category` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(64) NOT NULL DEFAULT '',
  `dark` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `editable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_options_mixes2options` (
  `id` int(11) NOT NULL,
  `option` varchar(64) NOT NULL DEFAULT '',
  `mix_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_options_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `group` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `caption` varchar(64) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `order` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_blocks` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `cell_id` int(11) NOT NULL DEFAULT 1,
  `module` varchar(32) NOT NULL,
  `title_system` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `designbox_id` int(11) NOT NULL DEFAULT 11,
  `class` varchar(128) NOT NULL DEFAULT '',
  `submenu` varchar(64) NOT NULL DEFAULT '',
  `tabs` tinyint(4) NOT NULL DEFAULT 0,
  `async` int(11) NOT NULL DEFAULT 0,
  `visible_for_levels` int(11) NOT NULL DEFAULT 2147483647,
  `hidden_on` varchar(255) NOT NULL DEFAULT '',
  `type` enum('raw','html','creative','bento_grid','lang','image','rss','menu','custom','service','wiki') NOT NULL DEFAULT 'raw',
  `content` mediumtext NOT NULL,
  `content_empty` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `text_updated` int(11) NOT NULL,
  `help` varchar(255) NOT NULL,
  `cache_lifetime` int(11) NOT NULL DEFAULT 0,
  `config_api` text NOT NULL,
  `deletable` tinyint(4) NOT NULL DEFAULT 1,
  `copyable` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `active_api` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_blocks_data` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `content_module` varchar(32) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_content_placeholders` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_design_boxes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_layouts` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `cells_number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_types` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_pages_wiki_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `language` varchar(5) NOT NULL,
  `main_lang` tinyint(4) NOT NULL DEFAULT 0,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `content` mediumtext NOT NULL,
  `unsafe` tinyint(4) NOT NULL DEFAULT 0,
  `notes` varchar(255) NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_permalinks` (
  `id` int(11) UNSIGNED NOT NULL,
  `standard` varchar(128) NOT NULL DEFAULT '',
  `permalink` varchar(128) NOT NULL DEFAULT '',
  `check` varchar(64) NOT NULL DEFAULT '',
  `compare_by_prefix` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_preloader` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `type` varchar(16) NOT NULL,
  `content` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_privacy_defaults` (
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `action_id` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_privacy_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `check` text NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_privacy_groups_custom` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `object` varchar(64) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_privacy_groups_custom_members` (
  `group_id` int(11) NOT NULL DEFAULT 0,
  `member_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_privacy_groups_custom_memberships` (
  `group_id` int(11) NOT NULL DEFAULT 0,
  `membership_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `cfw_value` int(10) UNSIGNED NOT NULL DEFAULT 2147483647,
  `cfw_items` int(10) UNSIGNED NOT NULL DEFAULT 2147483647,
  `cfu_items` int(10) UNSIGNED NOT NULL DEFAULT 2147483647,
  `cfu_locked` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('active','pending','suspended') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_profiles_conn_bans` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_profiles_conn_friends` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `mutual` tinyint(4) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_profiles_conn_relations` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL DEFAULT 0,
  `content` int(11) NOT NULL DEFAULT 0,
  `relation` int(11) NOT NULL DEFAULT 0,
  `mutual` tinyint(4) NOT NULL DEFAULT 0,
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_profiles_conn_subscriptions` (
  `id` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `added` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_profiles_track` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `action` varchar(32) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_queue_email` (
  `id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL DEFAULT '',
  `params` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_queue_push` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `message` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_recommendation_criteria` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `source_type` enum('sql','service') NOT NULL,
  `source` text NOT NULL,
  `params` text NOT NULL,
  `weight` float NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_recommendation_data` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `item_type` varchar(64) NOT NULL DEFAULT '',
  `item_value` int(11) NOT NULL DEFAULT 0,
  `item_reducer` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_rewrite_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `preg` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_search_extended_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `object` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `values` text NOT NULL DEFAULT '',
  `pass` varchar(32) NOT NULL,
  `search_type` varchar(32) NOT NULL DEFAULT '',
  `search_value` varchar(255) NOT NULL DEFAULT '',
  `search_operator` varchar(32) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_search_extended_sorting_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `object` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `direction` varchar(32) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_seo_links` (
  `id` int(11) NOT NULL,
  `module` varchar(32) NOT NULL,
  `page_uri` varchar(255) NOT NULL,
  `param_name` varchar(32) NOT NULL,
  `param_value` varchar(32) NOT NULL,
  `uri` varchar(50) NOT NULL,
  `added` int(48) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_seo_uri_rewrites` (
  `id` int(11) NOT NULL,
  `uri_orig` varchar(255) NOT NULL,
  `uri_rewrite` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_sessions` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_statistics` (
  `id` int(11) UNSIGNED NOT NULL,
  `module` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(32) NOT NULL DEFAULT '',
  `query` text NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_pages_widgets` (
  `id` int(11) UNSIGNED NOT NULL,
  `page_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `widget_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_roles_actions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_roles_actions2roles` (
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `action_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_roles_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `role` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_widgets` (
  `id` int(11) UNSIGNED NOT NULL,
  `page_id` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `click` text NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `cnt_notices` text NOT NULL DEFAULT '',
  `cnt_actions` text NOT NULL DEFAULT '',
  `featured` tinyint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_std_widgets_bookmarks` (
  `id` int(11) NOT NULL,
  `widget_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `profile_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bookmark` tinyint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_storage_deletions` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `file_id` int(11) NOT NULL,
  `requested` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_storage_ghosts` (
  `iid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `object` varchar(64) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_storage_mime_types` (
  `ext` varchar(32) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `icon_font` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_storage_tokens` (
  `iid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_storage_user_quotas` (
  `profile_id` int(11) NOT NULL,
  `current_size` bigint(20) NOT NULL,
  `current_number` int(11) NOT NULL,
  `ts` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_transcoder_audio_files` (
  `id` int(11) NOT NULL,
  `transcoder_object` varchar(64) NOT NULL,
  `file_id` int(11) NOT NULL,
  `handler` varchar(255) NOT NULL,
  `atime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_transcoder_filters` (
  `id` int(11) NOT NULL,
  `transcoder_object` varchar(64) NOT NULL,
  `filter` varchar(32) NOT NULL,
  `filter_params` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_transcoder_images_files` (
  `id` int(11) NOT NULL,
  `transcoder_object` varchar(64) NOT NULL,
  `file_id` int(11) NOT NULL,
  `handler` varchar(255) NOT NULL,
  `atime` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_transcoder_queue` (
  `id` int(11) NOT NULL,
  `transcoder_object` varchar(64) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `file_url_source` varchar(255) NOT NULL,
  `file_id_source` varchar(255) NOT NULL,
  `file_url_result` varchar(255) NOT NULL,
  `file_ext_result` varchar(255) NOT NULL,
  `file_id_result` int(11) NOT NULL,
  `server` varchar(255) NOT NULL,
  `status` enum('pending','processing','complete','failed','delete') NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `log` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_transcoder_queue_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_transcoder_videos_files` (
  `id` int(11) NOT NULL,
  `transcoder_object` varchar(64) NOT NULL,
  `file_id` int(11) NOT NULL,
  `handler` varchar(255) NOT NULL,
  `atime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_wiki_files` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sys_wiki_images_resized` (
  `id` int(11) NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `remote_id` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` bigint(20) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `bx_acl_level_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`level_id`,`period`,`period_unit`);

ALTER TABLE `bx_acl_licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_id` (`price_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_ads_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);
ALTER TABLE `bx_ads_categories` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_ads_categories_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_ads_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_ads_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_ads_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_ads_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_ads_commodities`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_ads_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_ads_entries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_ads_entries` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_ads_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_ads_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_ads_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_ads_interested_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interested` (`entry_id`,`profile_id`);

ALTER TABLE `bx_ads_licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`entry_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_ads_licenses_deleted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`entry_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_ads_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_ads_links2content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link_id`,`content_id`);

ALTER TABLE `bx_ads_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_ads_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_ads_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_ads_offers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_ads_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_ads_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_ads_polls`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_ads_polls` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_ads_polls_answers`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_ads_polls_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_ads_polls_answers_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_ads_polls_answers_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_ads_promo_licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_ads_promo_licenses_deleted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_ads_promo_tracker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `track` (`entry_id`,`date`);

ALTER TABLE `bx_ads_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_ads_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_ads_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_ads_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_ads_reviews`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_ads_reviews` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_ads_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_ads_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_ads_sources`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_ads_sources_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_ads_sources_options_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`profile_id`,`option_id`);

ALTER TABLE `bx_ads_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_ads_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_ads_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_ads_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_ads_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_albums`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_albums_albums` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_albums_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_albums_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_albums_cmts_media`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_albums_cmts_media` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_albums_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_albums_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_albums_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_albums_favorites_media_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_albums_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_albums_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_albums_files2albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_content` (`file_id`,`content_id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_albums_files2albums` ADD FULLTEXT KEY `search_fields` (`title`);

ALTER TABLE `bx_albums_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_albums_meta_keywords_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_albums_meta_keywords_media_camera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_albums_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_albums_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_albums_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_albums_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_albums_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_albums_reports_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_albums_reports_media_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_albums_scores_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_albums_scores_media_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_views_media_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_albums_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_albums_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_albums_votes_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_albums_votes_media_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_albums_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_anon_follow_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_antispam_block_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_antispam_disposable_email_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`(191));

ALTER TABLE `bx_antispam_dnsbluri_zones`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_antispam_dnsbl_rules`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_antispam_ip_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `From` (`From`),
  ADD KEY `To` (`To`);

ALTER TABLE `bx_attendant_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `action` (`action`);

ALTER TABLE `bx_classes_classes`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_classes_classes` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_classes_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_classes_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_classes_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_classes_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_classes_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_classes_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_classes_links2content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link_id`,`content_id`);

ALTER TABLE `bx_classes_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_classes_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_classes_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_classes_modules`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_classes_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_classes_polls` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_classes_polls_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);
ALTER TABLE `bx_classes_polls_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_classes_polls_answers_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_classes_polls_answers_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_classes_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_classes_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_classes_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_classes_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_classes_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_classes_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_classes_sounds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_sounds_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_student` (`class_id`,`student_profile_id`);

ALTER TABLE `bx_classes_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_classes_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_classes_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_classes_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_cnl_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_cnl_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_cnl_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_cnl_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_cnl_content`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_cnl_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_name` (`channel_name`);
ALTER TABLE `bx_cnl_data` ADD FULLTEXT KEY `search_fields` (`channel_name`);

ALTER TABLE `bx_cnl_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_cnl_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_cnl_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_cnl_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_cnl_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_cnl_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_cnl_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_cnl_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_cnl_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_cnl_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_cnl_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_cnl_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_cnl_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_cnl_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_contact_entries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_convos_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_convos_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_convos_conv2folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collaborator_folder_conv` (`collaborator`,`folder_id`,`conv_id`),
  ADD KEY `conv_id` (`conv_id`);

ALTER TABLE `bx_convos_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_reply_timestamp` (`last_reply_timestamp`);

ALTER TABLE `bx_convos_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_convos_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

ALTER TABLE `bx_convos_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_convos_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_courses_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin` (`group_profile_id`,`fan_id`);

ALTER TABLE `bx_courses_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_courses_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_courses_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_courses_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_courses_content_data`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_courses_content_data2users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pass` (`data_id`,`profile_id`);

ALTER TABLE `bx_courses_content_nodes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_courses_content_nodes2users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pass` (`node_id`,`profile_id`);

ALTER TABLE `bx_courses_content_structure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `node_id` (`node_id`);

ALTER TABLE `bx_courses_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_courses_data` ADD FULLTEXT KEY `search_fields` (`name`,`desc`);

ALTER TABLE `bx_courses_fans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_courses_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_courses_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_courses_invites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_courses_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_courses_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_courses_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_courses_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_courses_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_courses_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`profile_id`,`role_id`,`period`,`period_unit`);

ALTER TABLE `bx_courses_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_courses_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_courses_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_courses_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_courses_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_courses_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_courses_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_courses_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_courses_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_credits_bundles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_credits_history`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_credits_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`bundle_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_credits_orders_deleted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`bundle_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_credits_profiles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_credits_withdrawals`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_donations_entries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_donations_entries_deleted`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_donations_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_events_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin` (`group_profile_id`,`fan_id`);

ALTER TABLE `bx_events_check_in`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_events_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_events_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_events_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_events_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_events_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_events_data` ADD FULLTEXT KEY `search_fields` (`event_name`,`event_desc`);

ALTER TABLE `bx_events_fans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_events_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_events_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_events_intervals`
  ADD PRIMARY KEY (`interval_id`),
  ADD KEY `event_id` (`event_id`);

ALTER TABLE `bx_events_invites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_events_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_events_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_events_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_events_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_events_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_events_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`profile_id`,`role_id`,`period`,`period_unit`);

ALTER TABLE `bx_events_qnr_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `answer` (`question_id`,`profile_id`);

ALTER TABLE `bx_events_qnr_questions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_events_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_events_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_events_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_events_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_events_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_events_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_events_sessions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_events_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_events_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_events_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_fdb_answers`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_fdb_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_fdb_answers2users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `answer` (`answer_id`,`profile_id`);

ALTER TABLE `bx_fdb_questions`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_fdb_questions` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_files_bookmarks`
  ADD PRIMARY KEY (`object_id`,`profile_id`);

ALTER TABLE `bx_files_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_files_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_files_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_files_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_files_downloading_jobs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_files_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_files_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_files_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_files_main`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_files_main` ADD FULLTEXT KEY `search_fields` (`title`,`desc`,`data`);

ALTER TABLE `bx_files_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_files_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_files_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_files_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_files_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_files_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_files_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_files_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_files_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_files_sounds_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_files_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_files_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_files_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_files_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_forum_categories`
  ADD PRIMARY KEY (`category`);

ALTER TABLE `bx_forum_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_forum_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_forum_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_forum_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_forum_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_forum_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lr_timestamp` (`lr_timestamp`);
ALTER TABLE `bx_forum_discussions` ADD FULLTEXT KEY `title_text` (`title`,`text`,`text_comments`);

ALTER TABLE `bx_forum_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_forum_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_forum_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_forum_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_forum_links2content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link_id`,`content_id`);

ALTER TABLE `bx_forum_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_forum_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_forum_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_forum_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_forum_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_forum_polls` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_forum_polls_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);
ALTER TABLE `bx_forum_polls_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_forum_polls_answers_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_forum_polls_answers_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_forum_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_forum_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_forum_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_forum_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_forum_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_forum_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_forum_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_forum_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_forum_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_forum_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_forum_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_forum_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_glossary_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_glossary_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_glossary_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_glossary_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_glossary_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_glossary_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_glossary_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_glossary_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_glossary_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_glossary_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_glossary_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_glossary_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_glossary_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_glossary_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_glossary_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_glossary_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_glossary_terms`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_glossary_terms` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_glossary_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_glossary_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_glossary_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_groups_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin` (`group_profile_id`,`fan_id`);

ALTER TABLE `bx_groups_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_groups_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_groups_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_groups_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_groups_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_groups_data` ADD FULLTEXT KEY `search_fields` (`group_name`,`group_desc`);

ALTER TABLE `bx_groups_fans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_groups_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_groups_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_groups_invites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_groups_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_groups_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_groups_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_groups_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_groups_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_groups_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`profile_id`,`role_id`,`period`,`period_unit`);

ALTER TABLE `bx_groups_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_groups_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_groups_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_groups_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_groups_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_groups_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_groups_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_groups_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_groups_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_help_tours`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_help_tours_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour` (`tour`);

ALTER TABLE `bx_help_tours_track_views`
  ADD PRIMARY KEY (`account`,`tour`),
  ADD KEY `account` (`account`);

ALTER TABLE `bx_inv_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bx_inv_invites_request_id` (`request_id`);

ALTER TABLE `bx_inv_requests`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_jobs_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin` (`group_profile_id`,`fan_id`);

ALTER TABLE `bx_jobs_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_jobs_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_jobs_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_jobs_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_jobs_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_jobs_data` ADD FULLTEXT KEY `search_fields` (`name`,`desc`);

ALTER TABLE `bx_jobs_fans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_jobs_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_jobs_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_jobs_invites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_jobs_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_jobs_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_jobs_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_jobs_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_jobs_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_jobs_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`profile_id`,`role_id`,`period`,`period_unit`);

ALTER TABLE `bx_jobs_qnr_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `answer` (`question_id`,`profile_id`);

ALTER TABLE `bx_jobs_qnr_questions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_jobs_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_jobs_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_jobs_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_jobs_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_jobs_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_jobs_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_jobs_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_jobs_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_jobs_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_mapshow_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

ALTER TABLE `bx_market_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_market_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_market_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_market_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_market_downloads_track`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_market_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_market_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_market_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_market_files2products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_content` (`file_id`,`content_id`),
  ADD KEY `content_id` (`content_id`);

ALTER TABLE `bx_market_licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_market_licenses_deleted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`profile_id`),
  ADD KEY `license` (`license`);

ALTER TABLE `bx_market_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_market_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_market_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_market_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_market_photos2products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_content` (`file_id`,`content_id`),
  ADD KEY `content_id` (`content_id`);

ALTER TABLE `bx_market_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_market_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`(191));
ALTER TABLE `bx_market_products` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_market_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_market_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_market_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_market_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_market_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_market_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_market_subproducts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_market_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_market_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_market_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_massmailer_campaigns`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_massmailer_campaigns` ADD FULLTEXT KEY `title_text` (`title`,`subject`);

ALTER TABLE `bx_massmailer_letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `hash` (`hash`);

ALTER TABLE `bx_massmailer_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `hash` (`hash`),
  ADD KEY `letter_hash` (`letter_hash`);

ALTER TABLE `bx_massmailer_segments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_massmailer_unsubscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

ALTER TABLE `bx_notifications_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `object_owner_id` (`object_owner_id`);

ALTER TABLE `bx_notifications_events2users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event` (`user_id`,`event_id`);

ALTER TABLE `bx_notifications_handlers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `handler` (`group`,`type`),
  ADD UNIQUE KEY `alert` (`alert_unit`,`alert_action`);

ALTER TABLE `bx_notifications_queue`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_notifications_read`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `bx_notifications_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting` (`handler_id`,`type`,`delivery`);

ALTER TABLE `bx_notifications_settings2users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting` (`setting_id`,`user_id`);

ALTER TABLE `bx_organizations_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin` (`group_profile_id`,`fan_id`);

ALTER TABLE `bx_organizations_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_organizations_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_organizations_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_organizations_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_organizations_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_organizations_data` ADD FULLTEXT KEY `search_fields` (`org_name`,`org_desc`);

ALTER TABLE `bx_organizations_fans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_organizations_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_organizations_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_organizations_invites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_organizations_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_organizations_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_organizations_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_organizations_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_organizations_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_organizations_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`profile_id`,`role_id`,`period`,`period_unit`);

ALTER TABLE `bx_organizations_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_organizations_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_organizations_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_organizations_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_organizations_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_organizations_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_organizations_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_organizations_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_organizations_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_payment_cart`
  ADD PRIMARY KEY (`client_id`);

ALTER TABLE `bx_payment_commissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_payment_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

ALTER TABLE `bx_payment_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_payment_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uri` (`name`);

ALTER TABLE `bx_payment_providers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_payment_providers_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_payment_stripe_payments_pending`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`);

ALTER TABLE `bx_payment_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pending_id` (`pending_id`);

ALTER TABLE `bx_payment_subscriptions_deleted`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pending_id` (`pending_id`);

ALTER TABLE `bx_payment_transactions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_payment_transactions_pending`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_payment_user_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`user_id`,`option_id`);

ALTER TABLE `bx_persons_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_persons_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_persons_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_persons_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_persons_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_persons_data` ADD FULLTEXT KEY `search_fields` (`fullname`,`description`);

ALTER TABLE `bx_persons_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_persons_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_persons_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_persons_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_persons_pictures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_persons_pictures_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_persons_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_persons_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_persons_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_persons_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_persons_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_persons_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_persons_skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `content_id` (`content_id`);

ALTER TABLE `bx_persons_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_persons_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_persons_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_photos_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_photos_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_photos_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_photos_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_photos_entries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_photos_entries` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_photos_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_photos_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_photos_media_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_photos_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_photos_meta_keywords_camera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_photos_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_photos_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_photos_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_photos_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_photos_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_photos_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_photos_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_photos_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_photos_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_photos_svotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_photos_svotes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_photos_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_photos_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_photos_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_polls_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_polls_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_polls_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_polls_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_polls_entries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_polls_entries` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_polls_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_polls_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_polls_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_polls_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_polls_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_polls_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_polls_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_polls_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_polls_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_polls_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_polls_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_polls_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_polls_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_polls_subentries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_polls_subentries` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_polls_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_polls_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_polls_votes_subentries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_polls_votes_subentries_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_polls_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_posts_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_posts_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_posts_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_posts_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_posts_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_posts_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_posts_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_posts_links2content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link_id`,`content_id`);

ALTER TABLE `bx_posts_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_posts_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_posts_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_posts_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_posts_polls` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_posts_polls_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);
ALTER TABLE `bx_posts_polls_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_posts_polls_answers_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_posts_polls_answers_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_posts_posts`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_posts_posts` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_posts_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_posts_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_posts_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_posts_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_posts_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_posts_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_posts_sounds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_sounds_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_posts_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_posts_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_posts_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_quoteofday_internal`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_quoteofday_internal` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_reminders_entries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_reminders_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_reputation_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `object_id` (`object_id`);

ALTER TABLE `bx_reputation_handlers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alert` (`alert_unit`,`alert_action`);

ALTER TABLE `bx_reputation_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `bx_reputation_profiles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_reputation_profiles_levels`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_reviews_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_reviews_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_reviews_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_reviews_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_reviews_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_reviews_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_reviews_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_reviews_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_reviews_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_reviews_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_reviews_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_reviews_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_reviews_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_reviews_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_reviews_polls` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_reviews_polls_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);
ALTER TABLE `bx_reviews_polls_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_reviews_polls_answers_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_reviews_polls_answers_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_reviews_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_reviews_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_reviews_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_reviews_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_reviews_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviewed_profile` (`reviewed_profile`);
ALTER TABLE `bx_reviews_reviews` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_reviews_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_reviews_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_reviews_svotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_reviews_svotes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_reviews_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_reviews_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_reviews_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_reviews_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_reviews_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_reviews_voting_options`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_spaces_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin` (`group_profile_id`,`fan_id`);

ALTER TABLE `bx_spaces_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_spaces_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_spaces_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_spaces_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_spaces_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_spaces_data` ADD FULLTEXT KEY `search_fields` (`space_name`,`space_desc`);

ALTER TABLE `bx_spaces_fans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_spaces_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_spaces_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_spaces_invites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_spaces_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_spaces_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_spaces_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_spaces_pics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_spaces_pics_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_spaces_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `type` (`profile_id`,`role_id`,`period`,`period_unit`);

ALTER TABLE `bx_spaces_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_spaces_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_spaces_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_spaces_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_spaces_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_spaces_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_spaces_stars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_spaces_stars_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_spaces_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_spaces_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_spaces_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_stories_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_stories_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_stories_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_stories_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_stories_entries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_stories_entries` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_stories_entries_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_content` (`file_id`,`content_id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_stories_entries_media` ADD FULLTEXT KEY `search_fields` (`title`);

ALTER TABLE `bx_stories_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_stories_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_stories_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_stories_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_stories_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_stories_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_stories_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_stories_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_stories_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_stories_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_stories_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_stories_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_stories_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_tasks_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_tasks_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_tasks_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_tasks_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_tasks_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_tasks_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_tasks_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_tasks_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_tasks_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_tasks_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_tasks_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_tasks_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_tasks_photos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_tasks_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_tasks_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_tasks_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_tasks_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_tasks_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_tasks_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_tasks_tasks`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_tasks_tasks` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_tasks_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_tasks_videos_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_tasks_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_tasks_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_tasks_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_timeline_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_timeline_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_timeline_comments`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_timeline_comments` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_timeline_ef_files`
  ADD PRIMARY KEY (`event_id`);

ALTER TABLE `bx_timeline_ef_photos`
  ADD PRIMARY KEY (`event_id`);

ALTER TABLE `bx_timeline_ef_videos`
  ADD PRIMARY KEY (`event_id`);

ALTER TABLE `bx_timeline_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `object_id` (`object_id`);
ALTER TABLE `bx_timeline_events` ADD FULLTEXT KEY `search_fields` (`title`,`description`);

ALTER TABLE `bx_timeline_events2users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `view` (`user_id`,`event_id`);

ALTER TABLE `bx_timeline_events_slice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `object_id` (`object_id`);
ALTER TABLE `bx_timeline_events_slice` ADD FULLTEXT KEY `search_fields` (`title`,`description`);

ALTER TABLE `bx_timeline_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_timeline_files2events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media` (`event_id`,`media_id`);

ALTER TABLE `bx_timeline_handlers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alert` (`alert_unit`,`alert_action`);

ALTER TABLE `bx_timeline_hot_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id` (`event_id`);

ALTER TABLE `bx_timeline_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_timeline_links2events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link_id`,`event_id`);

ALTER TABLE `bx_timeline_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_timeline_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_timeline_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_timeline_mute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `bx_timeline_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_timeline_photos2events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media` (`event_id`,`media_id`);

ALTER TABLE `bx_timeline_photos_processed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_timeline_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);
ALTER TABLE `bx_timeline_polls` ADD FULLTEXT KEY `search_fields` (`text`);

ALTER TABLE `bx_timeline_polls_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);
ALTER TABLE `bx_timeline_polls_answers` ADD FULLTEXT KEY `title` (`title`);

ALTER TABLE `bx_timeline_polls_answers_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_timeline_polls_answers_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_timeline_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_timeline_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_timeline_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_timeline_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_timeline_reposts_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id` (`event_id`),
  ADD KEY `repost` (`reposted_id`,`author_nip`);

ALTER TABLE `bx_timeline_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_timeline_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_timeline_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_timeline_videos2events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media` (`event_id`,`media_id`);

ALTER TABLE `bx_timeline_videos_processed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_timeline_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_timeline_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_timeline_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_videos_cmts`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_videos_cmts` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_videos_cmts_notes`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `bx_videos_cmts_notes` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `bx_videos_embeds_providers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_videos_entries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bx_videos_entries` ADD FULLTEXT KEY `title_text` (`title`,`text`);

ALTER TABLE `bx_videos_favorites_lists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_videos_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_videos_media_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_videos_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `bx_videos_meta_locations`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `country_state_city` (`country`,`state`(8),`city`(8));

ALTER TABLE `bx_videos_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `bx_videos_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_videos_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_videos_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_videos_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_videos_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_videos_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_videos_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_videos_svotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_videos_svotes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_videos_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `bx_videos_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_videos_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_videos_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_workspaces_data`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bx_workspaces_favorites_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`author_id`);

ALTER TABLE `bx_workspaces_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `bx_workspaces_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_workspaces_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_workspaces_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `bx_workspaces_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_workspaces_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `bx_workspaces_views_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`object_id`,`viewer_id`,`viewer_nip`);

ALTER TABLE `bx_workspaces_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `bx_workspaces_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(191)),
  ADD KEY `added` (`added`),
  ADD KEY `logged` (`logged`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `sys_accounts_password`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_accounts_pictures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_accounts_pictures_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_acl_actions`
  ADD PRIMARY KEY (`ID`);
ALTER TABLE `sys_acl_actions` ADD FULLTEXT KEY `ModuleAndName` (`Module`,`Name`);

ALTER TABLE `sys_acl_actions_track`
  ADD PRIMARY KEY (`IDAction`,`IDMember`);

ALTER TABLE `sys_acl_levels`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);
ALTER TABLE `sys_acl_levels` ADD FULLTEXT KEY `Description` (`Description`);

ALTER TABLE `sys_acl_levels_members`
  ADD PRIMARY KEY (`IDMember`,`IDLevel`,`DateStarts`);

ALTER TABLE `sys_acl_matrix`
  ADD PRIMARY KEY (`IDLevel`,`IDAction`);

ALTER TABLE `sys_agents_assistants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_agents_assistants_chats`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_agents_assistants_chats_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_agents_assistants_chats_messages`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `sys_agents_assistants_chats_messages` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `sys_agents_assistants_files`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_agents_automators`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_agents_automators_assistants`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_agents_automators_helpers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_agents_automators_messages`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `cmt_object_id` (`cmt_object_id`,`cmt_parent_id`);
ALTER TABLE `sys_agents_automators_messages` ADD FULLTEXT KEY `search_fields` (`cmt_text`);

ALTER TABLE `sys_agents_automators_providers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_agents_helpers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_agents_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_agents_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_agents_providers_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`provider_id`,`option_id`);

ALTER TABLE `sys_agents_provider_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_agents_provider_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alert_handler` (`unit`,`action`,`handler_id`);

ALTER TABLE `sys_alerts_cache_triggers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_alerts_handlers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_api_keys`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_api_origins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_audit`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_background_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_badges`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_badges2objects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `badge_object` (`object_id`,`badge_id`);

ALTER TABLE `sys_categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_categories2objects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_cmts_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_cmt_id` (`system_id`,`cmt_id`);

ALTER TABLE `sys_cmts_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_cmts_images2entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image` (`system_id`,`cmt_id`,`image_id`);

ALTER TABLE `sys_cmts_images_preview`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_cmts_meta_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `keyword` (`keyword`(250));

ALTER TABLE `sys_cmts_meta_mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `profile_id` (`profile_id`);

ALTER TABLE `sys_cmts_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `sys_cmts_reactions_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `sys_cmts_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `sys_cmts_reports_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report` (`object_id`,`author_nip`);

ALTER TABLE `sys_cmts_scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `sys_cmts_scores_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `sys_cmts_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `sys_cmts_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `sys_content_info_grids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grid_object` (`grid_object`);

ALTER TABLE `sys_cron_jobs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `sys_embeded_data`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_form_displays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_display_name` (`object`,`display_name`);

ALTER TABLE `sys_form_display_inputs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `display_input` (`display_name`,`input_name`);

ALTER TABLE `sys_form_fields_ids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_form_fields_id` (`object_form`,`content_id`,`nested_content_id`);

ALTER TABLE `sys_form_fields_reaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reaction` (`object_id`,`reaction`);

ALTER TABLE `sys_form_fields_reaction_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `sys_form_fields_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`);

ALTER TABLE `sys_form_fields_votes_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote` (`object_id`,`author_nip`);

ALTER TABLE `sys_form_inputs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `display_name` (`object`,`name`(127));

ALTER TABLE `sys_form_inputs_privacy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `input` (`input_id`,`author_id`);

ALTER TABLE `sys_form_pre_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`(191));
ALTER TABLE `sys_form_pre_lists` ADD FULLTEXT KEY `ModuleAndKey` (`module`,`key`);

ALTER TABLE `sys_form_pre_values`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `sys_form_pre_values` ADD FULLTEXT KEY `KeyAndValue` (`Key`,`Value`);

ALTER TABLE `sys_grid_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_name_type` (`object`,`type`,`name`(123));

ALTER TABLE `sys_grid_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_name` (`object`,`name`(127));

ALTER TABLE `sys_iframely_data`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_images_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_images_editor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_images_editor_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_images_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_injections`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_injections_admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_keys`
  ADD PRIMARY KEY (`key`);

ALTER TABLE `sys_labels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`);

ALTER TABLE `sys_localization_categories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`(191));

ALTER TABLE `sys_localization_keys`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Key` (`Key`(191));
ALTER TABLE `sys_localization_keys` ADD FULLTEXT KEY `KeyFilter` (`Key`);

ALTER TABLE `sys_localization_languages`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

ALTER TABLE `sys_localization_strings`
  ADD PRIMARY KEY (`IDKey`,`IDLanguage`);
ALTER TABLE `sys_localization_strings` ADD FULLTEXT KEY `String` (`String`);

ALTER TABLE `sys_menu_items`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_menu_sets`
  ADD PRIMARY KEY (`set_name`);

ALTER TABLE `sys_menu_templates`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD UNIQUE KEY `class_prefix` (`class_prefix`),
  ADD UNIQUE KEY `db_prefix` (`db_prefix`),
  ADD UNIQUE KEY `path` (`path`(191));

ALTER TABLE `sys_modules_file_tracks`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_modules_relations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_auths`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `sys_objects_captcha`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`),
  ADD UNIQUE KEY `form_object` (`form_object`,`list_name`(127));

ALTER TABLE `sys_objects_chart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_cmts`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `sys_objects_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_content_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `alert_add` (`alert_unit`,`alert_action_add`),
  ADD UNIQUE KEY `alert_update` (`alert_unit`,`alert_action_update`),
  ADD UNIQUE KEY `alert_delete` (`alert_unit`,`alert_action_delete`);

ALTER TABLE `sys_objects_editor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_embeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_favorite`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_feature`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_file_handlers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_grid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_live_updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_objects_location_field`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_location_map`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_logs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_metatags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`),
  ADD UNIQUE KEY `uri` (`uri`(191));

ALTER TABLE `sys_objects_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`),
  ADD UNIQUE KEY `uri` (`uri`);

ALTER TABLE `sys_objects_player`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_privacy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`),
  ADD UNIQUE KEY `action` (`module`,`action`(127));

ALTER TABLE `sys_objects_push`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_recommendation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_objects_report`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_rss`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_score`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_search`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `sys_objects_search_extended`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_sms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_transcoder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_uploader`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`);

ALTER TABLE `sys_objects_view`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_objects_vote`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `sys_objects_wiki`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`object`),
  ADD UNIQUE KEY `uri` (`uri`);

ALTER TABLE `sys_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category_id` (`category_id`);

ALTER TABLE `sys_options_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_options_mixes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_options_mixes2options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`option`,`mix_id`);

ALTER TABLE `sys_options_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_pages_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object` (`object`);
ALTER TABLE `sys_pages_blocks` ADD FULLTEXT KEY `text` (`text`);

ALTER TABLE `sys_pages_blocks_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block` (`block_id`,`content_id`,`content_module`);

ALTER TABLE `sys_pages_content_placeholders`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_pages_design_boxes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_pages_layouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_pages_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_pages_wiki_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_lang_rev` (`block_id`,`language`,`revision`);

ALTER TABLE `sys_permalinks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `check` (`standard`(80),`permalink`(80),`check`(30));

ALTER TABLE `sys_preloader`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_privacy_defaults`
  ADD PRIMARY KEY (`owner_id`,`action_id`);

ALTER TABLE `sys_privacy_groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_privacy_groups_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_privacy` (`profile_id`,`content_id`,`object`);

ALTER TABLE `sys_privacy_groups_custom_members`
  ADD PRIMARY KEY (`group_id`,`member_id`);

ALTER TABLE `sys_privacy_groups_custom_memberships`
  ADD PRIMARY KEY (`group_id`,`membership_id`);

ALTER TABLE `sys_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_type_content` (`account_id`,`type`,`content_id`),
  ADD KEY `content_type` (`content_id`,`type`);

ALTER TABLE `sys_profiles_conn_bans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `sys_profiles_conn_friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `sys_profiles_conn_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `sys_profiles_conn_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `initiator` (`initiator`,`content`),
  ADD KEY `content` (`content`);

ALTER TABLE `sys_profiles_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_track` (`profile_id`,`action`);

ALTER TABLE `sys_queue_email`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_queue_push`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_recommendation_criteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterion` (`object_id`,`name`);

ALTER TABLE `sys_recommendation_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recommendation` (`profile_id`,`object_id`,`item_id`);

ALTER TABLE `sys_rewrite_rules`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sys_search_extended_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field` (`object`,`name`(127));

ALTER TABLE `sys_search_extended_sorting_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field` (`object`,`name`(127),`direction`);

ALTER TABLE `sys_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_page_param` (`module`,`page_uri`(109),`param_value`),
  ADD UNIQUE KEY `module_page_uri` (`module`,`page_uri`(109),`uri`),
  ADD KEY `param_name_value` (`param_name`,`param_value`);

ALTER TABLE `sys_seo_uri_rewrites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uri_orig` (`uri_orig`(191)),
  ADD UNIQUE KEY `uri_rewrite` (`uri_rewrite`(191));

ALTER TABLE `sys_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`);

ALTER TABLE `sys_statistics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_std_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `sys_std_pages_widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wid_pag` (`widget_id`,`page_id`);

ALTER TABLE `sys_std_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);
ALTER TABLE `sys_std_roles` ADD FULLTEXT KEY `searchable` (`title`,`description`);

ALTER TABLE `sys_std_roles_actions`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `sys_std_roles_actions` ADD FULLTEXT KEY `searchable` (`title`,`description`);

ALTER TABLE `sys_std_roles_actions2roles`
  ADD PRIMARY KEY (`role_id`,`action_id`);

ALTER TABLE `sys_std_roles_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account_id`);

ALTER TABLE `sys_std_widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widget-page` (`id`,`page_id`(187));

ALTER TABLE `sys_std_widgets_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookmark` (`widget_id`,`profile_id`);

ALTER TABLE `sys_storage_deletions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_file_id` (`object`,`file_id`),
  ADD KEY `requested` (`requested`);

ALTER TABLE `sys_storage_ghosts`
  ADD PRIMARY KEY (`iid`),
  ADD UNIQUE KEY `id` (`id`,`object`),
  ADD KEY `created` (`created`),
  ADD KEY `profile_object_content` (`profile_id`,`object`,`content_id`);

ALTER TABLE `sys_storage_mime_types`
  ADD PRIMARY KEY (`ext`);

ALTER TABLE `sys_storage_tokens`
  ADD PRIMARY KEY (`iid`),
  ADD UNIQUE KEY `id` (`id`,`object`,`hash`),
  ADD KEY `created` (`created`);

ALTER TABLE `sys_storage_user_quotas`
  ADD PRIMARY KEY (`profile_id`);

ALTER TABLE `sys_transcoder_audio_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transcoder_object` (`transcoder_object`,`handler`(127)),
  ADD KEY `atime` (`atime`),
  ADD KEY `file_id` (`file_id`);

ALTER TABLE `sys_transcoder_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transcoder_object` (`transcoder_object`);

ALTER TABLE `sys_transcoder_images_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transcoder_object` (`transcoder_object`,`handler`(127)),
  ADD KEY `atime` (`atime`),
  ADD KEY `file_id` (`file_id`);

ALTER TABLE `sys_transcoder_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transcoder_object` (`transcoder_object`,`file_id_source`(127));

ALTER TABLE `sys_transcoder_queue_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_transcoder_videos_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transcoder_object` (`transcoder_object`,`handler`(127)),
  ADD KEY `atime` (`atime`),
  ADD KEY `file_id` (`file_id`);

ALTER TABLE `sys_wiki_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);

ALTER TABLE `sys_wiki_images_resized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote_id` (`remote_id`);


ALTER TABLE `bx_acl_level_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_acl_licenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_categories_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_commodities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_interested_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_licenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_licenses_deleted`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_links2content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_polls_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_polls_answers_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_polls_answers_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_promo_licenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_promo_licenses_deleted`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_promo_tracker`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_reviews`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_sources_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_sources_options_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_ads_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_cmts_media`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_favorites_media_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_files2albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_meta_keywords_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_meta_keywords_media_camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_reports_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_reports_media_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_scores_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_scores_media_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_views_media_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_votes_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_votes_media_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_albums_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_anon_follow_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_antispam_block_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_antispam_disposable_email_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_antispam_dnsbluri_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_antispam_dnsbl_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_antispam_ip_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_attendant_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_links2content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_polls_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_polls_answers_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_polls_answers_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_sounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_sounds_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_classes_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_cnl_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_contact_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_conv2folder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_convos_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_content_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_content_data2users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_content_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_content_nodes2users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_content_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_courses_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_credits_bundles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_credits_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_credits_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_credits_orders_deleted`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_credits_withdrawals`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_donations_entries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_donations_entries_deleted`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_donations_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_check_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_intervals`
  MODIFY `interval_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_qnr_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_qnr_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_events_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_fdb_answers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_fdb_answers2users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_fdb_questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_downloading_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_main`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_sounds_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_files_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_links2content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_polls_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_polls_answers_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_polls_answers_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_forum_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_glossary_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_groups_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_help_tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_help_tours_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_inv_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_inv_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_qnr_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_qnr_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_jobs_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_mapshow_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_downloads_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_files2products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_licenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_licenses_deleted`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_photos2products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_subproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_market_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_massmailer_campaigns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_massmailer_letters`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_massmailer_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_massmailer_segments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_massmailer_unsubscribe`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_notifications_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_notifications_events2users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_notifications_handlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_notifications_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_notifications_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_notifications_settings2users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_organizations_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_providers_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_stripe_payments_pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_subscriptions_deleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_transactions_pending`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_payment_user_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_pictures_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_persons_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_media_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_meta_keywords_camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_svotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_svotes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_photos_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_subentries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_votes_subentries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_votes_subentries_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_polls_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_links2content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_polls_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_polls_answers_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_polls_answers_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_sounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_sounds_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_posts_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_quoteofday_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reminders_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reminders_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reputation_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reputation_handlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reputation_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reputation_profiles_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_polls_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_polls_answers_votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_polls_answers_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_svotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_svotes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_reviews_voting_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_pics_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_stars_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_spaces_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_entries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_entries_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_stories_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_photos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_videos_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_tasks_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_events2users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_events_slice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_files2events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_handlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_hot_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_links2events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_mute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_photos2events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_photos_processed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_polls_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_polls_answers_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_polls_answers_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_reposts_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_videos2events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_videos_processed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_timeline_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_cmts`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_cmts_notes`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_embeds_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_favorites_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_media_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_svotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_svotes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_videos_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_favorites_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_views_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bx_workspaces_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_accounts_password`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_accounts_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_accounts_pictures_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_acl_actions`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_acl_levels`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_assistants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_assistants_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_assistants_chats_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_assistants_chats_messages`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_assistants_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_automators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_automators_assistants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_automators_helpers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_automators_messages`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_automators_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_helpers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_providers_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_provider_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_agents_provider_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_alerts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_alerts_cache_triggers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_alerts_handlers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_api_origins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_audit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_background_jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_badges`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_badges2objects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_categories2objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_images2entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_images_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_meta_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_meta_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_reactions_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_reports_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_scores_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cmts_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_content_info_grids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_cron_jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_email_templates`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_embeded_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_displays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_display_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_fields_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_fields_reaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_fields_reaction_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_fields_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_fields_votes_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_inputs_privacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_pre_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_form_pre_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_grid_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_grid_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_iframely_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_images_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_images_editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_images_editor_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_images_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_injections`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_injections_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_localization_categories`
  MODIFY `ID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_localization_keys`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_localization_languages`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_menu_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_modules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_modules_file_tracks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_modules_relations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_auths`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_cmts`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_connection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_content_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_embeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_file_handlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_grid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_live_updates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_location_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_location_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_metatags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_privacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_recommendation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_score`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_search`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_search_extended`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_transcoder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_uploader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_vote`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_objects_wiki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_options_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_options_mixes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_options_mixes2options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_options_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_pages_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_pages_blocks_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_pages_content_placeholders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_pages_layouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_pages_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_pages_wiki_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_permalinks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_preloader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_privacy_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_privacy_groups_custom`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_profiles_conn_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_profiles_conn_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_profiles_conn_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_profiles_conn_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_profiles_track`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_queue_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_queue_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_recommendation_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_recommendation_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_rewrite_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_search_extended_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_search_extended_sorting_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_seo_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_seo_uri_rewrites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_statistics`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_pages_widgets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_roles_actions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_roles_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_widgets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_std_widgets_bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_storage_deletions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_storage_ghosts`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_storage_tokens`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_transcoder_audio_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_transcoder_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_transcoder_images_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_transcoder_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_transcoder_queue_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_transcoder_videos_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_wiki_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sys_wiki_images_resized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
