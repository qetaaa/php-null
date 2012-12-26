<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
{headers}
<link rel="shortcut icon" href="{THEME}/images/favicon.ico" />
<link media="screen" href="{THEME}/style/styles.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/style/engine.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="{THEME}/js/libs.js"></script>
</head>
<body>
{AJAX}
<div id="toolbar" class="wwide">
	<div class="wrapper"><div class="dpad">
		<span class="htmenu"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://dleviet.com');">Set as Homepage</a><span>|</span><a href="#" rel="sidebar" onclick="window.external.AddFavorite(location.href,'dleviet.com'); return false;">Add to Favorites</a></span>
		{login}
	</div></div>
	<div class="shadow">&nbsp;</div>
</div>
<div class="wrapper">
	<div id="header" class="dpad">
		<h1><a class="thide" href="/index.php" title="DataLife Engine - Softnews Media Group">DataLife Engine - Softnews Media Group</a></h1>
		<form action="" name="searchform" method="post">
			<input type="hidden" name="do" value="search" />
			<input type="hidden" name="subaction" value="search" />
			<ul class="searchbar reset">
				<li class="lfield"><input id="story" name="story" value="Search..." onblur="if(this.value=='') this.value='Search...';" onfocus="if(this.value=='Search...') this.value='';" type="text" /></li>
				<li class="lbtn"><input title="Search" alt="Search" type="image" src="{THEME}/images/spacer.gif" /></li>
			</ul>
		</form>
		<div class="headlinks">
			<ul class="reset">
				<li><a href="/index.php">Home</a></li>
				[group=5]<li><a href="/index.php?do=register">Register</a></li>[/group]
				<li><a href="/index.php?do=feedback">Contact Us</a></li>
				<li><a href="/index.php?do=rules">Rules</a></li>
			</ul>
		</div>
	</div>
	<div class="himage"><div class="himage"><div class="himage dpad">
		<h2>Multi-user news engine,<br />
		designed for organization own<br />
		Media and Blogs on the Internet.</h2>
	</div></div></div>
	<div class="mbar" id="menubar"><div class="mbar"><div class="mbar dpad">
		<div class="menubar">
			{include file="topmenu.tpl"}
		</div>
	</div></div></div>
	<div class="wtop wsh"><div class="wsh"><div class="wsh">&nbsp;</div></div></div>
	<div class="shadlr"><div class="shadlr">
		<div class="container">
			<div class="vsep">
				<div class="vsep">
					<div id="midside" class="rcol">
						[not-aviable=main]{speedbar}[/not-aviable]
						<div class="hbanner">
							<div class="dpad" align="center">{banner_header}</div>
							<div class="dbtm"><span class="thide">For advertising</span></div>
						</div>
						[sort]<div class="sortn dpad"><div class="sortn">{sort}</div></div>[/sort]
						{info}
						{content}
					</div>
					<div id="sidebar" class="lcol">
						{include file="sidebar.tpl"}
					</div>
					<div class="clr"></div>
				</div>
			</div>
			<div class="footbox">
				<div class="rcol">
					<div class="btags">
						{tags}
						<div class="shadow">&nbsp;</div>
					</div>
				</div>
				<div class="lcol">
					<p>Dear webmaster, you<br />
					are viewing test page of<br />
					<b>DataLife Engine</b>.<br />
					Current version 9.6.</p>
				</div>
			</div>
		</div>
	</div></div>
	<div class="wbtm wsh"><div class="wsh"><div class="wsh">&nbsp;</div></div></div>
</div>
<div id="footmenu" class="wwide">
	<div class="wrapper"><div class="dpad">
		<ul class="reset">
			<li><a href="/index.php">Home</a></li>
			[group=5]<li><a href="/index.php?do=register">Register</a></li>[/group]
			[not-group=5]<li><a href="/addnews.html">Add News</a></li>[/not-group]
			<li><a href="/newposts/">New Post</a></li>
			<li><a href="/statistics.html">Statistics</a></li>
			<li><a href="http://dleviet.com">Support</a></li>
		</ul>
	</div></div>
	<div class="shadow">&nbsp;</div>
</div>
<div id="footer" class="wwide">
	<div class="wrapper"><div class="dpad">
		<span class="copyright">
			Copyright &copy; 2004-2012 <a href="http://dleviet.com">SoftNews Media Group</a> All Rights Reserved.<br />
			Powered by DataLife Engine &copy; 2012
		</span>
		<div class="counts">
			<ul class="reset">
				<li><img src="{THEME}/images/count.png" alt="count 88x31px" /></li>
				<li><img src="{THEME}/images/count.png" alt="count 88x31px" /></li>
				<li><img src="{THEME}/images/count.png" alt="count 88x31px" /></li>
			</ul>
		</div>
		<div class="clr"></div>
	</div></div>
</div>
</body>
</html>