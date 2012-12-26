<div class="pheading">
	<h2 class="lcol">View: <span>{usertitle}</span></h2>
	<div class="ratebox"><div class="rate">{rate}</div><span>Rating:</span></div>
	<div class="clr"></div>
</div>
<div class="basecont"><div class="dpad">
	<div class="userinfo">
		<div class="lcol">
			<div class="avatar"><img src="{foto}" alt=""/></div>
			<ul class="reset">
				<li>{email}</li>
				[not-group=5]
				<li>{pm}</li>
				[/not-group]
			</ul>
		</div>
		<div class="rcol">
			<ul>
				<li><span class="grey">Full name:</span> <b>{fullname}</b></li>
				<li><span class="grey">Group:</span> {status} [time_limit]&nbsp;Time limit: {time_limit}[/time_limit]</li>
				<li><span class="grey">ICQ:</span> <b>{icq}</b></li>
			</ul>
			<ul class="ussep">
				<li><span class="grey">News:</span> <b>{news-num}</b> [{news}][rss]<img src="{THEME}/images/rss.png" alt="rss" style="vertical-align: middle; margin-left: 5px;" />[/rss]</li>
				<li><span class="grey">Comments:</span> <b>{comm-num}</b> [{comments}]</li>
				<li><span class="grey">Registration date:</span> <b>{registration}</b></li>
				<li><span class="grey">Last visit:</span> <b>{lastdate}</b></li>
				<li><span class="grey">Status:</span> [online]<img src="{THEME}/images/online.png" style="vertical-align: middle;" title="User Online" alt="User Online" />[/online][offline]<img src="{THEME}/images/offline.png" style="vertical-align: middle;" title="User offline" alt="User offline" />[/offline]</li>
			</ul>
			<ul class="ussep">
				<li><span class="grey">Location:</span> {land}</li>
				<li><span class="grey">Information:</span> {info}</li>
			</ul>
			<span class="small">{edituser}</span>
		</div>
		<div class="clr"></div>
	</div>
</div></div>
[not-logged]
<div id="options" style="display:none;">
	<br /><br />
	<div class="pheading"><h2>Edit Profile</h2></div>
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
				<td class="label">Ignore list:</td>
				<td>{ignore-list}</td>
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
				<div>
					<span class="small" style="color:red;">
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
			<input class="fbutton" type="submit" name="submit" value="Submit" />
			<input name="submit" type="hidden" id="submit" value="submit" />
		</div>
	</div>
</div>
[/not-logged]