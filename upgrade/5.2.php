<?php

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}


$config['version_id'] = "5.3";
$config['smilies'] = "wink,winked,smile,am,belay,feel,fellow,laughing,lol,love,no,recourse,request,sad,tongue,wassat,crying,what,bully,angry";
$config['extra_login'] = "0";
$config['image_align'] = "left";
$config['ip_control'] = "1";
$config['ip_control'] = "1";
$config['cache_count'] = "0";
$config['cron'] = time();
$config['key'] = "";

unset ($config['smiles_nummer']);

$handler = fopen(ENGINE_DIR.'/data/config.php', "w") or die("Sorry, but you can not write information in the file <b>.engine/data/config.php</b>.<br />Check the surrounding CHMOD!");
fwrite($handler, "<?PHP \n\n//System Configurations\n\n\$config = array (\n\n");
foreach($config as $name => $value)
{
fwrite($handler, "'{$name}' => \"{$value}\",\n\n");
}
fwrite($handler, ");\n\n?>");
fclose($handler);

$tableSchema = array();

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_pm` CHANGE `user` `user` SMALLINT( 8 ) NOT NULL";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_pm` ADD INDEX ( `user` )";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_pm` ADD INDEX ( `user_from` )";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_banners` CHANGE `category` `category` VARCHAR( 200 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_users` ADD `logged_ip` VARCHAR( 16 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_banned` ADD `ip` VARCHAR( 16 ) NOT NULL DEFAULT ''";

$tableSchema[] = "DROP TABLE IF EXISTS " . PREFIX . "_views";
$tableSchema[] = "CREATE TABLE " . PREFIX . "_views (
  `id` mediumint(8) NOT NULL auto_increment,
  `news_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM /*!40101 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */";

  foreach($tableSchema as $table) {
     $db->query ($table);
   }

msgbox("info","Information", "<form action=\"index.php\" method=\"GET\">Upgrading database from version <b>5.2</b> to version <b>5.3</b> successfully completed.<br />Click Next to continue process upgrade script<br /><br /><input type=\"hidden\" name=\"next\" value=\"5.5\"><input class=\"edit\" type=\"submit\" value=\"Next ...\"></form>");
?>