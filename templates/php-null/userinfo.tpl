<div class="static">
	<h2 class="newsTitle">View user info: {usertitle}</h2>

	<div class="baseform">
	
		<div class="user">
			<div class="userAvatar">
				<img width="100" src="{foto}" alt="Avatar of {usertitle}" />
				{rate}
			</div>
			
			<div class="userInfo">
				<ul>
					<li>Full name: <b>{fullname}</b></li>
					<li>Group: <b>{status}</b> [time_limit]&nbsp;(Time limit: {time_limit})[/time_limit]</li>
					<li>Registration date: <b>{registration}</b></li>
					<li>Last visit: <b>{lastdate}</b></li>
					<li>News: [{news}][rss]<img src="{THEME}/dleimages/rss.png" alt="rss" style="vertical-align: middle; margin-left: 5px;" />[/rss]</li>
					<li>Comments: [{comments}]</li>
				</ul>
			</div>
		</div>

		<div class="userContact">
			<div class="userColumn">
				<h3>Information:</h3>
				<ul>
					<li>Location: <b>{land}</b></li>
					<li>Information: <b>{info}</b></li>
				</ul>
			</div>
			
			<div class="userColumn">
				<h3>Contact Us:</h3>
				<ul>
					<li>ICQ: <b>{icq}</b></li>
					<li>{email}</li>
					[not-group=5]<li>{pm}</li>[/not-group]
				</ul>
			</div>
		</div>
		
		[not-logged]<p class="baseSize">{edituser}</p>[/not-logged]
	</div>
</div>


[not-logged]
<div id="options" style="display:none;">

<div class="static">
	<h2 class="newsTitle">Edit Profile</h2>

	<div class="baseform">

			<table class="tableform">
				<tr>
					<td class="label">Name:</td>
					<td><input type="text" name="fullname" value="{fullname}" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">E-Mail:</td>
					<td><input type="text" name="email" value="{editmail}" class="f_input" /><br />
					<div class="checkbox">{hidemail}</div>
					<div class="checkbox"><input type="checkbox" id="subscribe" name="subscribe" value="1" /> <label for="subscribe">Unsubscribe from the news</label></div></td>
				</tr>
				<tr>
					<td class="label">Location:</td>
					<td><input type="text" name="land" value="{land}" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">ICQ:</td>
					<td><input type="text" name="icq" value="{icq}" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">Current Password:</td>
					<td><input type="password" name="altpass" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">New Password:</td>
					<td><input type="password" name="password1" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">Repeat new password:</td>
					<td><input type="password" name="password2" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label" valign="top">Blocking IP:<br /> IP: {ip}</td>
					<td>
					<div><textarea name="allowed_ip" style="width:98%;" rows="5" class="f_textarea">{allowed-ip}</textarea></div>
					<div style="color:#C73030;">
						* Attention! Be careful when changing this setting.
						Access to his account will be available only from the IP-addresses or subnets that you specify.
						You can specify multiple IP addresses, one address per line.
						<br />
						Example: 192.48.25.71 or 129.42.*.*
					</div>
					</td>
				</tr>
				<tr>
					<td class="label">Avatar:</td>
					<td>
					<input type="file" name="image" class="f_input" /><br />
					<div class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes" /> <label for="del_foto">Delete Avatar?</label></div>
					</td>
				</tr>
				<tr>
					<td class="label">Information:</td>
					<td><textarea name="info" style="width:98%;" rows="5" class="f_textarea">{editinfo}</textarea></td>
				</tr>
				<tr>
					<td class="label">Signature:</td>
					<td><textarea name="signature" style="width:98%;" rows="5" class="f_textarea">{editsignature}</textarea></td>
				</tr>
				{xfields}
			</table>
			<div class="fieldsubmit">
				<div class="button"><input type="submit" name="submit" value="Submit" alt="Submit" /></div>
				<input name="submit" type="hidden" id="submit" value="submit" />
			</div>
	</div>
</div>

</div>
[/not-logged]