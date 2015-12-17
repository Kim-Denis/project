-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 03, 2008 at 06:59 PM
-- Server version: 5.0.37
-- PHP Version: 5.2.1

-- 
-- Database: `yoo_page`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_banner`
-- 

DROP TABLE IF EXISTS `jos_banner`;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(90) NOT NULL default 'banner',
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(150) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) TYPE=MyISAM  AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_banner`
-- 

INSERT INTO `jos_banner` VALUES (1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (3, 1, '', 'Joomla!', 'joomla', 0, 75, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (4, 1, '', 'JoomlaCode', 'joomlacode', 0, 75, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 70, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 70, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 10, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 13, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/index.php?option=com_wrapper&Itemid=8', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannerclient`
-- 

DROP TABLE IF EXISTS `jos_bannerclient`;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(150) default NULL,
  PRIMARY KEY  (`cid`)
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_bannerclient`
-- 

INSERT INTO `jos_bannerclient` VALUES (1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannertrack`
-- 

DROP TABLE IF EXISTS `jos_bannertrack`;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_categories`
-- 

DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(150) NOT NULL default '',
  `image_position` varchar(90) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(150) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) TYPE=MyISAM  AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `jos_categories`
-- 

INSERT INTO `jos_categories` VALUES (1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, '');
INSERT INTO `jos_categories` VALUES (2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (5, 0, 'Business: General', '', 'business-general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` VALUES (7, 0, 'Internet', '', 'internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, '');
INSERT INTO `jos_categories` VALUES (12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` VALUES (17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (34, 0, 'YOOtheme', '', 'yootheme', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (35, 0, 'YOOtoppanel (Default)', '', 'yootoppanel-default', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (36, 0, 'YOOdrawer (Default)', '', 'yoodrawer-default', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (37, 0, 'YOOaccordion (Whitespace)', '', 'yooaccordion-whitespace', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (38, 0, 'YOOcarousel (List)', '', 'yoocarousel-list', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, '');
INSERT INTO `jos_categories` VALUES (39, 0, 'YOOcarousel (Basic) YOOmenu', '', 'yoocarousel-basic-yoomenu', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` VALUES (40, 0, 'YOOcarousel (Basic) Frontpage', '', 'yoocarousel-basic-frontpage', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, '');
INSERT INTO `jos_categories` VALUES (41, 0, 'YOOslider (Default-H)', '', 'yooslider-default-h', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, '');
INSERT INTO `jos_categories` VALUES (42, 0, 'YOOscroller', '', 'yooscroller', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 10, 0, 0, '');
INSERT INTO `jos_categories` VALUES (43, 0, 'YOOslider (Photo-H)', '', 'yooslider-photo-h', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_components`
-- 

DROP TABLE IF EXISTS `jos_components`;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` text NOT NULL,
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) TYPE=MyISAM  AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `jos_components`
-- 

INSERT INTO `jos_components` VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1);
INSERT INTO `jos_components` VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\n\n', 1);
INSERT INTO `jos_components` VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1);
INSERT INTO `jos_components` VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_contact_details`
-- 

DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `con_position` text,
  `address` text,
  `suburb` text,
  `state` text,
  `country` text,
  `postcode` varchar(255) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(60) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_contact_details`
-- 

INSERT INTO `jos_contact_details` VALUES (1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content`
-- 

DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `title_alias` text NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` text NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) TYPE=MyISAM  AUTO_INCREMENT=98 ;

-- 
-- Dumping data for table `jos_content`
-- 

INSERT INTO `jos_content` VALUES (1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', 1, 1, 0, 1, '2006-10-12 10:00:00', 62, '', '2007-11-08 12:06:35', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 1, '', '', 0, 92, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', 1, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:19:35', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content though a graphical Control Panel that give you complete control over your site.</p>', '', 1, 1, 0, 3, '2004-08-09 22:30:34', 62, '', '2007-11-08 12:20:41', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of hundreds of free <a href="http://extensions.joomla.org" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions</a>  library today. </p>', '', 1, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:21:51', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 5, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://www.joomla.org/">Joomla!</a>  The software and default templates on which it runs are Copyright 2005-2007 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p><p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html">''GNU General Public License FAQ''</a>.</p><p>Joomla! documentation is released under the terms of the <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/" title="Creative Commons ">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> or by the specific license of their respective copyright owners.</p><p>The Joomla! licence has always been GPL.</p>', '', 1, 4, 0, 25, '2004-08-20 10:11:07', 62, '', '2007-11-04 23:02:47', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 100, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla! Core Team consists of volunteer developers, designers, administrators and managers who, together with a large range of Work Groups of dedicated community members have taken Joomla! to new heights in its relatively short life. This well-oiled machine is often copied but never surpassed.  Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '<p>The project has a nice balance of legacy development from well-known coders such as Andrew Eddie (who pioneered Mambo''s early success) to some young guns like Johan Janssens and Louis Landry.  This dynamic trio has been further strengthening the project by bringing in new talent.  In open source development people joke about the ''bus'' factor.  Projects which don''t have coding ''spread'' are considered less sound should their single lead developer get hit by a bus.</p>', 1, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:10:35', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 2, '', '', 0, 54, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (7, 'Stick to the Code!', 'stick-to-the-code', '', 'To ensure this code release, Wilco Jansen resorted to sending rum to joint lead-developer Johan Janssens.  Johan, who''s had a penchant for rum ever since the first "Pirate''s of the Caribbean" movie screened, took the bait, mixed it with Cola, and here we are with our latest 1.5 release.  It looks like pirate talk will figure quite a lot in future Joomla! development! ', '<strong><br />Translation for you real pirates:<br /></strong> <br />First Mate Wilco resorted t'' sendin'' rum t'' joint Capt''n Johan. Johan, who''s had a penchant for rum ever since t'' first "Pirate''s o'' t'' Caribbean" movie screened, took t'' bait, mixed it with molasses, and here we be with our latest 1.5 release. It looks like pirate talk will figure quite a lot in future Joomla! development!', 1, 1, 0, 1, '2004-07-07 12:00:00', 62, '', '2007-11-25 22:37:55', 62, 0, '0000-00-00 00:00:00', '2004-07-07 11:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 13, 0, 3, '', '', 0, 55, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (8, 'The Legend of Buca di Beppo', 'the-legend-of-buca-di-beppo', '', '<p>The legend of Buca di Beppo involves a covert meeting of key developers in a Mafia-style restaurant in the United States.  ''Bucas'' has on more than one occasion been the catalyst for key (and in some cases considered insurmountable) development ''humps'' being overcome.</p><p>With copius amounts of food and wine flowing, the creative juices of coders seem to work keener, faster, and problems are solved. Louis Landry famously agreed that living near a Bucas could actually lead to faster development cycles.</p><p>Mmmm. A restaurant with photos of famous Mafia films like <em>The Godfather</em> and violin cases leaning against the booths.  Makes you wonder, doesn''t it?  </p><p>If Joomla! was a commercial venture, we''re sure management would actually consider building a Bucas inside the building!</p><p>Masterchief meet Bugsy Landry. </p>', '', 1, 1, 0, 1, '2004-04-12 09:54:06', 62, '', '2007-11-08 12:14:09', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 13, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (9, '1 Million Smiles', '1-million-smiles', '', '<p>The Joomla! team has about 1 million good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had more than 1 million downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', 1, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:16:19', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 5, '', '', 0, 23, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://joomlacode.org" title="The Joomla! Code Repository">JoomlaCode</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://dev.joomla.org/content/view/42/66/" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', 1, 3, 0, 32, '2006-09-30 14:06:37', 62, '', '2007-11-08 11:55:56', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 9, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', 1, 3, 0, 28, '2006-09-30 20:27:52', 62, '', '2007-11-08 11:01:01', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 4, '', '', 0, 13, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (12, 'Why does Joomla! 1.5 use utf-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', 1, 3, 0, 31, '2006-10-05 01:11:29', 62, '', '2007-11-08 11:39:51', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 9, '', '', 0, 29, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', 1, 3, 0, 28, '2006-10-06 16:47:35', 62, '', '2007-11-04 23:12:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 10, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', 1, 3, 0, 31, '2006-10-06 21:27:49', 62, '', '2007-05-03 09:39:48', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 7, '', '', 0, 22, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perfom actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', 1, 3, 0, 31, '2006-10-06 19:28:35', 62, '', '2007-11-08 11:26:51', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 5, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', 1, 3, 0, 28, '2006-10-06 19:29:28', 62, '', '2007-11-08 11:03:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 5, '', '', 0, 19, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (17, 'My MySQL  database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', 1, 3, 0, 31, '2006-10-07 09:30:37', 62, '', '2007-11-08 11:39:01', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 8, '', '', 0, 12, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Choose from over 360 News Feeds from around the world </li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site</li></ul>', 1, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2007-11-04 16:38:53', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 4, '', '', 0, 59, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', 1, 4, 0, 29, '2006-10-09 07:49:20', 62, '', '2007-11-04 15:50:34', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 2, '', '', 0, 156, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (20, 'Support and Documentation', 'support and documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the official <a href="http://help.joomla.org/" target="_blank">Help Site</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too! </p><p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features. </p><p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p><p>Two other resources for Support are the <a href="http://dev.joomla.org/" target="_blank">Joomla! Developer Network</a>  (JDN) and the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions Directory</a> (JED). The Developer Network for example provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site. </p><p>The Joomla! Core members are regularly posting their blog reports about several topics such as programming techniques used in Joomla!, Security, Events and more. You can even subscribe to get notified by e-mail when a new blog post is made! </p><h1>Documentation </h1><p>Joomla! Documentation can of course be found on the <a href="http://help.joomla.org/" target="_blank">Help Site</a>. You can find information such as an Installation Guide, User and Administrator manuals, Frequently Asked Questions and a lot more. The User Documentation Team are the guardians of the documentation relating to the practical use of Joomla!. The Developer Documentation Team are the stalwarts behind detailing how Joomla! works from the ground up and how you can develop your own Extensions and Templates and much more.</p><p>Other than the documentation provided by the Joomla! Documentation Work Groups there are also books written about Joomla! You can find a listing of these books in the <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla! Bookshelf</a> .</p><h1>Want to help? </h1><p>If you want to help in the documentation project for Joomla! then please post your details on the <a href="http://forum.joomla.org/index.php/board,62.0.html" title="The Joomla! User Documentation Forums">User Documentation Forum</a> or the <a href="http://forum.joomla.org/index.php/board,60.0.html" title="The Joomla! Developer Documentation Forum">Developer Documentation Forum</a> </p><p><a class="urlextern" href="http://forum.joomla.org/index.php/board,391.0.html" target="_blank" title="http://forum.joomla.org/index.php/board,59.0.html" onclick="return svchk()"><br /></a></p>', '', 1, 4, 0, 25, '2006-10-09 08:33:57', 62, '', '2007-11-04 18:49:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 2, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 140,000 active registered Users on the <a href="http://forums.joomla.org">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Nearly 1,900,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>2200+ Extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li><li><span>Alexa report [November 2007]: Joomla.org at #690 of the busiest Web sites in the world.</span></li></ul>', '', 1, 4, 0, 30, '2006-10-09 16:46:37', 62, '', '2007-11-04 18:24:09', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 50, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (22, 'What''s New In 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p>&nbsp;</p><p style="margin-bottom: 0in">   The goals for the Joomla! 1.5 release are to: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improve usability, manageability, and scalability far beyond the original Mambo foundations.     </p>   </li><li>     <p style="margin-bottom: 0in"> Expand accessibility to support internationalisation, double-byte characters and Right-to-Left support for Arabic, Farsi, and Hebrew languages for example amongst others. </p>   </li><li>     <p style="margin-bottom: 0in"> Extend the integration of external applications through Web Services and remote authentication such as the Lightweight Directory Access Protocol (LDAP). </p>   </li><li>     <p style="margin-bottom: 0in"> Enhance the content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination. </p>   </li><li>     <p style="margin-bottom: 0in">       Achieve a more sustainable and flexible framework for Component and Extension developers.     </p>   </li><li>     <p style="margin-bottom: 0in">       Deliver backward compatibility with previous releases of Components, Templates, Modules and other Extensions.</p></li></ul><p>&nbsp;</p>', 1, 4, 0, 29, '2006-10-11 22:13:58', 62, '', '2007-11-04 15:39:15', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 90, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 1, 4, 0, 25, '2006-10-11 04:22:14', 62, '', '2007-11-04 23:07:08', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 11, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', 1, 4, 0, 29, '2006-10-12 22:33:10', 62, '', '2007-11-04 16:58:35', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 5, '', '', 0, 69, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details visit the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> and <a href="http://forum.joomla.org" title="The Joomla! Community Forums">Forums</a>', '', 1, 3, 0, 31, '2006-10-11 00:42:31', 62, '', '2007-11-08 11:36:52', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 27, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/%20" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/ </a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the Joomla! help site: Language Packs and Localised Releases<br />   <a href="http://help.joomla.org/content/view/1651/243/" target="_blank" title="Joomla! help site: Language Packs and Localised Releases">http://help.joomla.org/content/view/1651/243/</a></p>', '', 1, 4, 0, 29, '2006-10-11 06:00:00', 62, '', '2007-11-08 14:49:48', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 3, 'About Joomla!, General, Extensions', '', 0, 100, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 140,000 members, the online forums at <a href="http://forum.joomla.org/" target="_blank">forum.joomla.org</a>  are a great resource for both new and experienced users. Go ahead, ask your toughest questions, the community is waiting to see what you''re going to do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Go ahead, we have a section dedicated to that on our forum. </p><p><strong>Do you want to join in?</strong></p><p>If you think working with Joomla! is fun, wait until you start working on it. We''re passionate about helping Joomla! Users make the jump to becoming contributing members of the community, so there are many ways you can help Joomla!''s development:</p>                  <ul><li>Submit news about Joomla!. We syndicate all Joomla! related news on our <a href="http://news.joomla.org" title="Joomla! News Portal">news portal</a>. If you have some Joomla! news that you would like to share with the community, please submit your short story, article, announcement or review <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">here</a>. </li><li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://dev.joomla.org/content/view/1450/89/">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://dev.joomla.org/content/view/14/55/">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/index.php/board,126.0.html" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla!. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">Joomla!  Working Groups</a>  and bring your personal expertise to  the Joomla! community. More info about the different working groups can be found <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">on the Working Group Roll Call</a>.      </li></ul>           <p> That''s all you need to know if you''d like to join the Joomla! development community.  </p>', '', 1, 4, 0, 30, '2006-10-12 16:50:48', 62, '', '2007-11-04 18:29:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 2, '', '', 0, 50, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', 1, 3, 0, 31, '2006-10-11 01:10:59', 62, '', '2007-11-08 11:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 4, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', 1, 3, 0, 32, '2006-10-11 03:11:38', 62, '', '2007-05-03 09:40:32', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 4, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. In addition some translation teams are offering fully localised versions of the entire package. Please check the <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Joomla! help site for links">Joomla! Help Site for links</a>   to locations where languages and localised versions can be found.', '', 1, 3, 0, 32, '2006-10-11 01:12:18', 62, '', '2007-11-08 11:45:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', 1, 3, 0, 27, '2006-10-11 09:12:55', 62, '', '2007-11-08 12:03:24', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 3, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', 1, 3, 0, 28, '2006-10-10 23:13:33', 62, '', '2007-11-08 11:23:56', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 7, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', 1, 3, 0, 31, '2006-10-11 15:14:11', 62, '', '2007-11-08 11:23:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 3, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', 1, 3, 0, 32, '2006-10-11 17:14:57', 62, '', '2007-11-08 11:46:29', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', 1, 3, 0, 31, '2006-10-10 23:15:36', 62, '', '2007-11-08 11:25:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 17, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', 1, 3, 0, 28, '2006-10-10 23:16:20', 62, '', '2007-11-04 23:10:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', 1, 3, 0, 28, '2006-10-11 09:17:00', 62, '', '2007-11-08 11:04:30', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is on our <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Help Site">Help Site</a>.</p>', '', 1, 3, 0, 32, '2006-10-11 17:18:14', 62, '', '2007-11-08 11:42:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', 1, 3, 0, 27, '2006-10-11 09:19:01', 62, '', '2007-11-08 12:01:26', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', 1, 3, 0, 27, '2006-10-11 05:19:43', 62, '', '2007-11-08 12:02:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', 1, 1, 0, 3, '2006-10-12 00:17:31', 62, '', '2007-11-08 12:17:53', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', 1, 1, 0, 3, '2006-10-12 00:25:50', 62, '', '2007-11-08 12:17:20', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', 1, 0, 0, 0, '2006-10-12 09:26:52', 62, '', '2007-11-04 15:36:15', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 42, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (44, 'Page', 'page', '', 'In February YOOtheme delivers you the brand new and polished template: Page. The template comes with a wide variety of colors and styles which allows you to create more than 50 different website looks. Further Page provides up to 11 custom styles for the module positions. YOOtools gets as well 2 new additions to it''s exclusive Joomla extension collection. First, the YOOscroller which allows you to display products or images to your visitors in a really elegantly way! Second, the all new YOOtooltip which let''s you create mouse over tooltips to your content and allows you to show additional information. Finally we added a Apple touch icon to this template, all iPhone/iPod touch user will see an high-res icon of your website.\r\n<div style="float: right; margin-top: 10px;">{loadposition content6}</div><ul class="checkbox">\r\n<li>{yootooltip title=[New top-notch YOOscroller]}<img style="margin: 20px 0px 0px -20px;" width="125" height="100" align="right" title="YOOscroller!" alt="YOOscroller!" src="images/yootheme/yootooltip/yooscroller.png"/><strong>YOOscroller</strong><br /><br />The YOOscroller module can load any other module inside the YOOscroller.{/yootooltip}</li>\r\n<li>{yootooltip title=[New exclusive YOOtooltip]}<img style="margin: 20px 0px 0px -20px;" width="125" height="100" align="right" title="YOOtooltip!" alt="YOOtooltip!" src="images/yootheme/yootooltip/yootooltip.png"/><strong>YOOtooltip</strong><br /><br />The YOOtooltip plugin can display any HTML content inside a tooltip.{/yootooltip}</li>\r\n<li>{yootooltip title=[New Apple Touch Icon]}<img style="margin: 0px 0px 0px 10px;" width="200" height="170" title="Supporting Apple Touch Icon!" alt="Supporting Apple Touch Icon!" src="images/yootheme/yootooltip/apple_touch_icon.jpg"/>{/yootooltip}</li>\r\n<li>Famous Drop Down Menu</li>\r\n<li>Works with all exclusive YOOtools</li>\r\n<li>Sliced Fireworks .png Source files</li>\r\n<li>Native Joomla 1.0 &amp; 1.5 Versions</li>\r\n</ul>\r\nAnd of course all the classic features are included: Tableless CSS Design, YOOmenu System, YOOspotlight, YOOlightbox, YOOreflection, YOOstyleswitcher and many more...\r\n<br /><br />\r\nGo ahead and simply enjoy Page! Join the YOOtheme club today.\r\n<br /><br />\r\n<a href="http://demo.yootheme.com" target="_blank">Check out Beyond on the demo page.</a>\r\n<br /><a href="http://www.yootheme.com" target="_blank">Visit YOOtheme website.</a>\r\n<br /><a href="http://www.yootools.com" target="_blank">Visit YOOtools website.</a>', '', 1, 5, 0, 34, '2007-12-19 13:00:00', 62, '', '2008-02-01 12:02:59', 62, 0, '0000-00-00 00:00:00', '2007-12-19 13:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 52, 0, 1, '', '', 0, 969, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (45, 'Features', 'features', '', 'Take a look at all the features implemented in this template and read short introduction how to use them. Select a feature from the left to jump to the details.\r\n<br /><br />\r\n{loadposition content3}\r\n<br /><br />\r\n<strong>Did you notice?</strong>\r\n<br />This template supports two general layout option. The "left" module block with the sub menu can be aligned to the left or the right site. <a href="index.php?option=com_content&view=article&id=47&Itemid=56">More Information...</a>', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2007-12-20 17:22:59', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 205, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (46, 'Typography', 'typography', '', '<div class="note">Typography is a key element in web design. This templates delivers you sophisticated typography and various stylings. The style guide gives you an overview about all possible HTML tag stylings provided by the template. It also helps you to set up the available classes for special stylings.</div> <br />\r\n\r\n<div style="margin-bottom:20px; padding-bottom:20px; border-bottom: 1px solid #c8c8c8">\r\n	<h1>This is a H1 Header</h1>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	<br />\r\n	<h2>This is a H2 Header</h2>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	<br />\r\n	<h3>This is a H3 Header</h3>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	<br />\r\n	<h4>This is a H4 Header</h4>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	<br />\r\n	<h5>This is a H5 Header</h5>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	<br />\r\n	<h6>This is a H6 Header</h6>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n</div>\r\n\r\n<h4>Unorderd List Styles</h4>\r\n<div class="floatbox" style="margin-bottom:20px; padding-bottom:20px; border-bottom: 1px solid #c8c8c8">\r\n	<div class="float-left width50">\r\n		<div>\r\n\r\n			<ul class="checkbox">\r\n			  <li>&lt;ul&gt; with class="checkbox"</li>\r\n			</ul>\r\n			<ul class="arrow">\r\n			  <li>&lt;ul&gt; with class="arrow"</li>\r\n			</ul>\r\n			<ul class="star">\r\n			  <li>&lt;ul&gt; with class="star"</li>\r\n			</ul>\r\n			<ul class="check">\r\n			  <li>&lt;ul&gt; with class="check"</li>\r\n			</ul>\r\n			<ul class="plus">\r\n			  <li>&lt;ul&gt; with class="plus"</li>\r\n			</ul>\r\n		\r\n		</div>\r\n	</div>\r\n	<div class="float-left width50">\r\n		<div style="padding-left: 20px; border-left: 1px solid #c8c8c8">\r\n		\r\n			<ul class="checkbox-big">\r\n			  <li>class="checkbox-big"</li>\r\n			</ul>\r\n			<ul class="arrow-big">\r\n			  <li>class="arrow-big"</li>\r\n			</ul>\r\n			<ul class="star-big">\r\n			  <li>class="star-big"</li>\r\n			</ul>\r\n			<ul class="check-big">\r\n			  <li>class="check-big"</li>\r\n			</ul>\r\n			<ul class="plus-big">\r\n			  <li>class="plus-big"</li>\r\n			</ul>\r\n			\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h4>Ordered List Styles</h4>\r\n<div class="floatbox" style="margin-bottom:20px; padding-bottom:20px; border-bottom: 1px solid #c8c8c8">\r\n	<div class="float-left width50">\r\n		<div>\r\n\r\n			<ol class="disc">\r\n			  <li>&lt;ol&gt; with class="disc"</li>\r\n			  <li>item 2</li>\r\n			  <li>item 3</li>\r\n			</ol>\r\n		\r\n		</div>\r\n	</div>\r\n	<div class="float-left width50">\r\n		<div style="padding-left: 20px; border-left: 1px solid #c8c8c8">\r\n		\r\n			<ol class="disc-big">\r\n			  <li>class="disc-big"</li>\r\n			  <li>item 2</li>\r\n			  <li>item 3</li>\r\n			</ol>\r\n			\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h4>Emphasis Styles</h4>\r\n<div style="margin-bottom:20px; padding-bottom:20px; border-bottom: 1px solid #c8c8c8">\r\n	<em class="box">em tag with class=&quot;box&quot;</em><br />\r\n	<em class="file">em tag with class=&quot;file&quot;</em><br />\r\n	<em class="directory">em tag with class=&quot;directory&quot;</em><br />\r\n</div>\r\n\r\n<h4>Div and Span Styles</h4>\r\n<div style="margin-bottom:20px; padding-bottom:20px; border-bottom: 1px solid #c8c8c8">\r\n	<div class="note"> <strong>&lt;div&gt; or &lt;span&gt; tag with class="note"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n	</div>\r\n	<div class="info"> <strong>&lt;div&gt; or &lt;span&gt; tag with class="info"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n	</div>\r\n	<div class="alert"> <strong>&lt;div&gt; or &lt;span&gt; tag with class="alert"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n	</div>\r\n	<div class="download"> <strong>&lt;div&gt; or &lt;span&gt; tag with class="download"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n	</div>\r\n	<div class="tip"> <strong>&lt;div&gt; or &lt;span&gt; tag with class="tip"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n	</div>\r\n</div>\r\n\r\n<h4>Blockquote Styles</h4>\r\n<div class="floatbox" style="margin-bottom:20px; padding-bottom:20px; border-bottom: 1px solid #c8c8c8">\r\n	<div class="float-left width50">\r\n		<div style="padding-right: 20px;">\r\n		\r\n			<strong>Sample &lt;blockquote&gt; tag.</strong>\r\n			<blockquote>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n			</blockquote>\r\n			<strong>&lt;Blockquote&gt; tag with an additional &lt;p&gt; tag.</strong>\r\n			<br />(use &lt;blockquote&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt;)\r\n			<blockquote>\r\n			  <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n			  </p>\r\n			</blockquote>\r\n			\r\n		</div>\r\n	</div>\r\n	<div class="float-left width50">\r\n		<div style="padding-left: 20px; border-left: 1px solid #c8c8c8">\r\n\r\n			<strong>Sample &lt;blockquote&gt; tag with class="big":</strong>\r\n			<blockquote class="big"> Lorem ipsum dolor sit amet consec.<br />\r\n			</blockquote>\r\n			<strong>Sample &lt;blockquote&gt; tag with class="big" and an additional &lt;p&gt; tag</strong>\r\n			<br />(use &lt;blockquote class="big"&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt;):\r\n			<blockquote class="big">\r\n			  <p> Lorem ipsum dolor sit amet, consec est.<br />\r\n			  </p>\r\n			</blockquote>\r\n\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<div class="floatbox" style="margin-bottom:20px; padding-bottom:20px">\r\n	<div class="float-left width50">\r\n		<div style="padding-right: 20px; border-right: 1px solid #c8c8c8">\r\n		\r\n			<h4>Forms Style</h4>\r\n		\r\n			<form action="#">\r\n			<fieldset>\r\n			<legend>Form legend</legend>\r\n			<div><label for="f1">Text input:</label> <input type="text" value="input text" id="f1"/></div>\r\n			<div><label for="f2">Radio input:</label> <input type="radio" id="f2"/></div>\r\n			<div><label for="f3">Checkbox input:</label> <input type="checkbox" id="f3"/></div>\r\n			<div><label for="f4">Select field:</label> <select id="f4"><option>Option 01</option><option>Option 02</option></select></div>\r\n			<div><label for="f5">Textarea:</label><br/><textarea rows="5" cols="30" id="f5">Textarea text</textarea></div>\r\n			<div><label for="f6">Button:</label> <input type="button" value="button text" id="f6"/></div>\r\n			</fieldset>\r\n			</form>\r\n\r\n		</div>\r\n	</div>\r\n	<div class="float-left width50">\r\n		<div style="padding-left: 20px;">\r\n\r\n			<h4>Preformated Text Style</h4>\r\n			<pre>\r\npre {\r\n	background: #fff;\r\n	color: #333;\r\n	padding:10px;\r\n	border: 1px solid #ccc;\r\n	border-left: 5px solid #ccc;\r\n}\r\n			</pre>\r\n			\r\n		</div>\r\n	</div>\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2008-01-31 19:01:08', 62, 62, '2008-02-20 17:02:48', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 23, 0, 3, '', '', 0, 223, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (47, 'Layout', 'layout', '', 'This template also supports a wide variety of module positions and variations. <strong>All the modules are fully collapsible.</strong> If there is no module published in a certain position, this module position will contract and disappear.\r\n<div class="tip">With the module positions it is possible to have a nested right column or a right column equal to the left column.</div>\r\nModules adjust to fit content vertically and horizontally. Many modules come in different colors and varieties. To switch between colors just set a module class suffix in the module properties.\r\n<br />\r\n<div class="info">This template supports two general layout option. The "left" module block with the sub menu can be aligned to the left or the right site.</div>\r\n<br />\r\n<div class="float-left width50" style="text-align: center;"><h4>Left aligned</h4>\r\n<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_left.jpg" alt="Layout left with module positions" title="Layout left with module positions" width="270" height="330" />\r\n</div>\r\n<div class="float-left width50" style="text-align: center;"><h4>Right aligned</h4>\r\n<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_right.jpg" alt="Layout right with module positions" title="Layout right with module positions" width="270" height="330" />\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2008-01-31 17:56:54', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 64, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (48, 'Dummy Content', 'dummy-content', '', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2007-12-20 15:54:07', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 5, '', '', 0, 229, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (49, 'Item 1', 'item-1', '', '<h3>YOOtoppanel</h3>\r\n<div>The YOOtoppanel module is fully configurable and any article or module can be published here.</div>', '', 1, 5, 0, 35, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:10:53', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (50, 'Item 2', 'item-2', '', '<div class="width50 float-left">\r\n  <div style="width: 250px; height: 180px; border: 10px solid #141414; background: url(images/yootheme/toppanel_yootheme.jpg)">\r\n  </div>\r\n</div>\r\n<div class="width50 float-left">\r\n  <div style="float: right; width: 250px; height: 150px; padding: 20px 10px 10px 10px; border: 10px solid #141414; background: url(images/yootheme/toppanel_login.jpg)">\r\n    {loadposition content1}\r\n  </div>\r\n</div>', '', 1, 5, 0, 35, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:10:42', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (51, 'YOOdrawer', 'yoodrawer', '', '<span style="margin: 0px 10px 0px 10px; display: block;">\r\n	<a href="http://www.yootools.com" target="_blank">\r\n		<img class="correct-png" style="margin: 20px 0px 5px 5px;" width="150" height="110" title="YOOdrawer" alt="YOOdrawer" src="images/yootheme/yoodrawer/yoodrawer.png"/>\r\n	</a>\r\n	<h3>YOOdrawer</h3>\r\n	Keep playing with the new\r\n	<br />YOOdrawer module.\r\n	<br /><a href="http://www.yootools.com" target="_blank">Learn more...</a>\r\n</span>', '', 1, 5, 0, 36, '2007-12-19 09:00:00', 62, '', '2007-12-29 16:47:08', 62, 0, '0000-00-00 00:00:00', '2007-12-19 09:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (52, 'Latest Gadgets', 'latest-gadgets', '', '<span style="margin: 0px 10px 0px 10px; display: block;">\r\n	<a href="index.php?option=com_content&amp;view=article&amp;id=45&amp;Itemid=54">\r\n		<img class="correct-png" style="margin: 20px 0px 5px 5px;" width="150" height="110" title="Latest Gadgets" alt="Latest Gadgets" src="images/yootheme/yoodrawer/gadgets.png"/>\r\n	</a>\r\n	<h3>Latest Gadgets</h3>\r\n	Check out the latest\r\n	<br/>cutting-edge features.\r\n	<br /><a href="index.php?option=com_content&amp;view=article&amp;id=45&amp;Itemid=54">Learn more...</a>\r\n</span>', '', 1, 5, 0, 36, '2007-12-19 09:00:00', 62, '', '2007-12-29 16:47:19', 62, 0, '0000-00-00 00:00:00', '2007-12-19 09:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (53, 'YOOtheme', 'yootheme', '', '<span style="margin: 0px 10px 0px 10px; display: block;">\r\n	<a href="http://www.yootheme.com" target="_blank">\r\n		<img class="correct-png" style="margin: 20px 0px 5px 5px;" width="150" height="110" title="YOOtheme" alt="YOOtheme" src="images/yootheme/yoodrawer/yootheme.png"/>\r\n	</a>\r\n	<h3>YOOtheme</h3>\r\n	Professional Web 2.0\r\n	<br/>Joomla! template club.\r\n	<br /><a href="http://www.yootheme.com/" target="_blank">Learn more...</a>\r\n</span>', '', 1, 5, 0, 36, '2007-12-19 09:00:00', 62, '', '2007-12-29 16:47:25', 62, 0, '0000-00-00 00:00:00', '2007-12-19 09:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (54, 'Sign up', 'sign-up', '', '<span style="margin: 0px 10px 0px 10px; display: block;">\r\n	<a href="http://www.yootheme.com/signup.html" target="_blank">\r\n		<img class="correct-png" style="margin: 20px 0px 5px 5px;" width="150" height="110" title="Sign up" alt="Sign up" src="images/yootheme/yoodrawer/signup.png"/>\r\n	</a>\r\n	<h3>Sign up</h3>\r\n	Web 2.0 for your site?\r\n	<br/>Kick your design from 1999!\r\n	<br /><a href="http://www.yootheme.com/signup.html" target="_blank">Join today...</a>\r\n</span>', '', 1, 5, 0, 36, '2007-12-19 07:00:00', 62, '', '2007-12-29 16:47:30', 62, 0, '0000-00-00 00:00:00', '2007-12-19 07:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (55, 'YOOspotlight', 'yoospotlight', '', '<a style="display: block; padding-top: 5px;" href="index.php?option=com_content&amp;view=article&amp;id=73&amp;Itemid=81" title="YOOspotlight">\r\n<span class="spotlight" style="background: url(images/yootheme/left_yoospotlight.png) no-repeat; display: block; width:117px; height: 102px; margin: auto; cursor: pointer;"></span>\r\n</a>', '', 1, 5, 0, 37, '2007-12-19 03:00:00', 62, '', '2008-01-01 21:19:05', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (56, 'YOOlightbox', 'yoolightbox', '', '<a style="display: block;" href="images/yootheme/features_lightbox_lightbox.jpg" rel="shadowbox" title="YOOlightbox">\r\n<span class="spotlight" style="background: url(images/yootheme/left_yoolightbox.png) no-repeat; display: block; width:79px; height: 95px; margin: auto; cursor: pointer;"></span>\r\n</a>', '', 1, 5, 0, 37, '2007-12-19 01:00:00', 62, '', '2008-03-03 17:55:19', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (58, 'YOOlogin', 'yoologin', '', '{loadposition content2}', '', 1, 5, 0, 37, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:12:10', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (59, 'YOOaccordion', 'yooaccordion', '', '<span style="display:block; text-align: center; font-size: 90%">\r\n<a style="display: block; padding: 5px 0px 5px 0px;" href="http://www.yootools.com" title="YOOaccordion" target="_blank">\r\n<img src="images/yootheme/left_yooaccordion.png" class="correct-png" style="width:88px; height: 77px;" alt="YOOaccordion" title="YOOaccordion" />\r\n</a>\r\nArticles or modules can be published in the YOOaccordion module.\r\n</span>', '', 1, 5, 0, 37, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:11:58', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (60, 'JS Framework ', 'js-framework-', '', '<h4>JS Framework</h4>\r\nAll client side effects are written and optimized for the <a href="http://www.mootools.net" target="_blank">mootools</a> framework. Our custom scripts take advantage of this framework to deliver the most reliable functionality in compact size. No Javascript library overload.\r\n<span class="info">\r\n<strong>Mootools version</strong>\r\n<br />This template uses Mootools 1.11\r\n</span>\r\n<strong>Template download sizes</strong>\r\n<br />All scripts and images are compressed to minimum size and are very fast loading.\r\n<br /><br />\r\n<strong>Javascript Compatibility</strong>\r\n<br />All scripts are compatible with all modern browsers.\r\n<br />Also most Javascript features can turned on/off in the configuration. A turned off feature will not effect the template anymore.', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:14:17', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (61, 'Template Configuration', 'template-configuration', '', '<h4>Template Configuration</h4>\r\nThis template comes with an huge configuration to make it as flexible as possible and to fit all purposes. Features can turned on/off in the configuration.\r\n<span class="tip">For example it''s no problem to deactivate the Styleswitcher completely.</span>\r\n<span class="info">For native 1.5 versions of our templates we used of course the new template parameters feature for the template configuration.</span>\r\n<strong>Sample Configuration for Joomla 1.0</strong>\r\n<pre>\r\n<span style="color:#ff9900">/* color variation */</span>\r\n"color"               => "black",      <span style="color:#ff9900">/* white | black */</span>\r\n<span style="color:#ff9900">/* layout */</span>\r\n"layout"              => "left",       <span style="color:#ff9900">/* left | right */ </span>\r\n<span style="color:#ff9900">/* features */</span>\r\n"lightbox"            => true,         <span style="color:#ff9900">/* true | false */</span>\r\n"loadJavascript"      => "true"        <span style="color:#ff9900">/* true | false */</span>\r\n...\r\n</pre>', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:13:58', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (62, 'YOOtools', 'yootools', '', '<h4>YOOtools</h4>\r\nIn 2008 YOOtheme introduced a new product line: YOOtools! YOOtools are exclusive YOOtheme extensions for Joomla!\r\n<div class="info">\r\n<strong>Outstanding features</strong>\r\n<br /><br />All YOOtools extensions come with different stylings right out of the box! No styling through the template is needed. All images are already included.\r\n<br /><br />Any other Joomla! Module can be loaded inside a YOOtools module. This exclusive new YOOtools feature makes any module combination possible. Think about it!\r\n<br /><br />All YOOtools extensions use the latest web 2.0 effects you dont want to miss.\r\n</div>\r\n<div class="tip">This template is fully compatible with all YOOtools extensions.</div>', '', 1, 5, 0, 38, '2007-12-19 17:00:00', 62, '', '2007-12-29 12:09:49', 62, 0, '0000-00-00 00:00:00', '2007-12-19 17:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (63, 'Sliced Image Sources', 'sliced-image-sources', '', '<h4>Sliced Image Sources</h4>\r\nLaunch up your Adobe Fireworks and open the fully sliced image source files to get started with some serious customizations! Does some color doesn''t match your current taste? Or do you need to match the templates design closer to your clients corporate identity? No problem, start modifying the included image source file to suit your needs.\r\n<span class="download">Adobe Fireworks .png file downloadable as zip file.</span>', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:13:34', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (64, 'Demo Content', 'demo-content', '', '<h4>Demo Content</h4>\r\nIn addition to this template you can download the complete demo content which contains all content from this demo site you see right now. It consists of the database backup as text file and all images used on this site.\r\n<span class="download">Database backup and all images downloadable as zip file.</span>\r\nSo you can set up the whole demo site on your own private webserver. This allows you to check all the backend administration settings and gives you a good start, how to use this template...\r\n<span class="alert">Re-use of any graphics, icons or photos from the demo content for any purpose is strictly prohibited. The demo content is only for demonstration use.</span>', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:13:23', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 8, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (65, 'Browser Compatibility', 'browser-compatibility', '', '<h4>Browser Compatibility</h4>\r\nThis template is designed to be compatible with all modern browsers. So it provides the best experience to all your visitors.\r\n<br /><br />\r\n<img class="correct-png" style="margin-right: 9px" src="images/yootheme/browser_firefox.png" alt="Firefox" title="Firefox" width="48" height="48" align="left" />\r\n<img class="correct-png" style="margin-right: 9px" src="images/yootheme/browser_ie6.png" alt="Internet Explorer 6" title="Internet Explorer 6" width="48" height="48" align="left" />\r\n<img class="correct-png" style="margin-right: 9px" src="images/yootheme/browser_ie7.png" alt="Internet Explorer 7" title="Internet Explorer 7" width="48" height="48" align="left" />\r\n<img class="correct-png" style="margin-right: 9px" src="images/yootheme/browser_safari.png" alt="Safari" title="Safari" width="48" height="48" align="left" />\r\n<img class="correct-png" style="margin-right: 9px" src="images/yootheme/browser_opera.png" alt="Opera" title="Opera" width="48" height="48" align="left" />\r\n<img class="correct-png" style="margin-right: 9px" src="images/yootheme/browser_camino.png" alt="Camino" title="Camino" width="48" height="48" align="left" />\r\n<img class="correct-png" src="images/yootheme/browser_konqueror.png" alt="Konqueror" title="Konqueror" width="48" height="48" align="left" />\r\n<br /><br /><br /><br />\r\n<span class="info" style="clear: both;">Fully tested in...\r\n<ul>\r\n<li>Firefox 2.0+</li>\r\n<li>Internet Explorer 6</li>\r\n<li>Internet Explorer 7</li>\r\n<li>Safari 3.0+</li>\r\n<li>Opera 9.0+</li>\r\n<li>Camino 1.0+</li>\r\n</ul></span>', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2008-01-29 17:59:04', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 7, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (66, 'XHTML&CSS Validation', 'xhtmlacss-validation', '', '<h4>XHTML&CSS Validation</h4>\r\nThis template validates to XHTML and CSS web standards. In particular this template is build with <a href="index.php?option=com_content&task=view&id=19&Itemid=54">tableless CSS design</a>. This template achieves complete separation of the presentation from content and structure using nice and clean XHTML and CSS code.\r\n<br /><br />The major reason for this separation of concerns is to simplify any change from a slight design adjustment to a full-fledged redesign. Furthermore it increases the site accessibility for a wide range of user agent software and devices, like screen readers.\r\n<span class="tip" style="clear: both;">You can check the validation of this template at the world wide web consortium by clicking the icons in the footer of this template.</span><br />', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:13:00', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 6, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (67, 'Tableless CSS Design', 'tableless-css-design', '', '<h4>Tableless CSS Design</h4>\r\nTableless CSS design is the art of building websites without resorting to the use of tables merely for presentational purposes. Instead of tables, CSS (Cascading Style Sheets) positioning is used to arrange elements and text on a web page. This Template is build with tableless CSS design. This improves web accessibility and makes HTML code semantic. \r\n<span class="tip">For more advantages look at <a href="http://en.wikipedia.org/wiki/Web_design_(Tableless)">Wikipedia: tableless web design</a></span>\r\nOur tableless CSS design works in nearly every modern browser. Also you can use any Div-Layout with float and clear inside the template.<br />\r\n<br />\r\nFor Example some left and right floating boxes:<br /><br />\r\n<span style="display: block; background: #ff8c00; float: left; width: 60px; height: 20px; color: #ffffff; text-align: center"> Box A </span>\r\n<span style="display: block; background: #646464; float: left; width: 60px; height: 20px; color: #ffffff; text-align: center"> Box B </span>\r\n<span style="display: block; background: #b40000; float: left; width: 60px; height: 20px; color: #ffffff; text-align: center"> Box C </span>\r\n<span style="display: block; background: #ff8c00; float: right; width: 60px; height: 20px; color: #ffffff; text-align: center"> Box F </span>\r\n<span style="display: block; background: #646464; float: right; width: 60px; height: 20px; color: #ffffff; text-align: center"> Box E </span>\r\n<span style="display: block; background: #b40000; float: right; width: 60px; height: 20px; color: #ffffff; text-align: center"> Box D </span>\r\n<span style="display: block; background: #323232; clear: both; width: 100%; height: 20px; color: #ffffff; text-align: center"> Clearing Box </span>\r\n<br />\r\n<br />', '', 1, 5, 0, 38, '2007-12-19 01:00:00', 62, '', '2008-01-29 17:57:03', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (68, 'YOOmenu', 'yoomenu', '', '<img class="correct-png" style="margin: 0px 0px 10px 10px" src="images/yootheme/features_yoomenu.png" alt="YOOmenu" title="YOOmenu" width="200" height="150" align="right" />\r\nAll menus shown on this page are implemented using the YOOmenu system. YOOmenu is a flexible all-in-one menu system right out of the box.\r\n<br /><br />\r\nYOOtheme has introduces many new menus to the Joomla world like the Slider Menu, the Fancy Menu, the Accordion Menu and the Drop Down Menu.\r\n<br /><br />All menus come with smooth animations and color fadings. The YOOmenu takes your experience to a whole new level!\r\n<br style="clear: both" />\r\n<h4>Learn how to use the YOOmenu features</h4>\r\n<br />\r\n{loadposition content4}', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2008-01-31 14:17:06', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 30, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (70, 'Accordion Menu', 'accordion-menu', '', '<br />\r\n<h4> Accordion Menu</h4>\r\nThis template takes advantage of the exclusive YOOtheme Accordion Menu for all menus in the left or right column.\r\n<div class="info" style="clear: both;">Just create a Separator/Placeholder and some child items in the Menu Manager.\r\n<br style="clear: both;"/>\r\n<img style="margin: 10px 0px 10px 0px" src="images/yootheme/features_accordionmenu_config1.jpg" alt="Accordion Menu Setup" title="Accordion Menu Setup" width="480" height="150" />\r\n<br style="clear: both;"/>\r\n<img style="margin: 0px 0px 00px 0px" src="images/yootheme/features_accordionmenu_config2.jpg" alt="Accordion Menu Setup" title="Accordion Menu Setup" width="320" height="196" />\r\n</div>', '', 1, 5, 0, 39, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:14:58', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (71, 'Active Item Detection', 'active-item-detection', '', '<br />\r\n<h4>Active Item Detection for various color stylings</h4>\r\nWith the Active Item Detection the template knows which menu item you are currently browsing. For example set any CSS class depending on the active/current menu item in the body tag. This makes it possible to give each page a different color styling.\r\n<br />\r\n<span class="info">For native 1.5 versions of our templates we used of course the new template parameters feature for the template configuration.</span>\r\nExample how the template configuration can look like in Joomla 1.0.x:\r\n<pre>\r\n/* item color variation */\r\n"item1"               => "red",          /* red | blue | green | yellow */\r\n"item2"               => "blue",         /* red | blue | green | yellow */\r\n"item3"               => "green",        /* red | blue | green | yellow */\r\n"item4"               => "yellow",       /* red | blue | green | yellow */\r\n...\r\n</pre>\r\n<br />\r\nAnd the generated template HTML output can look like this, if you are currently in Home (item1)...\r\n<pre>&lt;body class=&quot;blue&quot;&gt;...&lt;/body&gt;\r\n</pre>', '', 1, 5, 0, 39, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:14:47', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (72, 'Background Images', 'background-images', '', '<br />\r\n<h4>Background images can be set through Joomla!</h4>\r\nUsing the YOOmenu system background images can be set through Joomla! with the built in Joomla! menu image parameter. Now you can set an image to each menu item in the Joomla! menu administration and it will appear as the items background image.\r\n<br />\r\n<div class="info" style="clear: both;">After creating a new menu item open it again for editing. Now you can set an image to the menu item parameter in the parameters section. After saving the image will appear as background image behind the menu item.\r\n<br />\r\n<img style="margin: 10px 0px 10px 0px" src="images/yootheme/features_yoomenu_config.jpg" alt="YOOmenu Configuration" title="YOOmenu Configuration" width="490" height="140" /></div>', '', 1, 5, 0, 39, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:14:35', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (73, 'YOOspotlight', 'yoospotlight', '', '<span class="spotlight float-right" style="background: url(images/yootheme/features_spotlight.jpg); margin: 0px 0px 10px 10px; display: block; width: 240px; height: 180px;" title="Test YOOspotlight"></span>YOOtheme introduces another new exclusive YOOtheme template feature. YOOspotlight!\r\n<br />\r\n<br />\r\nYOOspotlight creates a smooth fading effect between two images while hovering a element. Now you can place cool spotlight effects all over your site.\r\n<br /><br />\r\n<h4>How to</h4>\r\nCreate a <em class="box">div or span element</em> with a background image (image.png) to display your image in your content. Add a <em class="box">class="spotlight"</em> attribute to the div/span tag. The filename of the related image for the hover effect has to be named with the suffix _spotlight (image_spotlight.png) and has to be in the same folder as the background image (image.png).\r\n<br /><br />Example for div tag:\r\n<pre style="white-space:normal;">\r\n&lt;div class=&quot;spotlight&quot; style=&quot;background: url(../images/logo.png);&quot; width=&quot;240&quot; height=&quot;180&quot;&gt;&lt;/div&gt;</pre>\r\n<br />Example for span tag:\r\n<pre style="white-space:normal;">\r\n&lt;span class=&quot;spotlight&quot; style=&quot;background: url(../images/logo.png); display: block;&quot; width=&quot;240&quot; height=&quot;180&quot;&gt;&lt;/span&gt;\r\n</pre>\r\n<br />\r\n<div class="tip">If you want to put a link around the YOOspotlight image use span tags for the YOOspotlight to be XHTML 1.0 valid. And don''t forget to add <em class="box">display: block</em> to the CSS styling for the span tag.\r\n</div>\r\n<div class="alert">Please Note: YOOspotlight is only working in IE6 with .jpg and .gif images. If you are using transparent .png images no effect is applied in IE6.\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2007-12-20 13:57:04', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 7, '', '', 0, 22, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (74, 'YOOlightbox', 'yoolightbox', '', '<a href="images/yootheme/features_lightbox_lightbox.jpg" rel="shadowbox" title="Test Lightbox"><img style="margin: 0px 0px 10px 10px" src="images/yootheme/features_lightbox.jpg" alt="Test Lightbox" title="Test Lightbox" width="240" height="180" align="right" /></a>\r\nWe&rsquo;ve integrated the most advanced Lightbox feature ever created called <a href="http://mjijackson.com/shadowbox" target="_blank">Shadowbox</a>. The Lightbox feature allows you to show overlay popups of any kind of media content on the page you are currently at instead of linking to a new window. It shows a small preloader animation before displaying the content.\r\n<br /><br />It supports all of the most popular web media formats including images, QuickTime, Windows Media Player, Flash, Flash video, and even external web pages. This makes it easy to display your content without converting it to some other format.\r\n<br /><br />\r\n<h4>Usage</h4>\r\nAdd a <em class="box">rel=&quot;shadowbox&quot;</em> attribute to any link tag to activate the lightbox feature.<br />\r\n<br />\r\nFor example:<br />\r\n<pre style="white-space:normal;">\r\n&lt;a href=&quot;image.jpg&quot; rel=&quot;shadowbox&quot; title=&quot;my caption&quot;&gt;image #1&lt;/a&gt;\r\n</pre>\r\n<em>Optional</em>: Use the title attribute if you want to show a caption.<br />\r\n<br />\r\nIf you have a set of related images that you would like to group, follow step one but additionally include a group name between square brackets in the rel attribute.<br />\r\n<br />\r\nFor example:<br />\r\n<pre style="white-space:normal;">\r\n&lt;a href=&quot;image-1.jpg&quot; rel=&quot;shadowbox[a]&quot;&gt;image #1&lt;/a&gt;<br />\r\n&lt;a href=&quot;image-2.jpg&quot; rel=&quot;shadowbox[a]&quot;&gt;image #2&lt;/a&gt;\r\n</pre>\r\n<br />\r\n<h4>Examples</h4>\r\nTry out this feature by clicking on the following links:\r\n<span class="note"><a href="images/yootheme/features_lightbox_lightbox.jpg" rel="shadowbox" title="my caption">Single Image</a></span>\r\n<span class="note"><a href="images/yootheme/features_lightbox_lightbox.jpg" rel="shadowbox[aa]">Image Gallery (With two images)</a>\r\n<a href="images/yootheme/features_lightbox2_lightbox.jpg" rel="shadowbox[aa]"></a></span>\r\n<span class="note"><a href="http://images.apple.com/movies/paramount/beowulf/beowulf-tr2_h.640.mov" title="Beowulf Trailer" class="option" rel="shadowbox;width=640;height=272">Apple.com Trailer</a></span>\r\n<span class="note"><a href="http://www.youtube.com/v/OYecfV3ubP8&amp;autoplay=1" title="1984 Apple''s Macintosh Commercial"  rel="shadowbox;width=405;height=340">YouTube</a></span>\r\n<span class="note"><a href="http://video.google.com/googleplayer.swf?docid=1352016870638076087&amp;autoplay=1" title="Google Video" rel="shadowbox;width=405;height=340">Google Video</a></span>\r\n<span class="note"><a href="http://www.google.com/" title="Google.com" rel="shadowbox">External site</a></span>', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2008-03-03 17:53:40', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 8, '', '', 0, 11, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (75, 'YOOreflection', 'yooreflection', '', '<p><img class="reflect float-right correct-png" src="images/yootheme/features_reflection.gif" alt="Reflection" title="Reflection" width="240" height="70" /></p>\r\nYOOreflection allows to add fantastic reflection effects to your images in modern browsers. This template includes <a href="http://www.digitalia.be/software/reflectionjs-for-mootools" target="_blank">Reflection.js for mootools</a> which is an improved version of the original Reflection.js script. So you don''t need to spend time in an image editor creating reflections.<br />\r\n<br /><br />\r\n<h4>Usage</h4>\r\nYOOreflections can be added to any image tag over any kind of background (even image backgrounds!). Add a <em class="box">class=&quot;reflect&quot;</em> attribute to any image tag.<br />\r\n<br />\r\nFor example:\r\n<pre style="white-space: normal;">\r\n&lt;img class=&quot;reflect&quot; title=&quot;my caption&quot; src=&quot;image.jpg&quot; width=&quot;240&quot; height=&quot;180&quot; /&gt;\r\n</pre>\r\n<br />You can apply multiple classes to an image (separated by spaces), the script will detect if “reflect” is one of them.\r\n<br /><br />\r\n<strong>CSS limitations</strong><br />\r\nWhen adding the reflection effect, the script wraps the image inside a block and adds the reflection to the same block, just below the original image. The class and style attributes of the image will be set blank and applied to the div instead, so the whole block will show like the original image.\r\n<span class="alert">This means that you can style the mirrored images using CSS classes and using their style attribute, but you can not style the img tag directly.</span>', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2007-12-20 13:56:34', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 9, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (77, 'YOOstyleswitcher', 'yoostyleswitcher', '', '<img class="correct-png" style="margin: 0px 0px 10px 10px" src="images/yootheme/features_yoostyleswitcher.png" alt="YOOstyleswitcher" title="YOOstyleswitcher" width="200" height="150" align="right" />\r\nAccessibility is very important to make your website accessible for a wide range of users. The YOOstyleswitcher enables your website to fit to any screen resolution and to resize the entire text. This is done by giving users ability to change font size and page width.\r\n<br />\r\n<br />\r\nThe YOOstyleswitcher is a smart combination of Javascript and PHP which delivers an advanced solution for best user experience.<div class="info" style="clear: both;">And the icing on the cake is a smooth sliding effect. Try it out now, by clicking the YOOstyleswitcher!</div>\r\n<div class="tip">Notice: it''s no problem to deactivate the YOOstyleswitcher completely and to stay always at a fixed width. Just set the YOOstyleswitcher in the template configuration to false and choose your default fixed width.</div>\r\nFor Example:\r\n<pre>\r\n"styleswitcherFont"   => false,           /* true | false */\r\n"styleswitcherWidth"  => false,           /* true | false */\r\n\r\n"fontDefault"         => "font-medium",   /* font-small | font-medium | font-large */\r\n"widthDefault"        => "width-wide",    /* width-thin | width-wide | width-fluid */\r\n</pre>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2008-01-31 14:21:19', 62, 62, '2008-02-20 17:58:42', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 10, '', '', 0, 11, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (78, 'PNG Fix for IE6', 'png-fix-for-ie6', '', 'This template includes the YOOtheme PNG Fix for Internet Explorer up to version 6.x because these browser versions don’t support PNG transparency natively (Internet Explorer version 7 supports PNG transparency natively). The YOOtheme PNG Fix enables PNG Alpha Transparency for inline images in the whole template just by giving them a <em class="box">class=&quot;correct-png&quot;</em> attribute. <br />\r\n<br />\r\nFor example:<br />\r\n<pre style="white-space: normal;">\r\n&lt;img class=&quot;correct-png&quot; src=&quot;image-1.jpg&quot; width=&quot;240&quot; height=&quot;180&quot; /&gt;\r\n</pre>\r\n<br />\r\n<div class="info">PNG Fix only effects png images you want and not all png images. The YOOtheme PNG Fix is only activated when needed. IE7 and all other browsers ignore the PNG Fix.</div>\r\nTake a look at the icons inside the black, red and yellow module boxes, which are images with PNG transparency. <br />\r\n<br />', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2007-12-20 13:56:01', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 11, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (79, 'Load Modules', 'load-modules', '', '<span class="info">You can load any other Joomla! Modules inside a YOOtools module. This exclusive new YOOtools feature makes any module combination possible. For example you can show the latest news, a random product or login inside any YOOtools module. Think about it!</span>\r\n<span style="display: block; float: left; width: 110px">{loadposition content5}</span>', '', 1, 5, 0, 40, '2007-12-19 01:00:00', 62, '', '2007-12-20 13:15:27', 62, 0, '0000-00-00 00:00:00', '2007-12-19 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (80, 'YOOcarousel', 'yoocarousel', '', '<img class="correct-png" align="right" width="150" height="110" title="Exclusive YOOcarousel" alt="Exclusive YOOcarousel" src="images/yootheme/yoocarousel/yoocarousel_spotlight.png"/>\r\n<strong>We proudly presents exclusive YOOcarousel module!</strong>\r\n<br /><br />The YOOcarousel displays a category of articles, creates a slide or fade transition when cycling the articles. Using the tabs you can navigate through all articles.\r\n<span class="tip" style="width: 290px;">The YOOcarousel module comes with a lot of different styles. All styles work out of the box.</span>', '', 1, 5, 0, 40, '2007-12-19 07:00:00', 62, '', '2007-12-29 12:18:12', 62, 0, '0000-00-00 00:00:00', '2007-12-19 07:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (81, 'YOOslider', 'yooslider', '', '<div class="floatbox" style="width: 310px;">\r\n	<div class="float-left" style="width: 175px; height: 150px;">\r\n		<center><a href="http://www.yootools.com" target="_blank">\r\n			<img class="correct-png" style="margin: 20px 0px 0px 0px;" width="150" height="110" title="New! YOOslider" alt="New! YOOslider" src="images/yootheme/yooslider/yooslider.png"/>\r\n		</a></center>\r\n	</div>\r\n	<div class="float-left" style="width: 135px; height: 100px; padding: 50px 0px 0px 0px;">\r\n		<h3>New! YOOslider</h3>\r\n		Keep playing with the new\r\n		<br />YOOslider module.\r\n		<br /><a href="http://www.yootools.com" target="_blank">Learn more...</a>\r\n	</div>\r\n</div>', '', 1, 5, 0, 41, '2007-12-19 07:00:00', 62, '', '2007-12-20 17:26:06', 62, 0, '0000-00-00 00:00:00', '2007-12-19 07:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (82, 'Latest Gadgets', 'latest-gadgets', '', '<div class="floatbox" style="width: 310px;">\r\n	<div class="float-left" style="width: 175px; height: 150px;">\r\n		<center><a href="index.php?option=com_content&view=article&id=45&Itemid=54">\r\n			<img class="correct-png" style="margin: 20px 0px 0px 0px;" width="150" height="110" title="Latest Gadgets" alt="Latest Gadgets" src="images/yootheme/yooslider/gadgets.png"/>\r\n		</a></center>\r\n	</div>\r\n	<div class="float-left" style="width: 135px; height: 100px; padding: 50px 0px 0px 0px;">\r\n		<h3>Latest Gadgets</h3>\r\n		Check out the latest\r\n		<br/>cutting-edge features.\r\n		<br /><a href="index.php?option=com_content&view=article&id=45&Itemid=54">Learn more...</a>\r\n	</div>\r\n</div>', '', 1, 5, 0, 41, '2007-12-19 05:00:00', 62, '', '2007-12-20 17:25:58', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (83, 'YOOtheme', 'yootheme', '', '<div class="floatbox" style="width: 310px;">\r\n	<div class="float-left" style="width: 175px; height: 150px;">\r\n		<center><a href="http://www.yootheme.com">\r\n			<img class="correct-png" style="margin: 10px 0px 15px 0px;" width="150" height="110" title="YOOtheme" alt="YOOtheme" src="images/yootheme/yooslider/yootheme.png"/>\r\n		</a></center>\r\n	</div>\r\n	<div class="float-left" style="width: 135px; height: 100px; padding: 50px 0px 0px 0px;">\r\n		<h3>YOOtheme</h3>\r\n		Professional Web 2.0\r\n		<br/>Joomla! template club.\r\n		<br /><a href="http://www.yootheme.com/">Learn more...</a>\r\n	</div>\r\n</div>', '', 1, 5, 0, 41, '2007-12-19 03:00:00', 62, '', '2007-12-20 17:26:18', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (84, 'Sign up', 'sign-up', '', '<div class="floatbox" style="width: 310px;">\r\n	<div class="float-left" style="width: 175px; height: 150px;">\r\n		<center><a href="http://www.yootheme.com/signup.html">\r\n			<img class="correct-png" style="margin: 10px 0px 15px 0px;" width="150" height="110" title="Sign up" alt="Sign up" src="images/yootheme/yooslider/signup.png"/>\r\n		</a></center>\r\n	</div>\r\n	<div class="float-left" style="width: 135px; height: 100px; padding: 50px 0px 0px 0px;">\r\n		<h3>Sign up</h3>\r\n		Web 2.0 for your site?\r\n		<br/>Kick your design from 1999!\r\n		<br /><a href="http://www.yootheme.com/signup.html">Join today...</a>\r\n	</div>\r\n</div>', '', 1, 5, 0, 41, '2007-12-19 03:00:00', 62, '', '2007-12-20 17:26:28', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (85, 'YOOlogin', 'yoologin', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=11" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOlogin" alt="YOOlogin" src="images/yootheme/yooscroller/box_yoologin.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOlogin</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:23:57', 62, '', '2008-01-29 14:06:11', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:23:57', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 8, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (86, 'YOOtoppanel', 'yootoppanel', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=7&amp;Itemid=10" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOtoppanel" alt="YOOtoppanel" src="images/yootheme/yooscroller/box_yootoppanel.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOtoppanel</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:24:11', 62, '', '2008-01-29 14:06:20', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:24:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (87, 'YOOslider', 'yooslider', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=9" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOslider" alt="YOOslider" src="images/yootheme/yooscroller/box_yooslider.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOslider</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:24:31', 62, '', '2008-01-29 14:06:52', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:24:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (88, 'YOOcarousel', 'yoocarousel', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=3&amp;Itemid=7" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOcarousel" alt="YOOcarousel" src="images/yootheme/yooscroller/box_yoocarousel.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOcarousel</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:24:45', 62, '', '2008-01-29 14:06:59', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:24:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 5, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (89, 'YOOdrawer', 'yoodrawer', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=8" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOdrawer" alt="YOOdrawer" src="images/yootheme/yooscroller/box_yoodrawer.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOdrawer</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:25:00', 62, '', '2008-01-29 14:07:07', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:25:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 6, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (90, 'YOOaccordion', 'yooaccordion', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=6" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOaccordion" alt="YOOaccordion" src="images/yootheme/yooscroller/box_yooaccordion.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOaccordion</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:25:14', 62, '', '2008-01-29 14:07:21', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:25:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 7, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (91, 'YOOsnapshots', 'yoosnapshots', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=12" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOsnapshots" alt="YOOsnapshots" src="images/yootheme/yooscroller/box_yoosnapshots.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOsnapshots</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-28 17:25:27', 62, '', '2008-01-29 14:07:33', 62, 0, '0000-00-00 00:00:00', '2008-01-28 17:25:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 9, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (92, 'YOOtooltip', 'yootooltip', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n		<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=59&amp;Itemid=15" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOtooltip" alt="YOOtooltip" src="images/yootheme/yooscroller/box_yootooltip.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOtooltip</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-29 14:01:57', 62, '', '2008-02-01 13:53:44', 62, 0, '0000-00-00 00:00:00', '2008-01-29 14:01:57', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (93, 'YOOscroller', 'yooscroller', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=58&amp;Itemid=14" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOscroller" alt="YOOscroller" src="images/yootheme/yooscroller/box_yooscroller.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -25px; font-weight: bold;">YOOscroller</div>\r\n</div>', '', 1, 5, 0, 42, '2008-01-29 14:02:18', 62, '', '2008-02-01 13:53:16', 62, 0, '0000-00-00 00:00:00', '2008-01-29 14:02:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (94, 'YOOcarousel', 'yoocarousel', '', '<span class="spotlight" style="display: block; width: 400px; height: 220px; background: url(images/yootheme/yooslider/photo-h/yoocarousel.png)">\r\n</span>', '', 1, 5, 0, 43, '2008-01-29 14:23:59', 62, '', '2008-01-29 16:01:46', 62, 0, '0000-00-00 00:00:00', '2008-01-29 14:23:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (95, 'YOOtooltip', 'yootooltip', '', '<span class="spotlight" style="display: block; width: 400px; height: 220px; background: url(images/yootheme/yooslider/photo-h/yootooltip.png)">\r\n</span>', '', 1, 5, 0, 43, '2008-01-29 14:23:59', 62, '', '2008-01-29 16:01:23', 62, 0, '0000-00-00 00:00:00', '2008-01-29 14:23:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (96, 'YOOscroller', 'yooscroller', '', '<span class="spotlight" style="display: block; width: 400px; height: 220px; background: url(images/yootheme/yooslider/photo-h/yooscroller.png)">\r\n</span>', '', 1, 5, 0, 43, '2008-01-29 14:23:59', 62, '', '2008-01-29 16:01:02', 62, 0, '0000-00-00 00:00:00', '2008-01-29 14:23:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (97, 'YOOslider', 'yooslider', '', '<span class="spotlight" style="display: block; width: 400px; height: 220px; background: url(images/yootheme/yooslider/photo-h/yooslider.png)">\r\n</span>', '', 1, 5, 0, 43, '2008-01-29 14:23:59', 62, '', '2008-01-29 16:00:39', 62, 0, '0000-00-00 00:00:00', '2008-01-29 14:23:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_frontpage`
-- 

DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_content_frontpage`
-- 

INSERT INTO `jos_content_frontpage` VALUES (6, 2);
INSERT INTO `jos_content_frontpage` VALUES (14, 4);
INSERT INTO `jos_content_frontpage` VALUES (7, 3);
INSERT INTO `jos_content_frontpage` VALUES (1, 1);
INSERT INTO `jos_content_frontpage` VALUES (16, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_rating`
-- 

DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro`;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `__section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) TYPE=MyISAM  AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro`
-- 

INSERT INTO `jos_core_acl_aro` VALUES (10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_groups`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) TYPE=MyISAM  AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `jos_core_acl_aro_groups`
-- 

INSERT INTO `jos_core_acl_aro_groups` VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_map`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_sections`
-- 

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
CREATE TABLE `jos_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`section_id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) TYPE=MyISAM  AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro_sections`
-- 

INSERT INTO `jos_core_acl_aro_sections` VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_groups_aro_map`
-- 

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_core_acl_groups_aro_map`
-- 

INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25, '', 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_items`
-- 

DROP TABLE IF EXISTS `jos_core_log_items`;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_searches`
-- 

DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE `jos_core_log_searches` (
  `search_term` text NOT NULL,
  `hits` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_groups`
-- 

DROP TABLE IF EXISTS `jos_groups`;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_groups`
-- 

INSERT INTO `jos_groups` VALUES (0, 'Public');
INSERT INTO `jos_groups` VALUES (1, 'Registered');
INSERT INTO `jos_groups` VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu`
-- 

DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(225) default NULL,
  `name` text,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(150) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) TYPE=MyISAM  AUTO_INCREMENT=109 ;

-- 
-- Dumping data for table `jos_menu`
-- 

INSERT INTO `jos_menu` VALUES (1, 'mainmenu', 'Joomla', 'joomla', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Welcome to the Frontpage\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 1, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 0, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (13, 'othermenu', 'Joomla! Help', 'joomla-help', 'http://help.joomla.org', 'url', 0, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (77, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 75, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (90, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 89, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (27, 'mainmenu', 'Joomla! Overview', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (75, 'mainmenu', 'Drop Down Menu', 'drop-down-menu', 'index.php?option=com_content&view=article&id=48', 'component', 1, 54, 20, 1, 2, 62, '2007-12-20 13:12:41', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (76, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 75, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', 1, 1, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (82, 'mainmenu', 'YOOlightbox', 'yoolightbox', 'index.php?option=com_content&view=article&id=74', 'component', 1, 54, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=submenu_web20.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (83, 'mainmenu', 'YOOstyleswitcher', 'yoostyleswitcher', 'index.php?option=com_content&view=article&id=77', 'component', 1, 54, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=submenu_web20.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (84, 'mainmenu', 'YOOreflection', 'yooreflection', 'index.php?option=com_content&view=article&id=75', 'component', 1, 54, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=submenu_web20.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (85, 'mainmenu', 'PNG Fix for IE6', 'png-fix-for-ie6', 'index.php?option=com_content&view=article&id=78', 'component', 1, 54, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=submenu_star.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (86, 'mainmenu', 'Separator', 'separator', '', 'separator', 0, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (87, 'mainmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 86, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (88, 'mainmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 86, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (89, 'othermenu', 'Sample Levels', 'deeper-levels-examples', 'index.php?option=com_content&view=article&id=48', 'component', 0, 0, 20, 0, 4, 62, '2007-12-21 16:40:26', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', 1, 1, 4, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 1, 1, 11, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_limit=1\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\npage_title=Newsfeeds\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 1, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=The News\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (53, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=article&id=44', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1);
INSERT INTO `jos_menu` VALUES (54, 'mainmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=45', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (55, 'mainmenu', 'Typography', 'typography', 'index.php?option=com_content&view=article&id=46', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (56, 'mainmenu', 'Layout', 'layout', 'index.php?option=com_content&view=article&id=47', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (74, 'mainmenu', 'YOOmenu', 'yoomenu', 'index.php?option=com_content&view=article&id=68', 'component', 1, 54, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=submenu_new.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (57, 'mainmenu', 'Yellow', 'yellow', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=yellow', 'url', 1, 53, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_yellow.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (58, 'mainmenu', 'All Module Positions', 'all-module-positions', 'index.php?option=com_content&view=article&id=48', 'component', 1, 56, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (81, 'mainmenu', 'YOOspotlight', 'yoospotlight', 'index.php?option=com_content&view=article&id=73', 'component', 1, 54, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=submenu_web20.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (80, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 75, 20, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (79, 'mainmenu', 'Level 5', 'level-5', 'index.php?option=com_content&view=article&id=48', 'component', 1, 78, 20, 4, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (78, 'mainmenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=48', 'component', 1, 77, 20, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (64, 'mainmenu', 'Rose', 'rose', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=rose', 'url', 1, 53, 0, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_rose.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (65, 'mainmenu', 'Red', 'red', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=red', 'url', 1, 53, 0, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_red.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (66, 'mainmenu', 'Grey', 'grey', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=grey', 'url', 1, 53, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_grey.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (67, 'mainmenu', 'Beige', 'beige', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=beige', 'url', 1, 53, 0, 1, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_beige.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (68, 'mainmenu', 'Lilac', 'lilac', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=lilac', 'url', 1, 53, 0, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_lilac.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (70, 'mainmenu', 'Green', 'green', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=green', 'url', 1, 53, 0, 1, 2, 62, '2007-12-20 14:23:50', 0, 0, 0, 0, 'menu_image=submenu_green.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (71, 'mainmenu', 'Turquoise', 'turquoise', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=turquoise', 'url', 1, 53, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_turquoise.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (72, 'mainmenu', 'Black', 'black', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=black', 'url', 1, 53, 0, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_black.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (73, 'mainmenu', 'Blue', 'blue', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=default', 'url', 1, 53, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_blue.png\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (91, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 89, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (92, 'othermenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 0, 91, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (93, 'othermenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=48', 'component', 0, 92, 20, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (94, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 89, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (95, 'othermenu', 'Accordion A', 'accordion-a', '', 'separator', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (96, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 95, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (97, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 95, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (98, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 95, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (99, 'othermenu', 'Accordion B', 'accordion-b', '', 'separator', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (100, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 99, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (101, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 99, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (102, 'mainmenu', 'test', 'test', '', 'separator', -2, 0, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (103, 'mainmenu', 'test', 'test', '', 'separator', -2, 0, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (104, 'mainmenu', 'test2', 'test2', '', 'separator', -2, 0, 0, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (105, 'mainmenu', 'link', 'link', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (106, 'mainmenu', 'test3', 'test3', '', 'separator', -2, 0, 0, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (107, 'mainmenu', 'Level 2', 'level-2', '', 'separator', 0, 86, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (108, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 0, 107, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu_types`
-- 

DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(225) NOT NULL default '',
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) TYPE=MyISAM  AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` VALUES (2, 'usermenu', 'User Menu', 'A Menu for logged in Users');
INSERT INTO `jos_menu_types` VALUES (3, 'topmenu', 'Top Menu', 'Top level navigation');
INSERT INTO `jos_menu_types` VALUES (4, 'othermenu', 'Other Menu', 'Additional links');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages`
-- 

DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages_cfg`
-- 

DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` text NOT NULL,
  `cfg_value` text NOT NULL,
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`(100))
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_migration_backlinks`
-- 

DROP TABLE IF EXISTS `jos_migration_backlinks`;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules`
-- 

DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(150) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(150) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) TYPE=MyISAM  AUTO_INCREMENT=91 ;

-- 
-- Dumping data for table `jos_modules`
-- 

INSERT INTO `jos_modules` VALUES (1, 'Main Menu', '', 1, 'menu', 62, '2008-02-11 12:02:11', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES (5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (16, 'Polls', '', 2, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, '');
INSERT INTO `jos_modules` VALUES (17, 'User Menu', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (18, 'Login Form', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, '');
INSERT INTO `jos_modules` VALUES (19, 'Latest News', '', 1, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (20, 'Statistics', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` VALUES (21, 'Who''s Online', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=-black\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (22, 'Popular', '', 1, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, '');
INSERT INTO `jos_modules` VALUES (23, 'Archive', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (24, 'Sections', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (25, 'Newsflash', '', 2, 'header', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=3\nlayout=default\nimage=0\nlink_titles=\nreadmore=0\nitem_title=0\nitems=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (26, 'Related Items', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (27, 'Search', '', 1, 'search', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (28, 'Random Image', '', 5, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (29, 'Top Menu', '', 1, 'topmenu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (30, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (32, 'Wrapper', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (34, 'Feed Display', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, '');
INSERT INTO `jos_modules` VALUES (35, 'Breadcrumbs', '', 1, 'breadcrumb', 62, '2008-01-25 11:24:51', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (36, 'Syndication', '', 1, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, '');
INSERT INTO `jos_modules` VALUES (42, 'Sub Menu', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=1\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (38, 'Advertisement', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (43, 'YOOaccordion', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_accordion', 0, 0, 0, 'catid=37\nstyle=default\nmultiple_open=0\nopen_all=0\norder=o_asc\nitems=4\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://forum.joomla.org/index.php/topic,47524.0.html" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/index.php/board,8.0.html" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/index.php/board,267.0.html" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, '');
INSERT INTO `jos_modules` VALUES (44, 'YOOcarousel (Basic) Frontpage', '', 0, 'content6', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_carousel', 0, 0, 0, 'catid=40\nstyle=basic\nmodule_width=357\nmodule_height=230\nautoplay=on\nslide_interval=50000\ntransition_duration=700\ntransition_effect=scroll\ncontrol_panel=bottom\nrotate_action=mouseover\nrotate_duration=300\nrotate_effect=scroll\nbuttons=0\norder=o_asc\nitems=10\nmoduleclass_sfx=-blank\nreadmore=0\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (45, 'YOOdrawer', '', 4, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_yoo_drawer', 0, 0, 0, 'catid=36\nstyle=default-v\ntitle=YOOdrawer\nitem_size=220\nitem_minimized=90\norder=o_asc\nitems=4\nmodule_height=150\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (46, 'YOOlogin (Default)', '', 1, 'content1', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=default\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=text\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (47, 'YOOslider (Default-H)', '', 0, 'advert3', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_slider', 0, 0, 0, 'catid=41\nstyle=default-h\nitem_size=163\nitem_expanded=310\norder=o_asc\nitems=4\nmodule_height=153\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (48, 'YOOtoppanel', '', 0, 'absolute', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_toppanel', 0, 0, 0, 'catid=35\nstyle=default\ntop_position=0\nleft_position=50\nmodule_height=340\nmodule_width=600\ntrigger_label=Toppanel\nbutton_label=close\nbutton=1\nfx_duration=500\norder=o_asc\nitems=2\nmoduleclass_sfx=-blank\nreadmore=0\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (49, 'YOOcarousel (List)', '', 0, 'content3', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_carousel', 0, 0, 0, 'catid=38\nstyle=list\nmodule_width=653\nmodule_height=350\nautoplay=on\nslide_interval=50000\ntransition_duration=700\ntransition_effect=scroll\ncontrol_panel=top\nrotate_action=click\nrotate_duration=150\nrotate_effect=fade\nbuttons=1\norder=o_asc\nitems=10\nmoduleclass_sfx=-blank\nreadmore=0\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (50, 'YOOcarousel (Basic) YOOmenu', '', 0, 'content4', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_carousel', 0, 0, 0, 'catid=39\nstyle=basic\nmodule_width=650\nmodule_height=550\nautoplay=on\nslide_interval=50000\ntransition_duration=700\ntransition_effect=scroll\ncontrol_panel=top\nrotate_action=mouseover\nrotate_duration=100\nrotate_effect=fade\nbuttons=0\norder=o_asc\nitems=10\nmoduleclass_sfx=-blank\nreadmore=0\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (51, 'Dogear', '<div style="position: absolute;	z-index: 20; top: 0px; left: 0px; width: 135px; height: 135px;">\r\n	<a href="http://www.yootheme.com" target="_blank" title="YOOtheme"><img class="correct-png" style="width: 135px; height: 135px;" src="images/yootheme/absolute_yoodogear.png" alt="YOOtheme" /></a>\r\n</div>', 2, 'absolute', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (52, 'Advert 1', 'Set Module Class Suffix element of the Module properties to "-blue" to show up like this.', 2, 'advert1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-blue\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (53, 'Advert 2', 'Set Module Class Suffix element of the Module properties to "-green" to show up like this.', 1, 'advert2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-green\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (54, 'YOOlogin (Quick)', '', 1, 'content5', 62, '2007-12-29 14:38:02', 1, 'mod_yoo_login', 0, 0, 0, 'style=quick\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=icon\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (55, 'YOOlogin', '', 1, 'content2', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=default\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=text\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (56, 'YOOlogin (Quick)', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=quick\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=icon\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (57, 'Advert 3', 'Set Module Class Suffix element of the Module properties to "-white" to show up like this.', 3, 'advert3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-white\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (58, 'Skyscraper', '<img class="correct-png" src="images/yootheme/banner_skyscraper.png" title="Place your banner here!" alt="Place your banner here!" />', 2, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (59, 'Advert 4', 'Set Module Class Suffix element of the Module properties to "-grey" to show up like this.', 1, 'advert4', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-grey\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (60, 'Badge', '<img class="correct-png" src="images/yootheme/banner_badge.png" title="WEB 2.0 inside!" alt="WEB 2.0 inside!" />', 3, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (61, 'Bottom 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'bottom1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (62, 'Bottom  2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'bottom2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (63, 'Bottom  3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'bottom3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (64, 'Bottom  4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'bottom4', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (65, 'Bottom (YOOtheme)', '<center>\r\n<a href="http://www.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 15px;" src="images/yootheme/bottom_yootheme.png" alt="Powerd by YOOtheme" title="Powerd by YOOtheme" width="150" height="33" />\r\n</a>\r\n</center>', 2, 'bottom1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (66, 'Bottom (Sign up)', '<center>\r\n<a href="http://www.yootheme.com/signup.html" target="_blank">\r\n  <img class="correct-png" style="margin-top: 10px;" src="images/yootheme/bottom_signup.png" alt="Sign up today!" title="Sign up today!" width="150" height="40" />\r\n</a>\r\n</center>', 2, 'bottom2', 62, '2008-02-01 16:41:13', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (67, 'Bottom (Validation)', '<center>\r\n<a href="http://validator.w3.org/check?uri=http://demo.yootheme.com/feb08" target="_blank"><img src="images/yootheme/bottom_validation_xhtml.png" alt="XHTML Validation" title="XHTML Validation" width="80" height="15" /></a>\r\n<br />\r\n<a href="http://jigsaw.w3.org/css-validator/validator?uri=http://demo.yootheme.com/feb08" target="_blank"><img src="images/yootheme/bottom_validation_css.png" alt="CSS Validation" title="CSS Validation" width="80" height="15" /></a>\r\n<br />\r\n<a href="http://www.yootheme.com" target="_blank"><img src="images/yootheme/bottom_validation_yoo.png" alt="Powerd by YOOtheme" title="Powerd by YOOtheme" width="80" height="15" /></a>\r\n<br />\r\n</center>', 2, 'bottom3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (68, 'Left', 'Standard Modules without Module Class Suffix show up like this.', 12, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (69, 'Bottom (YOOtools)', '<center>\r\n<a href="http://www.yootools.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 15px;" src="images/yootheme/bottom_yootools.png" alt="Compatible with all YOOtools" title="Compatible with all YOOtools" width="127" height="33" />\r\n</a>\r\n</center>', 2, 'bottom4', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (70, 'Module Class Suffixes', 'Possible Module Class Suffix elements are:\r\n<ul>\r\n<li>-white</li>\r\n<li>-dotted</li>\r\n<li>-grey</li>\r\n<li>-black</li>\r\n<li>-blue</li>\r\n<li>-green</li>\r\n<li>-yellow</li>\r\n<li>-new</li>\r\n<li>-top</li>\r\n<li>-pick</li>\r\n</ul>\r\nThe Module Class Suffixes are working in following positions: left, right, user1-4, advert1-4, bottom1-4', 13, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=-grey\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (71, 'Left (Yellow)', 'Set Module Class Suffix element of the Module properties to "-yellow" to show up like this.', 15, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=-yellow\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (72, 'Logo', '<a href="index.php" title="Home"><img class="correct-png" src="images/yootheme/logo.png" title="Home" alt="Home" /></a>', 1, 'logo', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (73, 'Right', 'Standard Modules without Module Class Suffix show up like this.', 6, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (74, 'Module Class Suffixes', 'Possible Module Class Suffix elements are:\r\n<ul>\r\n<li>-white</li>\r\n<li>-dotted</li>\r\n<li>-grey</li>\r\n<li>-black</li>\r\n<li>-blue</li>\r\n<li>-green</li>\r\n<li>-yellow</li>\r\n<li>-new</li>\r\n<li>-top</li>\r\n<li>-pick</li>\r\n</ul>\r\nThe Module Class Suffixes are working in position: left, right, user1-4, advert1-4, bottom1-4', 7, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (75, 'Top 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'top1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (76, 'Top 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'top2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (77, 'Top 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'top3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (78, 'Top 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <strong>Standard modules show up like this.</strong>', 1, 'top4', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (79, 'Sliced Fireworks Files', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="42" height="40" align="right" title="Fully sliced Fireworks .png files" alt="Fully sliced Fireworks .png files" src="images/yootheme/top_fireworks.png" />Fully sliced Fireworks PNGs for customizations.\r\n</div>', 2, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-white\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (80, 'Native 1.5 Version', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="42" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_joomla.png" />This template is available as native version for Joomla 1.5.\r\n</div>', 2, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-white\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (81, 'YOOtools', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="55" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_yootools.png" />This template is fully compatible with all <a href="http://www.yootools.com" target="_blank">YOOtools</a>\r\n</div>', 2, 'top3', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (82, 'Footer', 'Copyright &copy; 2007 <a href="http://www.yootheme.com" target="_blank">YOOtheme</a>', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (83, 'User 1', '<div style="overflow: hidden">\r\n<img style="margin: 0px 10px 0px 0px" class="correct-png" src="images/yootheme/module_monitor.png" alt="" align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. <strong>Set Module Class Suffix element of the Module properties to "-new" to show up like this.</strong>\r\n</div>', 2, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-new\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (87, 'Other Menu', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (84, 'User 2', '<div style="overflow: hidden">\r\n<img style="margin: 0px 10px 0px 0px" class="correct-png" src="images/yootheme/module_trash.png" alt="" align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <strong>Set Module Class Suffix element of the Module properties to "-pick" to show up like this.</strong>\r\n</div>', 2, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-pick\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (85, 'User 3', '<div style="overflow: hidden;"><img style="margin: 10px 10px 0px 0px" class="correct-png" src="images/yootheme/module_hi.png" alt=" " align="left" /> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. <strong>Set Module Class Suffix element of the Module properties to "-top" to show up like this.</strong></div>', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-top\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (86, 'User 4', '<div style="overflow: hidden;"><img style="margin: 10px 10px 0px 0px" class="correct-png" src="images/yootheme/module_paper.png" alt=" " align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. <strong>Set Module Class Suffix element of the Module properties to "-black" to show up like this.</strong></div>', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-black\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (88, 'Left (Dotted)', 'Set Module Class Suffix element of the Module properties to "-dotted" to show up like this.', 14, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=-dotted\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (89, 'YOOscroller', '', 0, 'top1', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_scroller', 0, 0, 0, 'catid=42\nstyle=default-h\nmodule_width=866\nmodule_height=220\nslide_size=215\nslide_interval=3000\nautoplay=1\norder=o_asc\nitems=10\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (90, 'YOOslider (Photo-H)', '', 2, 'top1', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_slider', 0, 0, 0, 'catid=43\nstyle=photo-h\nitem_size=208\nitem_expanded=400\norder=o_asc\nitems=4\nmodule_height=220\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules_menu`
-- 

DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` VALUES (1, 0);
INSERT INTO `jos_modules_menu` VALUES (16, 1);
INSERT INTO `jos_modules_menu` VALUES (17, 0);
INSERT INTO `jos_modules_menu` VALUES (18, 1);
INSERT INTO `jos_modules_menu` VALUES (19, 1);
INSERT INTO `jos_modules_menu` VALUES (19, 2);
INSERT INTO `jos_modules_menu` VALUES (19, 4);
INSERT INTO `jos_modules_menu` VALUES (19, 27);
INSERT INTO `jos_modules_menu` VALUES (19, 36);
INSERT INTO `jos_modules_menu` VALUES (21, 1);
INSERT INTO `jos_modules_menu` VALUES (21, 53);
INSERT INTO `jos_modules_menu` VALUES (21, 57);
INSERT INTO `jos_modules_menu` VALUES (21, 64);
INSERT INTO `jos_modules_menu` VALUES (21, 65);
INSERT INTO `jos_modules_menu` VALUES (21, 66);
INSERT INTO `jos_modules_menu` VALUES (21, 67);
INSERT INTO `jos_modules_menu` VALUES (21, 68);
INSERT INTO `jos_modules_menu` VALUES (21, 70);
INSERT INTO `jos_modules_menu` VALUES (21, 71);
INSERT INTO `jos_modules_menu` VALUES (21, 72);
INSERT INTO `jos_modules_menu` VALUES (21, 73);
INSERT INTO `jos_modules_menu` VALUES (22, 1);
INSERT INTO `jos_modules_menu` VALUES (22, 2);
INSERT INTO `jos_modules_menu` VALUES (22, 4);
INSERT INTO `jos_modules_menu` VALUES (22, 27);
INSERT INTO `jos_modules_menu` VALUES (22, 36);
INSERT INTO `jos_modules_menu` VALUES (25, 0);
INSERT INTO `jos_modules_menu` VALUES (27, 0);
INSERT INTO `jos_modules_menu` VALUES (29, 0);
INSERT INTO `jos_modules_menu` VALUES (30, 0);
INSERT INTO `jos_modules_menu` VALUES (32, 0);
INSERT INTO `jos_modules_menu` VALUES (33, 0);
INSERT INTO `jos_modules_menu` VALUES (34, 0);
INSERT INTO `jos_modules_menu` VALUES (35, 0);
INSERT INTO `jos_modules_menu` VALUES (36, 0);
INSERT INTO `jos_modules_menu` VALUES (38, 1);
INSERT INTO `jos_modules_menu` VALUES (39, 43);
INSERT INTO `jos_modules_menu` VALUES (39, 44);
INSERT INTO `jos_modules_menu` VALUES (39, 45);
INSERT INTO `jos_modules_menu` VALUES (39, 46);
INSERT INTO `jos_modules_menu` VALUES (39, 47);
INSERT INTO `jos_modules_menu` VALUES (40, 0);
INSERT INTO `jos_modules_menu` VALUES (42, 1);
INSERT INTO `jos_modules_menu` VALUES (42, 2);
INSERT INTO `jos_modules_menu` VALUES (42, 27);
INSERT INTO `jos_modules_menu` VALUES (42, 37);
INSERT INTO `jos_modules_menu` VALUES (42, 41);
INSERT INTO `jos_modules_menu` VALUES (42, 48);
INSERT INTO `jos_modules_menu` VALUES (42, 49);
INSERT INTO `jos_modules_menu` VALUES (42, 50);
INSERT INTO `jos_modules_menu` VALUES (42, 53);
INSERT INTO `jos_modules_menu` VALUES (42, 54);
INSERT INTO `jos_modules_menu` VALUES (42, 56);
INSERT INTO `jos_modules_menu` VALUES (42, 57);
INSERT INTO `jos_modules_menu` VALUES (42, 58);
INSERT INTO `jos_modules_menu` VALUES (42, 64);
INSERT INTO `jos_modules_menu` VALUES (42, 65);
INSERT INTO `jos_modules_menu` VALUES (42, 66);
INSERT INTO `jos_modules_menu` VALUES (42, 67);
INSERT INTO `jos_modules_menu` VALUES (42, 68);
INSERT INTO `jos_modules_menu` VALUES (42, 70);
INSERT INTO `jos_modules_menu` VALUES (42, 71);
INSERT INTO `jos_modules_menu` VALUES (42, 72);
INSERT INTO `jos_modules_menu` VALUES (42, 73);
INSERT INTO `jos_modules_menu` VALUES (42, 74);
INSERT INTO `jos_modules_menu` VALUES (42, 75);
INSERT INTO `jos_modules_menu` VALUES (42, 76);
INSERT INTO `jos_modules_menu` VALUES (42, 77);
INSERT INTO `jos_modules_menu` VALUES (42, 78);
INSERT INTO `jos_modules_menu` VALUES (42, 79);
INSERT INTO `jos_modules_menu` VALUES (42, 80);
INSERT INTO `jos_modules_menu` VALUES (42, 81);
INSERT INTO `jos_modules_menu` VALUES (42, 82);
INSERT INTO `jos_modules_menu` VALUES (42, 83);
INSERT INTO `jos_modules_menu` VALUES (42, 84);
INSERT INTO `jos_modules_menu` VALUES (42, 85);
INSERT INTO `jos_modules_menu` VALUES (42, 86);
INSERT INTO `jos_modules_menu` VALUES (43, 53);
INSERT INTO `jos_modules_menu` VALUES (43, 54);
INSERT INTO `jos_modules_menu` VALUES (43, 57);
INSERT INTO `jos_modules_menu` VALUES (43, 64);
INSERT INTO `jos_modules_menu` VALUES (43, 65);
INSERT INTO `jos_modules_menu` VALUES (43, 66);
INSERT INTO `jos_modules_menu` VALUES (43, 67);
INSERT INTO `jos_modules_menu` VALUES (43, 68);
INSERT INTO `jos_modules_menu` VALUES (43, 70);
INSERT INTO `jos_modules_menu` VALUES (43, 71);
INSERT INTO `jos_modules_menu` VALUES (43, 72);
INSERT INTO `jos_modules_menu` VALUES (43, 73);
INSERT INTO `jos_modules_menu` VALUES (43, 74);
INSERT INTO `jos_modules_menu` VALUES (43, 75);
INSERT INTO `jos_modules_menu` VALUES (43, 76);
INSERT INTO `jos_modules_menu` VALUES (43, 77);
INSERT INTO `jos_modules_menu` VALUES (43, 78);
INSERT INTO `jos_modules_menu` VALUES (43, 79);
INSERT INTO `jos_modules_menu` VALUES (43, 80);
INSERT INTO `jos_modules_menu` VALUES (43, 81);
INSERT INTO `jos_modules_menu` VALUES (43, 82);
INSERT INTO `jos_modules_menu` VALUES (43, 83);
INSERT INTO `jos_modules_menu` VALUES (43, 84);
INSERT INTO `jos_modules_menu` VALUES (43, 85);
INSERT INTO `jos_modules_menu` VALUES (44, 53);
INSERT INTO `jos_modules_menu` VALUES (45, 53);
INSERT INTO `jos_modules_menu` VALUES (45, 57);
INSERT INTO `jos_modules_menu` VALUES (45, 64);
INSERT INTO `jos_modules_menu` VALUES (45, 65);
INSERT INTO `jos_modules_menu` VALUES (45, 66);
INSERT INTO `jos_modules_menu` VALUES (45, 67);
INSERT INTO `jos_modules_menu` VALUES (45, 68);
INSERT INTO `jos_modules_menu` VALUES (45, 70);
INSERT INTO `jos_modules_menu` VALUES (45, 71);
INSERT INTO `jos_modules_menu` VALUES (45, 72);
INSERT INTO `jos_modules_menu` VALUES (45, 73);
INSERT INTO `jos_modules_menu` VALUES (46, 0);
INSERT INTO `jos_modules_menu` VALUES (47, 54);
INSERT INTO `jos_modules_menu` VALUES (48, 0);
INSERT INTO `jos_modules_menu` VALUES (49, 54);
INSERT INTO `jos_modules_menu` VALUES (50, 74);
INSERT INTO `jos_modules_menu` VALUES (51, 0);
INSERT INTO `jos_modules_menu` VALUES (52, 58);
INSERT INTO `jos_modules_menu` VALUES (53, 58);
INSERT INTO `jos_modules_menu` VALUES (54, 0);
INSERT INTO `jos_modules_menu` VALUES (55, 0);
INSERT INTO `jos_modules_menu` VALUES (56, 0);
INSERT INTO `jos_modules_menu` VALUES (57, 58);
INSERT INTO `jos_modules_menu` VALUES (58, 58);
INSERT INTO `jos_modules_menu` VALUES (59, 58);
INSERT INTO `jos_modules_menu` VALUES (60, 1);
INSERT INTO `jos_modules_menu` VALUES (60, 2);
INSERT INTO `jos_modules_menu` VALUES (60, 18);
INSERT INTO `jos_modules_menu` VALUES (60, 20);
INSERT INTO `jos_modules_menu` VALUES (60, 24);
INSERT INTO `jos_modules_menu` VALUES (60, 27);
INSERT INTO `jos_modules_menu` VALUES (60, 28);
INSERT INTO `jos_modules_menu` VALUES (60, 29);
INSERT INTO `jos_modules_menu` VALUES (60, 37);
INSERT INTO `jos_modules_menu` VALUES (60, 41);
INSERT INTO `jos_modules_menu` VALUES (60, 48);
INSERT INTO `jos_modules_menu` VALUES (60, 49);
INSERT INTO `jos_modules_menu` VALUES (60, 50);
INSERT INTO `jos_modules_menu` VALUES (60, 51);
INSERT INTO `jos_modules_menu` VALUES (60, 52);
INSERT INTO `jos_modules_menu` VALUES (60, 53);
INSERT INTO `jos_modules_menu` VALUES (60, 54);
INSERT INTO `jos_modules_menu` VALUES (60, 55);
INSERT INTO `jos_modules_menu` VALUES (60, 56);
INSERT INTO `jos_modules_menu` VALUES (60, 57);
INSERT INTO `jos_modules_menu` VALUES (60, 64);
INSERT INTO `jos_modules_menu` VALUES (60, 65);
INSERT INTO `jos_modules_menu` VALUES (60, 66);
INSERT INTO `jos_modules_menu` VALUES (60, 67);
INSERT INTO `jos_modules_menu` VALUES (60, 68);
INSERT INTO `jos_modules_menu` VALUES (60, 70);
INSERT INTO `jos_modules_menu` VALUES (60, 71);
INSERT INTO `jos_modules_menu` VALUES (60, 72);
INSERT INTO `jos_modules_menu` VALUES (60, 73);
INSERT INTO `jos_modules_menu` VALUES (60, 74);
INSERT INTO `jos_modules_menu` VALUES (60, 75);
INSERT INTO `jos_modules_menu` VALUES (60, 76);
INSERT INTO `jos_modules_menu` VALUES (60, 77);
INSERT INTO `jos_modules_menu` VALUES (60, 78);
INSERT INTO `jos_modules_menu` VALUES (60, 79);
INSERT INTO `jos_modules_menu` VALUES (60, 80);
INSERT INTO `jos_modules_menu` VALUES (60, 81);
INSERT INTO `jos_modules_menu` VALUES (60, 82);
INSERT INTO `jos_modules_menu` VALUES (60, 83);
INSERT INTO `jos_modules_menu` VALUES (60, 84);
INSERT INTO `jos_modules_menu` VALUES (60, 85);
INSERT INTO `jos_modules_menu` VALUES (60, 95);
INSERT INTO `jos_modules_menu` VALUES (60, 96);
INSERT INTO `jos_modules_menu` VALUES (60, 97);
INSERT INTO `jos_modules_menu` VALUES (60, 98);
INSERT INTO `jos_modules_menu` VALUES (60, 99);
INSERT INTO `jos_modules_menu` VALUES (60, 100);
INSERT INTO `jos_modules_menu` VALUES (60, 101);
INSERT INTO `jos_modules_menu` VALUES (61, 58);
INSERT INTO `jos_modules_menu` VALUES (62, 58);
INSERT INTO `jos_modules_menu` VALUES (63, 58);
INSERT INTO `jos_modules_menu` VALUES (64, 58);
INSERT INTO `jos_modules_menu` VALUES (65, 1);
INSERT INTO `jos_modules_menu` VALUES (65, 2);
INSERT INTO `jos_modules_menu` VALUES (65, 18);
INSERT INTO `jos_modules_menu` VALUES (65, 20);
INSERT INTO `jos_modules_menu` VALUES (65, 24);
INSERT INTO `jos_modules_menu` VALUES (65, 27);
INSERT INTO `jos_modules_menu` VALUES (65, 28);
INSERT INTO `jos_modules_menu` VALUES (65, 29);
INSERT INTO `jos_modules_menu` VALUES (65, 37);
INSERT INTO `jos_modules_menu` VALUES (65, 41);
INSERT INTO `jos_modules_menu` VALUES (65, 48);
INSERT INTO `jos_modules_menu` VALUES (65, 49);
INSERT INTO `jos_modules_menu` VALUES (65, 50);
INSERT INTO `jos_modules_menu` VALUES (65, 51);
INSERT INTO `jos_modules_menu` VALUES (65, 52);
INSERT INTO `jos_modules_menu` VALUES (65, 53);
INSERT INTO `jos_modules_menu` VALUES (65, 54);
INSERT INTO `jos_modules_menu` VALUES (65, 55);
INSERT INTO `jos_modules_menu` VALUES (65, 56);
INSERT INTO `jos_modules_menu` VALUES (65, 57);
INSERT INTO `jos_modules_menu` VALUES (65, 64);
INSERT INTO `jos_modules_menu` VALUES (65, 65);
INSERT INTO `jos_modules_menu` VALUES (65, 66);
INSERT INTO `jos_modules_menu` VALUES (65, 67);
INSERT INTO `jos_modules_menu` VALUES (65, 68);
INSERT INTO `jos_modules_menu` VALUES (65, 70);
INSERT INTO `jos_modules_menu` VALUES (65, 71);
INSERT INTO `jos_modules_menu` VALUES (65, 72);
INSERT INTO `jos_modules_menu` VALUES (65, 73);
INSERT INTO `jos_modules_menu` VALUES (65, 74);
INSERT INTO `jos_modules_menu` VALUES (65, 75);
INSERT INTO `jos_modules_menu` VALUES (65, 76);
INSERT INTO `jos_modules_menu` VALUES (65, 77);
INSERT INTO `jos_modules_menu` VALUES (65, 78);
INSERT INTO `jos_modules_menu` VALUES (65, 79);
INSERT INTO `jos_modules_menu` VALUES (65, 80);
INSERT INTO `jos_modules_menu` VALUES (65, 81);
INSERT INTO `jos_modules_menu` VALUES (65, 82);
INSERT INTO `jos_modules_menu` VALUES (65, 83);
INSERT INTO `jos_modules_menu` VALUES (65, 84);
INSERT INTO `jos_modules_menu` VALUES (65, 85);
INSERT INTO `jos_modules_menu` VALUES (65, 95);
INSERT INTO `jos_modules_menu` VALUES (65, 96);
INSERT INTO `jos_modules_menu` VALUES (65, 97);
INSERT INTO `jos_modules_menu` VALUES (65, 98);
INSERT INTO `jos_modules_menu` VALUES (65, 99);
INSERT INTO `jos_modules_menu` VALUES (65, 100);
INSERT INTO `jos_modules_menu` VALUES (65, 101);
INSERT INTO `jos_modules_menu` VALUES (66, 1);
INSERT INTO `jos_modules_menu` VALUES (66, 2);
INSERT INTO `jos_modules_menu` VALUES (66, 18);
INSERT INTO `jos_modules_menu` VALUES (66, 20);
INSERT INTO `jos_modules_menu` VALUES (66, 24);
INSERT INTO `jos_modules_menu` VALUES (66, 27);
INSERT INTO `jos_modules_menu` VALUES (66, 28);
INSERT INTO `jos_modules_menu` VALUES (66, 29);
INSERT INTO `jos_modules_menu` VALUES (66, 37);
INSERT INTO `jos_modules_menu` VALUES (66, 41);
INSERT INTO `jos_modules_menu` VALUES (66, 48);
INSERT INTO `jos_modules_menu` VALUES (66, 49);
INSERT INTO `jos_modules_menu` VALUES (66, 50);
INSERT INTO `jos_modules_menu` VALUES (66, 51);
INSERT INTO `jos_modules_menu` VALUES (66, 52);
INSERT INTO `jos_modules_menu` VALUES (66, 53);
INSERT INTO `jos_modules_menu` VALUES (66, 54);
INSERT INTO `jos_modules_menu` VALUES (66, 55);
INSERT INTO `jos_modules_menu` VALUES (66, 56);
INSERT INTO `jos_modules_menu` VALUES (66, 57);
INSERT INTO `jos_modules_menu` VALUES (66, 64);
INSERT INTO `jos_modules_menu` VALUES (66, 65);
INSERT INTO `jos_modules_menu` VALUES (66, 66);
INSERT INTO `jos_modules_menu` VALUES (66, 67);
INSERT INTO `jos_modules_menu` VALUES (66, 68);
INSERT INTO `jos_modules_menu` VALUES (66, 70);
INSERT INTO `jos_modules_menu` VALUES (66, 71);
INSERT INTO `jos_modules_menu` VALUES (66, 72);
INSERT INTO `jos_modules_menu` VALUES (66, 73);
INSERT INTO `jos_modules_menu` VALUES (66, 74);
INSERT INTO `jos_modules_menu` VALUES (66, 75);
INSERT INTO `jos_modules_menu` VALUES (66, 76);
INSERT INTO `jos_modules_menu` VALUES (66, 77);
INSERT INTO `jos_modules_menu` VALUES (66, 78);
INSERT INTO `jos_modules_menu` VALUES (66, 79);
INSERT INTO `jos_modules_menu` VALUES (66, 80);
INSERT INTO `jos_modules_menu` VALUES (66, 81);
INSERT INTO `jos_modules_menu` VALUES (66, 82);
INSERT INTO `jos_modules_menu` VALUES (66, 83);
INSERT INTO `jos_modules_menu` VALUES (66, 84);
INSERT INTO `jos_modules_menu` VALUES (66, 85);
INSERT INTO `jos_modules_menu` VALUES (66, 89);
INSERT INTO `jos_modules_menu` VALUES (66, 90);
INSERT INTO `jos_modules_menu` VALUES (66, 91);
INSERT INTO `jos_modules_menu` VALUES (66, 92);
INSERT INTO `jos_modules_menu` VALUES (66, 93);
INSERT INTO `jos_modules_menu` VALUES (66, 94);
INSERT INTO `jos_modules_menu` VALUES (66, 95);
INSERT INTO `jos_modules_menu` VALUES (66, 96);
INSERT INTO `jos_modules_menu` VALUES (66, 97);
INSERT INTO `jos_modules_menu` VALUES (66, 98);
INSERT INTO `jos_modules_menu` VALUES (66, 99);
INSERT INTO `jos_modules_menu` VALUES (66, 100);
INSERT INTO `jos_modules_menu` VALUES (66, 101);
INSERT INTO `jos_modules_menu` VALUES (67, 1);
INSERT INTO `jos_modules_menu` VALUES (67, 2);
INSERT INTO `jos_modules_menu` VALUES (67, 18);
INSERT INTO `jos_modules_menu` VALUES (67, 20);
INSERT INTO `jos_modules_menu` VALUES (67, 24);
INSERT INTO `jos_modules_menu` VALUES (67, 27);
INSERT INTO `jos_modules_menu` VALUES (67, 28);
INSERT INTO `jos_modules_menu` VALUES (67, 29);
INSERT INTO `jos_modules_menu` VALUES (67, 37);
INSERT INTO `jos_modules_menu` VALUES (67, 41);
INSERT INTO `jos_modules_menu` VALUES (67, 48);
INSERT INTO `jos_modules_menu` VALUES (67, 49);
INSERT INTO `jos_modules_menu` VALUES (67, 50);
INSERT INTO `jos_modules_menu` VALUES (67, 51);
INSERT INTO `jos_modules_menu` VALUES (67, 52);
INSERT INTO `jos_modules_menu` VALUES (67, 53);
INSERT INTO `jos_modules_menu` VALUES (67, 54);
INSERT INTO `jos_modules_menu` VALUES (67, 55);
INSERT INTO `jos_modules_menu` VALUES (67, 56);
INSERT INTO `jos_modules_menu` VALUES (67, 57);
INSERT INTO `jos_modules_menu` VALUES (67, 64);
INSERT INTO `jos_modules_menu` VALUES (67, 65);
INSERT INTO `jos_modules_menu` VALUES (67, 66);
INSERT INTO `jos_modules_menu` VALUES (67, 67);
INSERT INTO `jos_modules_menu` VALUES (67, 68);
INSERT INTO `jos_modules_menu` VALUES (67, 70);
INSERT INTO `jos_modules_menu` VALUES (67, 71);
INSERT INTO `jos_modules_menu` VALUES (67, 72);
INSERT INTO `jos_modules_menu` VALUES (67, 73);
INSERT INTO `jos_modules_menu` VALUES (67, 74);
INSERT INTO `jos_modules_menu` VALUES (67, 75);
INSERT INTO `jos_modules_menu` VALUES (67, 76);
INSERT INTO `jos_modules_menu` VALUES (67, 77);
INSERT INTO `jos_modules_menu` VALUES (67, 78);
INSERT INTO `jos_modules_menu` VALUES (67, 79);
INSERT INTO `jos_modules_menu` VALUES (67, 80);
INSERT INTO `jos_modules_menu` VALUES (67, 81);
INSERT INTO `jos_modules_menu` VALUES (67, 82);
INSERT INTO `jos_modules_menu` VALUES (67, 83);
INSERT INTO `jos_modules_menu` VALUES (67, 84);
INSERT INTO `jos_modules_menu` VALUES (67, 85);
INSERT INTO `jos_modules_menu` VALUES (67, 95);
INSERT INTO `jos_modules_menu` VALUES (67, 96);
INSERT INTO `jos_modules_menu` VALUES (67, 97);
INSERT INTO `jos_modules_menu` VALUES (67, 98);
INSERT INTO `jos_modules_menu` VALUES (67, 99);
INSERT INTO `jos_modules_menu` VALUES (67, 100);
INSERT INTO `jos_modules_menu` VALUES (67, 101);
INSERT INTO `jos_modules_menu` VALUES (68, 58);
INSERT INTO `jos_modules_menu` VALUES (69, 1);
INSERT INTO `jos_modules_menu` VALUES (69, 2);
INSERT INTO `jos_modules_menu` VALUES (69, 18);
INSERT INTO `jos_modules_menu` VALUES (69, 20);
INSERT INTO `jos_modules_menu` VALUES (69, 24);
INSERT INTO `jos_modules_menu` VALUES (69, 27);
INSERT INTO `jos_modules_menu` VALUES (69, 28);
INSERT INTO `jos_modules_menu` VALUES (69, 29);
INSERT INTO `jos_modules_menu` VALUES (69, 37);
INSERT INTO `jos_modules_menu` VALUES (69, 41);
INSERT INTO `jos_modules_menu` VALUES (69, 48);
INSERT INTO `jos_modules_menu` VALUES (69, 49);
INSERT INTO `jos_modules_menu` VALUES (69, 50);
INSERT INTO `jos_modules_menu` VALUES (69, 51);
INSERT INTO `jos_modules_menu` VALUES (69, 52);
INSERT INTO `jos_modules_menu` VALUES (69, 53);
INSERT INTO `jos_modules_menu` VALUES (69, 54);
INSERT INTO `jos_modules_menu` VALUES (69, 55);
INSERT INTO `jos_modules_menu` VALUES (69, 56);
INSERT INTO `jos_modules_menu` VALUES (69, 57);
INSERT INTO `jos_modules_menu` VALUES (69, 64);
INSERT INTO `jos_modules_menu` VALUES (69, 65);
INSERT INTO `jos_modules_menu` VALUES (69, 66);
INSERT INTO `jos_modules_menu` VALUES (69, 67);
INSERT INTO `jos_modules_menu` VALUES (69, 68);
INSERT INTO `jos_modules_menu` VALUES (69, 70);
INSERT INTO `jos_modules_menu` VALUES (69, 71);
INSERT INTO `jos_modules_menu` VALUES (69, 72);
INSERT INTO `jos_modules_menu` VALUES (69, 73);
INSERT INTO `jos_modules_menu` VALUES (69, 74);
INSERT INTO `jos_modules_menu` VALUES (69, 75);
INSERT INTO `jos_modules_menu` VALUES (69, 76);
INSERT INTO `jos_modules_menu` VALUES (69, 77);
INSERT INTO `jos_modules_menu` VALUES (69, 78);
INSERT INTO `jos_modules_menu` VALUES (69, 79);
INSERT INTO `jos_modules_menu` VALUES (69, 80);
INSERT INTO `jos_modules_menu` VALUES (69, 81);
INSERT INTO `jos_modules_menu` VALUES (69, 82);
INSERT INTO `jos_modules_menu` VALUES (69, 83);
INSERT INTO `jos_modules_menu` VALUES (69, 84);
INSERT INTO `jos_modules_menu` VALUES (69, 85);
INSERT INTO `jos_modules_menu` VALUES (69, 89);
INSERT INTO `jos_modules_menu` VALUES (69, 90);
INSERT INTO `jos_modules_menu` VALUES (69, 91);
INSERT INTO `jos_modules_menu` VALUES (69, 92);
INSERT INTO `jos_modules_menu` VALUES (69, 93);
INSERT INTO `jos_modules_menu` VALUES (69, 94);
INSERT INTO `jos_modules_menu` VALUES (69, 95);
INSERT INTO `jos_modules_menu` VALUES (69, 96);
INSERT INTO `jos_modules_menu` VALUES (69, 97);
INSERT INTO `jos_modules_menu` VALUES (69, 98);
INSERT INTO `jos_modules_menu` VALUES (69, 99);
INSERT INTO `jos_modules_menu` VALUES (69, 100);
INSERT INTO `jos_modules_menu` VALUES (69, 101);
INSERT INTO `jos_modules_menu` VALUES (70, 56);
INSERT INTO `jos_modules_menu` VALUES (70, 58);
INSERT INTO `jos_modules_menu` VALUES (71, 58);
INSERT INTO `jos_modules_menu` VALUES (72, 0);
INSERT INTO `jos_modules_menu` VALUES (73, 58);
INSERT INTO `jos_modules_menu` VALUES (74, 58);
INSERT INTO `jos_modules_menu` VALUES (75, 58);
INSERT INTO `jos_modules_menu` VALUES (76, 58);
INSERT INTO `jos_modules_menu` VALUES (77, 58);
INSERT INTO `jos_modules_menu` VALUES (78, 58);
INSERT INTO `jos_modules_menu` VALUES (79, 53);
INSERT INTO `jos_modules_menu` VALUES (80, 53);
INSERT INTO `jos_modules_menu` VALUES (81, 53);
INSERT INTO `jos_modules_menu` VALUES (82, 0);
INSERT INTO `jos_modules_menu` VALUES (83, 58);
INSERT INTO `jos_modules_menu` VALUES (84, 58);
INSERT INTO `jos_modules_menu` VALUES (85, 58);
INSERT INTO `jos_modules_menu` VALUES (86, 58);
INSERT INTO `jos_modules_menu` VALUES (87, 1);
INSERT INTO `jos_modules_menu` VALUES (88, 58);
INSERT INTO `jos_modules_menu` VALUES (89, 53);
INSERT INTO `jos_modules_menu` VALUES (89, 57);
INSERT INTO `jos_modules_menu` VALUES (89, 64);
INSERT INTO `jos_modules_menu` VALUES (89, 65);
INSERT INTO `jos_modules_menu` VALUES (89, 66);
INSERT INTO `jos_modules_menu` VALUES (89, 67);
INSERT INTO `jos_modules_menu` VALUES (89, 68);
INSERT INTO `jos_modules_menu` VALUES (89, 70);
INSERT INTO `jos_modules_menu` VALUES (89, 71);
INSERT INTO `jos_modules_menu` VALUES (89, 72);
INSERT INTO `jos_modules_menu` VALUES (89, 73);
INSERT INTO `jos_modules_menu` VALUES (90, 54);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_newsfeeds`
-- 

DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) TYPE=MyISAM  AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_newsfeeds`
-- 

INSERT INTO `jos_newsfeeds` VALUES (4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `jos_newsfeeds` VALUES (4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_newsfeeds` VALUES (5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_newsfeeds` VALUES (7, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_plugins`
-- 

DROP TABLE IF EXISTS `jos_plugins`;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `element` text NOT NULL,
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) TYPE=MyISAM  AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `jos_plugins`
-- 

INSERT INTO `jos_plugins` VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n');
INSERT INTO `jos_plugins` VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (34, 'YOOtooltip', 'yoo_tooltip', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'style=default\nwidth=250\n\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_polls`
-- 

DROP TABLE IF EXISTS `jos_polls`;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `jos_polls`
-- 

INSERT INTO `jos_polls` VALUES (14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_data`
-- 

DROP TABLE IF EXISTS `jos_poll_data`;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) TYPE=MyISAM  AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `jos_poll_data`
-- 

INSERT INTO `jos_poll_data` VALUES (1, 14, 'Community Sites', 2);
INSERT INTO `jos_poll_data` VALUES (2, 14, 'Public Brand Sites', 3);
INSERT INTO `jos_poll_data` VALUES (3, 14, 'eCommerce', 1);
INSERT INTO `jos_poll_data` VALUES (4, 14, 'Blogs', 0);
INSERT INTO `jos_poll_data` VALUES (5, 14, 'Intranets', 0);
INSERT INTO `jos_poll_data` VALUES (6, 14, 'Photo and Media Sites', 2);
INSERT INTO `jos_poll_data` VALUES (7, 14, 'All of the Above!', 3);
INSERT INTO `jos_poll_data` VALUES (8, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (9, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (10, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (11, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (12, 14, '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_date`
-- 

DROP TABLE IF EXISTS `jos_poll_date`;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) TYPE=MyISAM  AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `jos_poll_date`
-- 

INSERT INTO `jos_poll_date` VALUES (1, '2006-10-09 13:01:58', 1, 14);
INSERT INTO `jos_poll_date` VALUES (2, '2006-10-10 15:19:43', 7, 14);
INSERT INTO `jos_poll_date` VALUES (3, '2006-10-11 11:08:16', 7, 14);
INSERT INTO `jos_poll_date` VALUES (4, '2006-10-11 15:02:26', 2, 14);
INSERT INTO `jos_poll_date` VALUES (5, '2006-10-11 15:43:03', 7, 14);
INSERT INTO `jos_poll_date` VALUES (6, '2006-10-11 15:43:38', 7, 14);
INSERT INTO `jos_poll_date` VALUES (7, '2006-10-12 00:51:13', 2, 14);
INSERT INTO `jos_poll_date` VALUES (8, '2007-05-10 19:12:29', 3, 14);
INSERT INTO `jos_poll_date` VALUES (9, '2007-05-14 14:18:00', 6, 14);
INSERT INTO `jos_poll_date` VALUES (10, '2007-06-10 15:20:29', 6, 14);
INSERT INTO `jos_poll_date` VALUES (11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_menu`
-- 

DROP TABLE IF EXISTS `jos_poll_menu`;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_sections`
-- 

DROP TABLE IF EXISTS `jos_sections`;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(90) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) TYPE=MyISAM  AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `jos_sections`
-- 

INSERT INTO `jos_sections` VALUES (1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, '');
INSERT INTO `jos_sections` VALUES (3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, '');
INSERT INTO `jos_sections` VALUES (4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 16, '');
INSERT INTO `jos_sections` VALUES (5, 'YOOtheme', '', 'yootheme', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 11, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_session`
-- 

DROP TABLE IF EXISTS `jos_session`;
CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(150) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_session`
-- 

INSERT INTO `jos_session` VALUES ('', '1204566949', '9491d7b4b46c3af50d7fc06cf5fb6196', 1, 0, '', 0, 1, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1204566949;s:18:"session.timer.last";i:1204566949;s:17:"session.timer.now";i:1204566949;s:22:"session.client.browser";s:89:"Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.12) Gecko/20080201 Firefox/2.0.0.12";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:84:"C:\\Webserver\\YOOtheme\\Templates\\Page\\Website\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"d020a9c0a3c27d0e980f7bb7b71cec89";}');
INSERT INTO `jos_session` VALUES ('', '1204566925', '90d2df1d1f22a5936bbcd9841e396af2', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1204566829;s:18:"session.timer.last";i:1204566837;s:17:"session.timer.now";i:1204566925;s:22:"session.client.browser";s:89:"Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.12) Gecko/20080201 Firefox/2.0.0.12";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:84:"C:\\Webserver\\YOOtheme\\Templates\\Page\\Website\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"e9250cde94d261926607a77154d532ca";}');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_stats_agents`
-- 

DROP TABLE IF EXISTS `jos_stats_agents`;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_templates_menu`
-- 

DROP TABLE IF EXISTS `jos_templates_menu`;
CREATE TABLE `jos_templates_menu` (
  `template` text NOT NULL,
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`(255))
) TYPE=MyISAM;

-- 
-- Dumping data for table `jos_templates_menu`
-- 

INSERT INTO `jos_templates_menu` VALUES ('yoo_page', 0, 0);
INSERT INTO `jos_templates_menu` VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_users`
-- 

DROP TABLE IF EXISTS `jos_users`;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(75) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`(255)),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) TYPE=MyISAM  AUTO_INCREMENT=63 ;

-- 
-- Dumping data for table `jos_users`
-- 

INSERT INTO `jos_users` VALUES (62, 'Administrator', 'admin', 'email@0.0.0.0', '5f9e318e14c8fce0a91671537cfa6185:0m5MalepSiyYMPipdzUdrDboPJvgZewg', 'Super Administrator', 0, 1, 25, '2007-12-20 12:00:01', '2008-03-03 17:55:49', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_weblinks`
-- 

DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) TYPE=MyISAM  AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_weblinks`
-- 

INSERT INTO `jos_weblinks` VALUES (1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` VALUES (2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, '');
INSERT INTO `jos_weblinks` VALUES (3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, '');
INSERT INTO `jos_weblinks` VALUES (4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` VALUES (5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` VALUES (6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');
