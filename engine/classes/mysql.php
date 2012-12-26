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
 File: mysql.php
-----------------------------------------------------
 Purpose: Class for working with database
=====================================================
*/

if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

if ( extension_loaded('mysqli') )
{
	include_once( ENGINE_DIR."/classes/mysqli.class.php" );
}
else
{
	include_once( ENGINE_DIR."/classes/mysql.class.php" );
}

?>