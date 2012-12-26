[not-group=5]
<ul class="menuLogin" style="background:none;">
	<!-- POPUP WINDOW -->
	<div id="loginform" class="window">
		<div class="popup">
			<div class="popupHead">
				<a class="popupClose" href="javascript:;" onclick="$.closePopupLayer('loginPopup')" title="Close"><img src="{THEME}/images/spacer.gif" alt="" /></a>
			</div>

			<div class="popupBody">
				<div class="userAvatar"><img alt="Avatar of {login}" src="{foto}" /></div>

				<div class="userPanel">
					<ul>
						<li><a href="{profile-link}">Profiles</a>[admin-link] [<a style="color:#C73030;" target="_blank" href="{admin-link}">adm</a>][/admin-link]</li>
						<li><a href="{addnews-link}">Add News</a></li>
						<li><a href="{pm-link}">PM ({new-pm} | {all-pm})</a></li>
						<li><a href="{favorites-link}">Favorites</a></li>
						<li><a href="{newposts-link}">New Posts</a></li>
						<li><b><a href="{logout-link}">Logout</a></b></li>
					</ul>
				</div>
			</div>

		</div>
	</div>
	<!-- POPUP WINDOW -->

	<li id="helloUser">Welcome, <b>{login}!</b></li>
	<li><a href="javascript:;" onclick="openStaticPopup()">Panel</a></li>
</ul>
[/not-group]

[group=5]
<ul class="menuLogin">
	<!-- POPUP WINDOW -->
	<div id="loginform" class="window">
		<div class="popup">
			<div class="popupHead">
				<a class="popupClose" href="javascript:;" onclick="$.closePopupLayer('loginPopup')" title="Close"><img src="{THEME}/images/spacer.gif" alt="" /></a>
			</div>

			<div class="popupBody">
				
				
			<form method="post" action="">
					<ul class="authorizations">
						<li>
							<input type="text" name="login_name" id="login_name" onblur="if(this.value=='') this.value=' Username'" onfocus="if(this.value==' Username') this.value=''" value=" Username" />
						</li>
						<li>
							<input type="password" name="login_password" id="login_password" onblur="if(this.value=='') this.value=' Password'" onfocus="if(this.value==' Password') this.value=''" value=" Password" />
						</li>
						<li>
							<ul class="lostPassword">
								<li><a href="{registration-link}">Register</a></li>
								<li><a href="{lostpassword-link}">Lost password?</a></li>
							</ul>

							<input name="login" type="hidden" id="login" value="submit" />
							<div style="float:right;margin:0;" class="button"><input type="submit" onclick="submit();" value="Login" alt="Login" /></div>
						</li>
					</ul>
					

			</form>
				
				
			</div>

		</div>
	</div>
	<!-- POPUP WINDOW -->

	<li><a href="{registration-link}" title="Register new user">Register</a></li>
	<li><a href="javascript:;" onclick="openStaticPopup()">Login</a></li>
</ul>
[/group]