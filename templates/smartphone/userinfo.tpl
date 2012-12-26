<div class="title"><strong>View: {usertitle}</strong></div>
<div class="panel">
    <div class="news">Full name: {fullname}
                              <br />Registration date: {registration}
                              <br />Last visit: {lastdate}
                              <br />Group: <font color="red">{status}</font>[time_limit] Time limit: {time_limit}[/time_limit]
                              <br /><br />Location: {land}
                              <br />ICQ: {icq}
                              <br />Information:<br />{info}<br /><br />News: {news-num}<br />[ {news} ] [rss]<img src="{THEME}/css/rss_icon.gif" border="0" />[/rss]
                              <br /><br />Comments: {comm-num}<br />[ {comments} ]<br /><br />[ {email} ]<br />[ {pm} ]<br />{edituser}</div>
</div>



[not-logged]
<div id="options" style="display:none;">
<div class="title"><strong>Edit Profile</strong></div>
<div class="post"> 
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="120" height="25">E-Mail:</td>
                              <td ><input type="text" name="email" value="{editmail}" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>{hidemail}</td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="25">Name:</td>
                              <td><input type="text" name="fullname" value="{fullname}" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25"><nobr>Location:</nobr></td>
                              <td><input type="text" name="land" value="{land}" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">ICQ:</td>
                              <td><input type="text" name="icq" value="{icq}" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="25">Current Password:</td>
                              <td><input type="password" name="altpass" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">New Password:</td>
                              <td><input type="password" name="password1" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">Repeat new password:</td>
                              <td><input type="password" name="password2" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                          </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td height="25">Blocking IP:<br /><textarea name="allowed_ip" style="width:97%; height:70px" class="f_textarea" />{allowed-ip}</textarea><br /> Your IP: <strong>{ip}</strong><br /><br /><font style="color:red;font-size:10px;">* Attention! Be vigilant to change this setting. Access to your account will be available only from the IP address or subnet, which you specify. <br /><br />You can specify multiple IP-addresses, one address per line.<br />Example: 192.48.25.71 or 129.42.*.*
                            </tr>
                          </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="25">Avatar:</td>
                              <td><input type="file" name="image" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="checkbox" name="del_foto" value="yes" /> Delete Avatar?</td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                          </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td height="25">Information:<br /><textarea name="info" style="width:97%; height:70px" class="f_textarea" />{editinfo}</textarea></td>
                            </tr>
                            <tr>
                              <td height="25">Signature:<br /><textarea name="signature" style="width:97%; height:70px" class="f_textarea" />{editsignature}</textarea></td>
                            </tr>
                          </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
{xfields}
                            <tr>
                              <td colspan="2" height="25"><div style="padding-top:2px; padding-left:0px;">
                              <input type="submit" value=" Submit " /><br />
                              <input name="submit" type="hidden" id="submit" value="submit" />
                              </div></td>
                            </tr>
                          </table>
</div>
</div>
[/not-logged]