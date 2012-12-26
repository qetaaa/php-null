<div class="static">
	<h2 class="newsTitle">Site Statistics</h2>

	<div class="baseform">
	
		<div class="statistics">
			<ul class="column">
				<li><h3>News</h3></li>
				<li>Total number of news: <b>{news_num}</b></li>
				<li>News of those published: <b>{news_allow}</b></li>
				<li>Published in the main: <b>{news_main}</b></li>
				<li>News pending moderation: <b>{news_moder}</b></li>
			</ul>
			<ul class="column">
				<li><h3>Users:</h3></li>
				<li>Total number of users: <b>{user_num}</b></li>
				<li>Banned: <b>{user_banned}</b></li>
			</ul>
			<ul class="column">
				<li><h3>Comments:</h3></li>
				<li>Number of comments: <b>{comm_num}</b></li>
				<li><a href="/?do=lastcomments">View recent</a></li>
			</ul>
		</div>
		
		<div class="lines">
			<ul class="statisticsSum">
				<li><span>Per day:</span> Posted <b>{news_day} Archives</b> and <b>{comm_day} comments</b>, registered <b>{user_day} users </b></li>
				<li><span>Per week:</span> Posted <b>{news_week} Archives</b> and <b>{comm_week} comments</b>, registered <b>{user_week} users </b></li>
				<li><span>Per month:</span> Posted <b>{news_month} Archives</b> and <b>{comm_month} comments</b>, registered <b>{user_month} users </b></li>
			</ul>
		</div>

		<p class="baseSize">Database size: {datenbank}</p>

	</div>
</div>

<div class="static">
	<h2 class="newsTitle">List of top users</h2>

	<div class="baseform">
		<table width="100%" class="userstop">{topusers}</table>
	</div>
</div>