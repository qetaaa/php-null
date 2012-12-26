[searchposts]
[fullresult]
<div class="base shortstory">
	<div class="dpad">
		<h3 class="btl">[result-link]{result-title}[/result-link]</h3>
		<div class="bhinfo">
		[not-group=5]
			<ul class="isicons reset">
				<li>[edit]<img src="{THEME}/dleimages/editstore.png" title="Edit" alt="Edit" />[/edit]</li>
				<li>{favorites}</li>
			</ul>
		[/not-group]
			<span class="baseinfo radial">
				Author: {result-author} at {result-date}
			</span>
		</div>
		<div class="maincont">
			{result-text}
			<div class="clr"></div>
		</div>
	</div>
	<div class="mlink">
		<span class="argmore">[result-link]<b>Read more...</b>[/result-link]</span>
		<span class="argviews"><span title="Views: {views}"><b>{views}</b></span></span>
		<span class="argcoms"><span title="Comments: {result-comments}"><b>{result-comments}</b></span></span>
		<div class="mlarrow">&nbsp;</div>
		<p class="lcol argcat">Category: {link-category}</p>
	</div>
</div>
[/fullresult]
[shortresult]
<div class="dpad searchitem">
	<h3>[result-link]{result-title}[/result-link]</h3>
	<b>{result-date}</b> | {link-category} | Author: {result-author}
</div>
[/shortresult]
[/searchposts]
[searchcomments]
[fullresult]
<div class="bcomment">
	<div class="dtop">
		<div class="lcol"><span><img src="{foto}" alt=""/></span></div>
		<div class="rcol">
			<ul class="reset">
				<li><h4>{result-author}</h4></li>
				<li>{result-date}</li>
			</ul>
		</div>
		<div class="clr"></div>
	</div>
	<div class="cominfo"><div class="dpad">
		[not-group=5]
		<div class="comedit">
			<ul class="reset">
				<li>[com-edit]EDIT[/com-edit]</li>
				<li>[com-del]DELETE[/com-del]</li>
			</ul>
		</div>
		[/not-group]
		<ul class="cominfo reset">
			<li>Register: {registration}</li>
		</ul>
	</div>
	<span class="thide">^</span>
	</div>
	<div class="dcont">
		<h3 style="margin-bottom: 0.4em;">[result-link]{result-title}[/result-link]</h3>
		{result-text}
		<div class="clr"></div>
	</div>
</div>
[/fullresult]
[shortresult]
<div class="dpad searchitem">
	<h3>[result-link]{result-title}[/result-link]</h3>
	<b>{result-date}</b> | {link-category} | Author: {result-author} | [com-edit]EDIT[/com-edit] | [com-del]DELETE[/com-del]
</div>
[/shortresult]
[/searchcomments]