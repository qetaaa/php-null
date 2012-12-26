<?php
/*
=====================================================
 DataLife Engine - by SoftNews Media Group 
-----------------------------------------------------
 English version by DLEVIET (http://dleviet.com)
-----------------------------------------------------
 Copyright (c) 2004,2012 SoftNews Media Group
=====================================================
 This code is protected by copyright
=====================================================
 File: offline.php
-----------------------------------------------------
 Purpose: Временное отключение сайта
=====================================================
*/

if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

if ($member_id['user_group'] == '1' OR $user_group[$member_id['user_group']]['allow_offline']) {

	$metatags['title'] .= " (Offline)";

} else {

	$tpl->load_template('offline.tpl');

	$tpl->set('{THEME}', $config['http_home_url'].'templates/'.$config['skin']);
	$tpl->set('{charset}', $config['charset']);

	$config['offline_reason'] = str_replace('&quot;', '"', $config['offline_reason']);

	$tpl->set('{reason}', $config['offline_reason']);

	$tpl->compile('main');

	echo $tpl->result['main'];

	die ();

}
?>