[not-group=5]
<div class="panel">
<div style="padding-top:2px; padding-left:5px;">Welcome, <b>{login}</b>!</div>
<div style="padding-top:5px; padding-bottom:5px; padding-left:22px;">
    <a href="{profile-link}">Profile</a><br />
    <a href="{pm-link}">PM ({new-pm} | {all-pm})</a><br />
	<a href="{favorites-link}">Favorites</a><br />
	<a href="{stats-link}">Statistics</a><br />
	<a href="{newposts-link}">New Post</a>
	</div>
<div style="padding-top:2px; padding-bottom:5px;"><a href="{logout-link}"><b>Logout!!</b></a></div>
<div style="padding-bottom:5px;">You are viewing mobile version of site. <a href="/index.php?action=mobiledisable">Back to full version of the site.</a></div>
</div>
[/not-group]
[group=5]
<div class="panel"><form method="post">
              {login-method}&nbsp;&nbsp;&nbsp;<input type="text" name="login_name" style="width:103px; font-family:tahoma; font-size:11px;"><br />
              Password: <input type="password" name="login_password" style="width:103px; font-family:tahoma; font-size:11px;"> <input type="submit" value=" Login "><br />
					<input name="login" type="hidden" id="login" value="submit">
			  </form>
              <div style="padding-top:8px; padding-bottom:5px;"><a href="{registration-link}">Register!</a> <a href="{lostpassword-link}">Forgot your password??</a></div>
			  <div style="padding-bottom:5px;">You are viewing mobile version of site. <a href="/index.php?action=mobiledisable">Back to full version of the site.</a></div>
</div>
[/group]