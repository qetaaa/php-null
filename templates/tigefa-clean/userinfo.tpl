<div class="basecont">
	<h2 class="heading">Hi, <span>{usertitle}</span> [ <a href="javascript:ShowOrHide('options')">Edit profile</a> ]</h2>
      <div class="usercolomn">
		<div class="lcol"><img src="{foto}" alt=""/></div>
		<div class="rcol">
			<b>Full name:</b> {fullname}<br />
			<b>Group:</b> {status} [time_limit] in the group to: {time_limit}[/time_limit]				
		</div>
		<div class="clr"></div>
    </div>
	<div class="userinfo">
	<div class="uirow">
	<div class="lcol">
	<ul class="reset">
	<li class="relhead"><b>General:</b></li>
	<li><span>Registration date:</span> {registration}</li>
	<li><span>Last visit:</span> {lastdate}</li>
	[not-group=5]<li>{pm}</li>[/not-group]
	</ul></div>
	<div class="lcol"><ul class="reset">
	<li class="relhead"><b>Statistics:</b></li>
	<li><span>News</span> {news-num}<br/>
        {news} [rss]<img src="{THEME}/images/rsshead.png" alt="rss" />[/rss]</li>
	<li><span>Comments:</span> {comm-num}<br/>
	{comments}
	</li>
	</ul>
	</div>
	<div class="clr"></div>
	</div>
        <div class="uirow2">
	<ul class="reset">
	<li class="relhead"><b>Information:</b></li>
	<li><span>About me:</span> {info}</li>
	<li><span>Location:</span> {land}</li>
	<li><span>ICQ:</span> {icq}</li>
        </ul>
	</div>
	</div>
</div>
[not-logged]
<div id="options" style="display:none;">
	<div class="radial baseform">
	<h3 class="bcheading">Edit Profile</h3>
		<table class="tableform">
		<tr>
                <td class="label">Full name:</td>
		<td><input type="text" name="fullname" value="{fullname}" class="f_input" /></td>
		</tr>
		<tr>
		<td class="label">E-mail:</td>
		<td><input type="text" name="email" value="{editmail}" class="f_input" /><br />
		<div class="checkbox">{hidemail} Hide email</div>
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
		<td class="label" valign="top">Blocking by IP:<br/> Your IP: {ip}</td>
		<td>
		<div><textarea name="allowed_ip" style="width:98%;" rows="5" class="f_textarea"></textarea></div>
		<div>
		<span class="small" style="color:red;">
		* Attention! Be careful when changing this setting.</span>
		Access to his account will be available only from the IP-addresses or subnets that you specify.
		You can specify multiple IP addresses, one address per line.
		<br/>
		Example: 192.48.25.71 or 129.42.*.*
		</div>
		</td>
		</tr>
		<tr>
		<td class="label">Avatar:</td>
		<td>
		<input type="file" name="image" class="f_input" /><br />
		<div class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes"/><label for="del_foto">Delete Avatar ?</label></div>
		</td>
		</tr>
		<tr>
		<td class="label">About Me:</td>
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
[/not-logged] 
</div>