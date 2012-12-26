<?php

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}


$config['version_id'] = "6.7";
$config['key'] = "";
$config['comments_maxlen'] = "3000";
$config['offline_reason'] = "Website is closed for maintenance. After finish all work, website will be open.<br /><br />Apologize for the inconvenience. (DLEVIET.COM)";


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

msgbox("info","Information", "<form action=\"index.php\" method=\"GET\">Upgrading database from version <b>6.5</b> to version <b>6.7</b> successfully completed.<br />Click Next to continue process upgrade script<br /><br /><input type=\"hidden\" name=\"next\" value=\"7.0\"><input class=\"edit\" type=\"submit\" value=\"Next ...\"></form>");
?>