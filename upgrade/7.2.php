<?php

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}

$config['version_id'] = "7.3";
$config['flv_watermark'] = "0";
$config['allow_add_tags'] = "0";
$config['allow_fixed'] = "1";
$config['max_file_size'] = "4096";
$config['max_file_count'] = "0";


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

msgbox("info","Information", "<form action=\"index.php\" method=\"GET\">Upgrading database from version <b>7.2</b> to version <b>7.3</b> successfully completed.<br />{$error_info}<br />Click Next to continue process upgrade script<br /><br /><input type=\"hidden\" name=\"next\" value=\"7.5\"><input class=\"edit\" type=\"submit\" value=\"Next ...\"></form>");
?>