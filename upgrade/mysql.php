<?php
/*
=====================================================
 DataLife Engine - by SoftNews Media Group 
-----------------------------------------------------
 English version by DLEVIET (http://dleviet.com)
-----------------------------------------------------
 Copyright (c) 2004,2008 SoftNews Media Group
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

if ( extension_loaded('mysqli') AND version_compare("5.0.5", phpversion(), "!=") )
{
	include_once( "mysqli.class.php" );
}
else
{
	include_once( "mysql.class.php" );
}

?>