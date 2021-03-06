CREATE TABLE IF NOT EXISTS `#__morfeoshow` (
`id` INT( 5 ) NOT NULL AUTO_INCREMENT ,
`name` varchar( 128 ) NOT NULL ,
`description` TEXT NOT NULL ,
`description1` TEXT NOT NULL ,
`folder` varchar( 32 ) NOT NULL ,
`shortcut_filename` varchar( 128 ) NOT NULL,
`published` tinyint(1) NOT NULL default 0,
`flashgallery` int(2) NOT NULL default 0,
`height` int(4) NOT NULL,
`width` int(4) NOT NULL,
`heightsw` int(4) NOT NULL,
`widthsw` int(4) NOT NULL,
`heightpc` int(4) NOT NULL,
`widthpc` int(4) NOT NULL,
`heightpl` int(4) NOT NULL,
`widthpl` int(4) NOT NULL,
`trans` int(2) NOT NULL default 0,
`movimento` tinyint(1) NOT NULL default 1,
`navigation` tinyint(1) NOT NULL default 1,
`tempo` int(4) NOT NULL,
`bkgnd` varchar(12) NOT NULL ,
`bkgnd1` varchar(12) NOT NULL ,
`bkgnd2` varchar(12) NOT NULL ,
`bkgnd3` varchar(12) NOT NULL ,
`ordering` int(4) NOT NULL,
`metakey` TEXT NOT NULL ,
`metadesc` TEXT NOT NULL ,
`metadata` TEXT NOT NULL ,
`glat` varchar( 20 ) NOT NULL,
`glng` varchar( 20 ) NOT NULL,
`gzoom` int(4) NOT NULL,
`gmapkey` varchar( 100 ) NOT NULL,
`luogo` varchar( 128 ) NOT NULL ,
`user_id` varchar(255) NOT NULL,
`group_id` varchar(255) NOT NULL,
`text` varchar(255) NOT NULL,
`tags` varchar(255) NOT NULL,
`set_id` varchar(255) NOT NULL,
`sort` int(4) NOT NULL,
`pusername` varchar(180) NOT NULL,
`pphotosize` int(4) NOT NULL default '512',
`pthumbsize` int(4) NOT NULL default '64',
`palbumcols` int(4) NOT NULL default '3',
`pcols` int(4) NOT NULL default '6',
`pmaxresults` int(4) NOT NULL default '24',
`pmaxalbums` int(4) NOT NULL default '4',
`psingle` varchar(120) NOT NULL,
`pback` varchar(10) NOT NULL ,
`paltezza` int(4) NOT NULL ,
`plarghezza` int(4) NOT NULL ,
`overstretch` tinyint(1) NOT NULL default 0,
`shuffle` tinyint(1) NOT NULL default 0,
`tclassic` int(4) NOT NULL ,
`tcol` int(4) NOT NULL ,
`orderfront` varchar( 30 ) NOT NULL ,
PRIMARY KEY (`id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

CREATE TABLE IF NOT EXISTS `#__morfeoshow_img` (
`id` INT( 5 ) NOT NULL AUTO_INCREMENT ,
`gallery_id` INT( 5 ) NOT NULL ,
`filename` VARCHAR( 128 ) NOT NULL ,
`title` TEXT NOT NULL,
`imgdate` datetime NOT NULL default '0000-00-00 00:00:00',
`html` TEXT NOT NULL,
`height` int(4) NOT NULL,
`width` int(4) NOT NULL,
`creator` TEXT NOT NULL ,
`link` TEXT NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE=MyISAM CHARACTER SET `utf8`;

CREATE TABLE IF NOT EXISTS `#__morfeoshow_rating` (
`content_id` int(11) NOT NULL default '0',
`rating_sum` int(11) unsigned NOT NULL default '0',
`rating_count` int(11) unsigned NOT NULL default '0',
`lastip` varchar(50) NOT NULL default '',
PRIMARY KEY  (`content_id`)
) TYPE=MyISAM CHARACTER SET `utf8`;
