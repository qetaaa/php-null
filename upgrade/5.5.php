<?php

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}


$config['version_id'] = "5.7";
$config['mail_news'] = "0";
$config['mail_comments'] = "0";
$config['key'] = "";

$handler = fopen(ENGINE_DIR.'/data/config.php', "w") or die("Sorry, but you can not write information in the file <b>.engine/data/config.php</b>.<br />Check the surrounding CHMOD!");
fwrite($handler, "<?PHP \n\n//System Configurations\n\n\$config = array (\n\n");
foreach($config as $name => $value)
{
	fwrite($handler, "'{$name}' => \"{$value}\",\n\n");
}
fwrite($handler, ");\n\n?>");
fclose($handler);

$config_dbhost = DBHOST;
$config_dbname = DBNAME;
$config_dbuser = DBUSER;
$config_dbpasswd = DBPASS;
$config_dbprefix = PREFIX;

$dbconfig = <<<HTML
<?PHP

define ("DBHOST", "{$config_dbhost}"); 

define ("DBNAME", "{$config_dbname}");

define ("DBUSER", "{$config_dbuser}");

define ("DBPASS", "{$config_dbpasswd}");  

define ("PREFIX", "{$config_dbprefix}"); 

define ("USERPREFIX", "{$config_dbprefix}"); 

\$db = new db;

?>
HTML;

$con_file = fopen(ENGINE_DIR.'/data/dbconfig.php', "w") or die("Sorry, but you can not write information in the file <b>.engine/data/dbconfig.php</b>.<br />Check the surrounding CHMOD!");
fwrite($con_file, $dbconfig);
fclose($con_file);

$tableSchema = array();

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_vote` CHANGE `category` `category` VARCHAR( 200 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_pm` ADD `reply` TINYINT( 1 ) NOT NULL DEFAULT '0'";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_static` ADD `metadescr` VARCHAR( 200 ) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_static` ADD `metakeys` TEXT NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_usergroups` ADD `icon` VARCHAR( 200 ) NOT NULL DEFAULT ''";
$tableSchema[] = "INSERT INTO " . PREFIX . "_email values (4, 'new_news', 'Dear Administrator,\r\n\r\nwebsite {$config['http_home_url']} had been added new article which is currently awaiting moderation.\r\n\r\n------------------------------------------------\r\nOver view information in article\r\n------------------------------------------------\r\n\r\nAuthor: {%username%}\r\nTitle: {%title%}\r\nCategory: {%category%}\r\nDate added: {%date%}\r\n\r\nBest regards,\r\n\r\nAdministrator {$config['http_home_url']}')";
$tableSchema[] = "INSERT INTO " . PREFIX . "_email values (5, 'comments', 'Dear Administrator,\r\n\r\nwebsite {$config['http_home_url']} was added a comment to the news.\r\n\r\n------------------------------------------------\r\nSummary of comments\r\n------------------------------------------------\r\n\r\nAuthor: {%username%}\r\nDate added: {%date%}\r\nLink news: {%link%}\r\nIP address: {%ip%}\r\n\r\n------------------------------------------------\r\nComment text\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nBest regards,\r\n\r\nAdministrator {$config['http_home_url']}')";

  foreach($tableSchema as $table) {
     $db->query ($table);
   }

@unlink(ENGINE_DIR.'/cache/system/category.php');
@unlink(ENGINE_DIR.'/cache/system/cron.php');

clear_cache();

msgbox("info","Information", "<form action=\"index.php\" method=\"GET\">Upgrading database from version <b>5.5</b> to version <b>5.7</b> successfully completed.<br />Click Next to continue process upgrade script<br /><br /><input type=\"hidden\" name=\"next\" value=\"6.0\"><input class=\"edit\" type=\"submit\" value=\"Next ...\"></form>");
?>