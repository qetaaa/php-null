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
 File: gzip.php
-----------------------------------------------------
 Purpose: —жатие gzip
=====================================================
*/
if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

function CheckCanGzip(){

if (headers_sent() || connection_aborted() || !function_exists('ob_gzhandler') || ini_get('zlib.output_compression')) return 0; 

if (strpos($_SERVER['HTTP_ACCEPT_ENCODING'], 'x-gzip') !== false) return "x-gzip"; 
if (strpos($_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip') !== false) return "gzip"; 

return 0; 
}


function GzipOut($debug=0){
	global $config, $Timer, $db, $tpl, $_DOCUMENT_DATE;

	if ($debug) $s = "
<!-- Script execute time ".$Timer->stop()." seconds -->
<!-- Time spent on the compilation templates ".round($tpl->template_parse_time, 5)." seconds -->
<!-- Time spent to execute MySQL queries: ".round($db->MySQL_time_taken, 5)." seconds -->
<!-- Total number of MySQL queries ".$db->query_num." -->";

	if( $debug AND function_exists( "memory_get_peak_usage" ) ) $s .="\n<!-- Size of memory allocated from system ".round(memory_get_peak_usage()/(1024*1024),2)." MB -->";

	if($_DOCUMENT_DATE)
	{
		@header ("Last-Modified: " . date('r', $_DOCUMENT_DATE) ." GMT");
	
	}

	if ($config['allow_gzip'] != "yes") {if ($debug) echo $s; ob_end_flush(); return;}

    $ENCODING = CheckCanGzip(); 

    if ($ENCODING){
        $s .= "\n<!-- Output using compression $ENCODING -->\n"; 
        $Contents = ob_get_contents(); 
        ob_end_clean(); 

        if ($debug){
            $s .= "<!-- Total file size: ".strlen($Contents)." bytes "; 
            $s .= "After compression: ".
                   strlen(gzencode($Contents, 1, FORCE_GZIP)).
                   " bytes -->"; 
            $Contents .= $s; 
        }

        header("Content-Encoding: $ENCODING"); 

		$Contents = gzencode($Contents, 1, FORCE_GZIP);
		echo $Contents;
        exit; 

    }else{

        ob_end_flush(); 
        exit; 

    }
}
?>