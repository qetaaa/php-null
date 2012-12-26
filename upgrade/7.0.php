<?php

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}

$config['version_id'] = "7.2";
$config['allow_quick_wysiwyg'] = "0";
$config['sec_addnews'] = "1";
$config['mail_pm'] = "0";
$config['allow_change_sort'] = "0";
$config['registration_rules'] = "0";
$config['allow_tags'] = "0";


$tableSchema = array();

$tableSchema[] = "DROP TABLE IF EXISTS " . PREFIX . "_tags";
$tableSchema[] = "CREATE TABLE " . PREFIX . "_tags (
  `id` INT(11) NOT NULL auto_increment,
  `news_id` INT(11) NOT NULL default '0',
  `tag` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `news_id` (`news_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM /*!40101 DEFAULT CHARACTER SET " . COLLATE . " COLLATE " . COLLATE . "_general_ci */";

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_rssinform` ADD `rss_date_format` VARCHAR( 20 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_files` CHANGE `date` `date` VARCHAR( 15 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_images` CHANGE `date` `date` VARCHAR( 15 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_banned` CHANGE `date` `date` VARCHAR( 15 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post` ADD `editdate` VARCHAR( 15 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post` ADD `editor` VARCHAR( 40 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post` ADD `reason` VARCHAR( 255 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post` ADD `view_edit` TINYINT( 1 ) NOT NULL DEFAULT '0'";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post` ADD `tags` VARCHAR( 255 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_banned` CHANGE `ip` `ip` VARCHAR( 50 ) NOT NULL";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_usergroups` ADD `allow_image` TINYINT( 1 ) NOT NULL DEFAULT '0'";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_usergroups` ADD `news_sec_code` TINYINT( 1 ) NOT NULL DEFAULT '1'";

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_users` ADD `restricted` TINYINT( 1 ) NOT NULL DEFAULT '0'";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_users` ADD `restricted_days` SMALLINT( 4 ) NOT NULL DEFAULT '0'";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_users` ADD `restricted_date` VARCHAR( 20 ) NOT NULL DEFAULT ''";

$tableSchema[] = "INSERT INTO " . PREFIX . "_email values (6, 'pm', 'Dear {%username%},\r\n\r\nYou have a new personal message in website $url.\r\n\r\n------------------------------------------------\r\nOverview information about message\r\n------------------------------------------------\r\n\r\nSender: {%fromusername%}\r\nDate received: {%date%}\r\nTitle: {%title%}\r\n\r\n------------------------------------------------\r\nMessage\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nBest regards,\r\n\r\nAdministrator $url')";
$tableSchema[] = "INSERT INTO " . PREFIX . "_static (`name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`) VALUES ('dle-rules-page', 'General rules on website', '<b>General rules of conduct on our site:</b><br /><br />To begin with, the site communicate with hundreds of people of different faiths and persuasions, and all of them are full-fledged visitors to our site, so if we want a community of people to function and we need rules. We strongly recommend that you read these rules, it will take you just five minutes, but save us and you time and help make the site more interesting and organized.<br /><br />To begin with, you need to behave respectfully to all visitors on our site. Do not insult to the participants, it is always too much. If you have a complaint - contact administrators or moderators (use private message). Insult other members is considered one of the most serious violations and severely punished by the administrator. <b>We strictly forbad racism, religious and political utterance.</b> Thank you for your understanding and a desire to make our site more polite and friendly.<br /><br /><b>Our website is strictly prohibited:</b> <br /><br />- Messages not related to the content of the article or to the context of the discussion<br />- Insults and threats to other visitors<br />- In the comments are prohibited words that contain profanity, degrading, inciting inter-ethnic strife<br />- Spam, and advertising of any goods and services, other resources, media or events, do NOT relate to the context of the discussion of article<br /><br />Let us respect each other and our website on which you and other readers come to talk and express their thoughts. The manager groups can remove comments, or part of the comments, if they do not meet these requirements.<br /><br />If you violate the rules you may be given a <b>warning</b>. In some cases, may be given a ban <b>without warning</b>. Ban reason can be write by administrator.<br /><br /><b>Insult</b> administrators or moderators also punishable <b>ban</b> - Respect other people\'s labor.<br /><br /><div align=\"center\">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'General rules', 'General rules', 0, '')";
$tableSchema[] = "UPDATE " . PREFIX . "_rssinform SET rss_date_format='j F Y H:i'";

if (!$config['news_captcha']) {

	$tableSchema[] = "UPDATE " . PREFIX . "_usergroups SET news_sec_code='0'";

}

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post` ADD INDEX ( `comm_num` )";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_post`  ADD INDEX ( `tags` )";


  foreach($tableSchema as $table) {
     $db->query ($table);
   }


$handler = fopen(ENGINE_DIR.'/data/config.php', "w") or die("Sorry, but you can not write information in the file <b>.engine/data/config.php</b>.<br />Check the surrounding CHMOD!");
fwrite($handler, "<?PHP \n\n//System Configurations\n\n\$config = array (\n\n");
foreach($config as $name => $value)
{
	fwrite($handler, "'{$name}' => \"{$value}\",\n\n");
}
fwrite($handler, ");\n\n?>");
fclose($handler);

@unlink(ENGINE_DIR.'/cache/system/usergroup.php');
@unlink(ENGINE_DIR.'/cache/system/vote.php');
@unlink(ENGINE_DIR.'/cache/system/banners.php');
@unlink(ENGINE_DIR.'/cache/system/category.php');
@unlink(ENGINE_DIR.'/cache/system/banned.php');
@unlink(ENGINE_DIR.'/cache/system/cron.php');
@unlink(ENGINE_DIR.'/data/snap.db');

clear_cache();

if ($db->error_count) $error_info = "Total scheduled queries: <b>".$db->query_num."</b> ailed to execute query: <b>".$db->error_count."</b>. Perhaps they have already been implemented previously."; else $error_info = "";

msgbox("info","Information", "<form action=\"index.php\" method=\"GET\">Upgrading database from version <b>7.0</b> to version <b>7.2</b> successfully completed.<br />{$error_info}<br />Click Next to continue process upgrade script<br /><br /><input type=\"hidden\" name=\"next\" value=\"7.3\"><input class=\"edit\" type=\"submit\" value=\"Next ...\"></form>");
?>