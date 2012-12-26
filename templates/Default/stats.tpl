<div class="pheading"><h2>Site Statistics</h2></div>
<div class="basecont statistics">
	<ul class="lcol reset">
		<li><h5 class="blue">News</h5></li>
		<li>Total number of news: <b class="blue">{news_num}</b></li>
		<li>News of those published: <b class="blue">{news_allow}</b></li>
		<li>Published in the main: <b class="blue">{news_main}</b></li>
		<li>News pending moderation: <b class="blue">{news_moder}</b></li>
	</ul>
	<ul class="lcol reset">
		<li><h5 class="blue">Users:</h5></li>
		<li>Total number of users: <b class="blue">{user_num}</b></li>
		<li>Banned: <b class="blue">{user_banned}</b></li>
	</ul>
	<ul class="lcol reset">
		<li><h5 class="blue">Comments:</h5></li>
		<li>Number of comments: <b class="blue">{comm_num}</b></li>
		<li><a href="/?do=lastcomments">View recent</a></li>
	</ul>
	<br clear="all" />
	<div class="dpad infoblock radial">
		<ul class="reset">
			<li>Per day: <span class="blue">Posted {news_day} news and {comm_day} comments, registered {user_day} users </span></li>
			<li>Per week: <span class="blue">Posted {news_week} news and {comm_week} comments, registered {user_week} users </span></li>
			<li>Per month: <span class="blue">Posted {news_month} news and {comm_month} comments, registered {user_month} users </span></li>
		</ul>
	</div>
</div>
<div class="pheading"><p><b>Database size: {datenbank}</b></p></div>
<div class="basecont">
	<div class="pheading">
		<h3 class="heading">Top users</h3>
		<table width="100%" class="userstop">{topusers}</table>
	</div>
</div>