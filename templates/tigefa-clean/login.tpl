[not-group=5]
 <div class="loginent">
	<ul class="reset">
		<li class="bfont"><a class="fbutton" href="{logout-link}"><b>Logout</b></a></li>
		<li class="bfont"><b>Hi, <a href="{profile-link}" title="My profile">{login}</a> !</b></li>
		[admin-link]<li><a href="{admin-link}" target="_blank">Admin CP</a></li>[/admin-link]
        	<li><a href="{addnews-link}">Add news</a></li>
 		<li><a href="{pm-link}">PM ({new-pm} | {all-pm})</a></li>
		<li><a href="{favorites-link}">favorites</a></li>
		<li><a href="{newposts-link}">Newposts</a></li>
	</ul>
</div> 
[/not-group]
[group=5]
   <form method="post" action="">
		<ul class="reset loginbox">
		<li class="lfield"><label for="login_name">Username</label><input type="text" name="login_name" id="login_name" /></li>
		<li class="lfield lfpas"><label for="login_password">Password</label><input type="password" name="login_password" id="login_password" /></li>
		<li class="lbtn">
		<input type="checkbox" name="login_not_save" id="login_not_save" title="Login not save" value="1"/>
		<input class="fbutton" onclick="submit();" type="submit" value="Login" title="Login" />
		</li>
		</ul>
		<input name="login" type="hidden" id="login" value="submit" />
		<span class="loginlinks">
			<a href="/index.php?do=register">Register</a> | <a href="{lostpassword-link}">Lost password ?</a>
		</span>
	</form>
[/group]