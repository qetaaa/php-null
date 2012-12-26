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
 File: fullsite.php
-----------------------------------------------------
 Purpose: WYSIWYG для новостей с сайта
=====================================================
*/

if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

$fullarea = <<<HTML
    <div class="wseditor"><textarea id="full_story" name="full_story" class="wysiwygeditor" style="width:98%;height:200px;">{full-story}</textarea></div>
HTML;

?>