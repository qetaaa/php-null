<div class="news">
	<h2 class="newsTitle">[full-link]{title}[/full-link][edit] <img src="{THEME}/dleimages/edit.png" style="vertical-align:middle;" class="editNews" title="Edit News" alt="Edit News" />[/edit]</h2>

	<ul class="newsInfo">
		<li>[day-news]{date}[/day-news] - <span>{author}</span></li>
		<li>Views: {views}</li>
		<li>Comments: {comments-num}</li>
		<li><span>{link-category}</span></li>
	</ul>

	<hr class="sepNews" />

	<div class="newsContent">
		{short-story}
		[edit-date]<p class="editInfo">Edited by: <b>{editor}</b> - ({edit-date})
		[edit-reason]<br />Reason: {edit-reason}[/edit-reason]</p>[/edit-date]

		<ul class="newsActions">
			<li class="ratingBox">{rating}
			
			[tags]<b>Tags:</b> {tags}[/tags]</li>
			
			<li class="fullLink">[full-link]<span>Read more</span>[/full-link]</li>
		</ul>

	</div>
</div>