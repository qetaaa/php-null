[searchposts]
[fullresult]
<div class="news">
	<h2 class="newsTitle">[result-link]{result-title}[/result-link][edit] <img src="{THEME}/dleimages/edit.png" style="vertical-align:middle;" class="editNews" title="Edit News" alt="Edit News" />[/edit]</h2>

	<ul class="newsInfo">
		<li>{result-date} - <span>{result-author}</span></li>
		<li>Views: {views}</li>
		<li>Comments: {result-comments}</li>
		<li><span>{link-category}</span></li>
	</ul>

	<hr class="sepNews" />

	<div class="newsContent">
		{result-text}

		<ul class="newsActions">
			<li class="ratingBox">[tags]<b>Tags:</b> {tags}[/tags]</li>
			
			<li class="fullLink">[result-link]<span>Read more...</span>[/result-link]</li>
		</ul>

	</div>
</div>
[/fullresult]
[shortresult]
<div class="searchShort">
	<h3>[result-link]{result-title}[/result-link]</h3>
	<b>{result-date}</b> | {link-category} | Author: {result-author} | [com-edit]EDIT[/com-edit] | [com-del]DELETE[/com-del]
</div>
[/shortresult]
[/searchposts]


[searchcomments]
[fullresult]
<div class="comment">
	<div class="authorFoto"><img src="{foto}" alt="Avatar of {login}"/></div>
	<div class="commentContent">
		<ul class="commentInfo">
			<li>{result-author}</li>
			<li>{result-date}</li>
			<li>ICQ: <b>{icq}</b></li>
			<li>Register: <b>{registration}</b></li>
		</ul>
		
		<div class="commentText">
			<b>[result-link]{result-title}[/result-link]</b>
			{result-text}
		</div>
		[not-group=5]<div class="comOptions">[com-del]DELETE[/com-del][com-edit]EDIT[/com-edit]</div>[/not-group]
	</div>
</div>
[/fullresult]
[shortresult]
<div class="searchShort">
	<h3>[result-link]{result-title}[/result-link]</h3>
	<b>{result-date}</b> | {link-category} | Author: {result-author} | [com-edit]EDIT[/com-edit] | [com-del]DELETE[/com-del]
</div>
[/shortresult]
[/searchcomments]