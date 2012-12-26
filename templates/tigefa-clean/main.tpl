<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{headers}
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta name="google-site-verification" content="dxgqkGCeIlJnbf1GaWRak8G7PARm6Tz_5AGiSl52O3o" />
<meta name="msvalidate.01" content="8A535227C04A786864E8CADAA5CBFA69" />
<link rel="shortcut icon" href="{THEME}/images/favicon.ico" />
<link media="screen" href="{THEME}/style/styles.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/style/engine.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="{THEME}/js/ddaccordion.js"></script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-29791208-4']);
  _gaq.push(['_setDomainName', 'php-null.org']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
{AJAX}
<div class="whead">
	<div class="wrapper">
		<div class="header">
			<h1><a class="thide" href="http://www.php-null.org" title="article directory">php-null.org</a></h1>
			<div class="rcol">
				<ul class="reset headlinks">
					<li class="icmap"><a href="http://www.php-null.org/sitemap.xml">Site map</a></li>
                    <li class="icrss"><a href="./rss.xml">RSS</a></li>
				</ul>
				<div class="radial toolbar">
                  {login}
		<form action="" name="searchform" method="post">
		<input type="hidden" name="do" value="search" />
		<input type="hidden" name="subaction" value="search" />
                <ul class="searchbar reset">
		<li class="lfield"><input name="story" id="story" value="Search..." onblur="if(this.value=='') this.value='Search...';" onfocus="if(this.value=='Search...') this.value='';" type="text" /></li>
		<li class="lbtn"><input title="Search" alt="Search" type="image" src="{THEME}/images/spacer.gif" /></li>
							</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="pbg">
	<div class="wrapper">
		<div class="contain">
			<div class="vsep">
				<div class="vsep">
					<div class="rcol midside">
						<div class="bancenter">
<script type="text/javascript" src="http://adhitzads.com/458018"></script>
						</div>
						<div class="contain">
							<div class="lcol mainside">
                               {info}{content}
                                <br clear="all" />
							</div>
							<div class="rcol sidebar">
                             	{include file="blocksright.tpl"}
							</div>
						</div>
					</div> 
					<div class="lcol sidebar">
                    		{include file="blocksleft.tpl"}
					</div>
					<div class="clr"></div>
				</div>
			</div>
        </div>
	</div>
</div>
<div class="wfoot">
	<div class="wrapper">
		<div class="footer">
			<div class="footinfo">
{banner_header}
				<div class="fmenu"><div class="fmenu"><div class="fmenu">
					<div class="dcont">
						<ul class="reset">
							<li><a href="/">Home</a></li>
                            <li><a href="/lastnews/">newposts</a></li>
							<li><a href="/">Site map</a></li>
							<li><a href="/">Rss</a></li>
							<li><a href="/">Mobile version</a></li>
						</ul>
                     </div>
				</div></div></div>
				 <br clear="all" /><br clear="all" />
			</div>
			<div class="clr"></div>
		</div>
	</div>
</div>
<div class="wfootline"><div class="wrapper">
<a class="copyright" href="http://www.php-null.org">Copyright &copy; 2012 PHP-NULL.ORG</a>
    <div class="counts">
		
	</div>
	<br clear="all" /><br clear="all" />
</div></div>
</body>
</html>