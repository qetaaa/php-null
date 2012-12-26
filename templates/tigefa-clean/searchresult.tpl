[searchposts]
[fullresult]
<div class="base shortstory">
<span class="argdate">
        <b class="ddate">{date=d}</b>
		<span><b class="mdate">{date=M}</b>
		<b class="ydate">{date=Y}</b></span>
	</span>
	<h3 class="btl">#{search-id}: [result-link]{result-title}[/result-link]</h3>
	<div class="bhinfo">
	<div class="isicons">
        <ul class="reset">
		<li>{favorites}</li>
		<li>[edit]<img src="{THEME}/dleimages/editstore.png" />[/edit]</li>
	</ul>
		</div>
	    <span class="arg iuser">{result-author}</span>
		<span class="arg icat">{link-category}</span>
    </div>
	<div class="clr maincont">
		{result-text}
		<div class="clr"></div>
	</div>
	<div class="mlink">
	<span class="argmore">[result-link]<b>Read more...</b>[/result-link]</span>
        <span class="arg icom">Comments {result-comments}</span>
	</div>
</div>    
[/fullresult]
[shortresult]
<div class="base shortstory">
<span class="argdate">
        <b class="ddate">{date=d}</b>
		<span><b class="mdate">{date=M}</b>
		<b class="ydate">{date=Y}</b></span>
	</span>
	<h3 class="btl">#{search-id}: [result-link]{result-title}[/result-link]</h3>
	<div class="bhinfo">
	   <div class="isicons">
            <ul class="reset">
		<li>{favorites}</li>
		<li>[edit]<img src="{THEME}/dleimages/editstore.png" />[/edit]</li>
	    </ul>
		</div>
	    <span class="arg iuser">{result-author}</span>
		<span class="arg icat">{link-category}</span>
    </div>
	<div class="clr"></div>
<div class="mlink">
	<span class="argmore">[result-link]<b>Read more...</b>[/result-link]</span>
        <span class="arg icom">comments: {result-comments}</span>
	</div>
</div>
[/shortresult]
[/searchposts]
[searchcomments]
[fullresult]
<div class="radial bcomment">
	<div class="dcomtop">
		<div class="lcol avatar"><img src="{foto}" alt=""/></div>
		<div class="rcol cominf">
		<h5>#{search-id} {result-author} [[result-link]{result-title}[/result-link]]</h5>
            <ul class="reset">
				<li>{result-date}</li>
				<li>ICQ: {icq}</li>
			</ul>
		</div>
		<div class="clr"></div>
	</div>
	<div class="dcont">
      {result-text}
		<div class="clr"></div>
	</div>
</div>
[/fullresult]
[shortresult]
<div class="radial bcomment">
	<div class="dcomtop">
		<div class="lcol avatar"><img src="{foto}" alt=""/></div>
		<div class="rcol cominf">
			<h5>#{search-id} {result-author} [[result-link]{result-title}[/result-link]]</h5>
            <ul class="reset">
				<li>{result-date}</li>
				<li>ICQ: {icq}</li>
			</ul>
		</div>
		<div class="clr"></div>
	</div>
</div>
[/shortresult]
[/searchcomments]