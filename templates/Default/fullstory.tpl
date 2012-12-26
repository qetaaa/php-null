{poll}
<div class="base fullstory">
	<div class="dpad">
		<h3 class="btl">{title}</h3>
		<div class="bhinfo">
		[not-group=5]
			<ul class="isicons reset">
				<li>[edit]<img src="{THEME}/dleimages/editstore.png" title="Edit" alt="Edit" />[/edit]</li>
				<li>{favorites}</li>
				<li>[complaint]<img src="{THEME}/images/complaint.png" title="Report error" alt="Report error" />[/complaint]</li>
			</ul>
		[/not-group]
			<span class="baseinfo radial">
				Author: {author} at [day-news]{date}[/day-news]
			</span>
			[rating]<div class="ratebox"><div class="rate">{rating}</div></div>[/rating]
		</div>
		<div class="maincont">
			{full-story}
			<div class="clr"></div>
			[edit-date]<p class="editdate"><br /><i>Edited by: <b>{editor}</b> - {edit-date}
			<br />[edit-reason]Reason: {edit-reason}[/edit-reason]</i></p>[/edit-date]
			[tags]<br /><p class="basetags"><i>Tags: {tags}</i></p>[/tags]
		</div>
		<div class="storenumber">{pages}</div>
	</div>
	[related-news]<div class="related">
		<div class="dtop"><span><b>Related News:</b></span></div>	
		<ul class="reset">
			{related-news}
		</ul>
		<br />
	</div>[/related-news]
	<div class="mlink">
		<span class="argback"><a href="javascript:history.go(-1)"><b>Back</b></a></span>
		<span class="argviews"><span title="Views: {views}"><b>{views}</b></span></span>
		<span class="argcoms">[com-link]<span title="Comments: {comments-num}"><b>{comments-num}</b></span>[/com-link]</span>
		<div class="mlarrow">&nbsp;</div>
		<p class="lcol argcat">Category: {link-category}</p>
	</div>
	[group=5]
	<div class="clr berrors" style="margin: 0;">
		Dear visitor, you went to website as unregistered user.<br />
		We encourage you to <a href="/index.php?do=register">Register</a> or Login to website under your name.
	</div>
	[/group]
</div>
<div class="pheading">
	<h2 class="lcol">Comments:</h2>
	<a class="addcombtn" href="#" onclick="$('#addcform').toggle();return false;"><b>Add Comments</b></a>
	<div class="clr"></div>
</div>
{addcomments}
{comments}
{navigation}