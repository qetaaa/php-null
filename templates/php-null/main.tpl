<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
{headers}
<meta name="google-site-verification" content="dxgqkGCeIlJnbf1GaWRak8G7PARm6Tz_5AGiSl52O3o" />
<meta name="msvalidate.01" content="8A535227C04A786864E8CADAA5CBFA69" />
<link rel="shortcut icon" href="http://www.php-null.org/favicon.ico" />
<link rel="stylesheet" href="{THEME}/style/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="{THEME}/style/dle.css" type="text/css" media="screen" />
<link rel="stylesheet" href="{THEME}/style/reset.css" type="text/css" media="screen" />
<script type="text/javascript" src="{THEME}/js/jmpopups.js"></script>
<script type="text/javascript">
//<![CDATA[
	$.setupJMPopups({
		screenLockerBackground: "#000",
		screenLockerOpacity: "0.7"
	});

	function openStaticPopup() {
		$.openPopupLayer({
			name: "loginPopup",
			width: 310,
			target: "loginform"
		});
	}
//]]>
</script>
[aviable=showfull]<script type="text/javascript">
$(document).ready(function(){
	$(".comment").hover(function(){$(this).find(".comOptions").css("visibility","visible");},function(){$(this).find(".comOptions").css("visibility","hidden");});
});
</script>[/aviable]
<!--[if IE 6]>
<link media="screen" href="{THEME}/style/ie6.css" type="text/css" rel="stylesheet" />
<script src="{THEME}/js/DD_belatedPNG.js"></script>
<script>DD_belatedPNG.fix('#login_name, #login_password, #story, .editNews');</script>
<![endif]-->
<!--[if lte IE 7]><link media="screen" href="{THEME}/style/ie7.css" type="text/css" rel="stylesheet" /><![endif]-->
<!-- Cufon Font Replacement -->
<script src="{THEME}/js/cufon/cufon-yui.js?builder=06062012" type="text/javascript"></script>
<script type="text/javascript" src="{THEME}/js/cufon/Museo_Sans_500_400.font.js?builder=06062012"></script>
<script type="text/javascript">
/* <![CDATA[ */
Cufon.replace('.blockTitle');
/* ]]> */
</script>
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
<script type="text/javascript">var switchTo5x=false;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({publisher: "f375d30b-f143-4fcb-957e-63a0c3307517"}); </script>
</head>

<body>
{AJAX}
<noscript><div id="noscript">For normal operation of this site, you must enable JavaScript!</div></noscript>
{include file="header.tpl"}

<div id="wrapper">
	<div id="middle">
		<div id="container">
			<div id="content">
				<div class="contentOptions">
					[aviable=main][sort]{sort}[/sort][/aviable]
					[not-aviable=main]{speedbar}[/not-aviable]
				</div>
				{info}{content}
			</div>
		</div>

		{include file="sidebar.tpl"}
	</div>
</div>

<div id="footer">
	<div class="footerContent">
		<p class="copyright">
			2012 &copy; <a href="http://www.php-null.org" title="php-null UnderGround">PHP-NULL.ORG&reg;</a> UnderGround. | <a href="http://www.php-null.org/privacy.html">Privacy Policy</a> | <a href="http://www.php-null.org/licenses.html">Terms Of Use</a>
			<i>Sharing is Caring.</i>
		</p>

		<ul class="counts">
		    <li><a target="_blank" href="https://twitter.com/phpnull_org" title="follow us on twitter"><img src="http://cdn.php-null.org/img/twitter.jpg" alt="counter" /></a></li>
			<li><a target="_blank" href="https://www.facebook.com/mychimps" title="find us on facebook"><img src="http://cdn.php-null.org/img/facebook.gif" alt="counter" /></a></li>
			<li><a href="http://x.co/l2Aw" target="_blank"><img src="http://www.fileswap.com/_images/affiliate/88x31.gif" width="88" height="31"></a></li>
		</ul>
	</div>
</div>
<script type="text/javascript">
  	Cufon.now();
</script>
<script>
function googleTranslateElementInit() {
  new google.translate.TranslateElement({
    pageLanguage: 'en',
    gaTrack: true,
    gaId: 'UA-29791208-4',
    floatPosition: google.translate.TranslateElement.FloatPosition.BOTTOM_RIGHT
  });
}
</script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<!-- Piwik -->
<script type="text/javascript">
var pkBaseURL = (("https:" == document.location.protocol) ? "https://analytics.tigefa.org/" : "http://analytics.tigefa.org/");
document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
</script><script type="text/javascript">
try {
var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 7);
piwikTracker.trackPageView();
piwikTracker.enableLinkTracking();
} catch( err ) {}
</script><noscript><p><img src="http://analytics.tigefa.org/piwik.php?idsite=7" style="border:0" alt="" /></p></noscript>
<!-- End Piwik Tracking Code -->
<script type="text/javascript" src="http://www.cash4links.co/Webservices/jsParseLinks.aspx?id=8b9eb8bf"></script>
</body>
</html>