<div class="panel">
    [registration]Register New Account[/registration][validation]Update Your Information[/validation]
</div> 
<div class="post">
[registration]
<strong>Welcome to dleviet.com</strong><br /><br />Registering on our site will allow you to be a member. You can add news on the site, send comments, view hidden text, and more...<br /><br />In case of problems with registration, please contact the site administrator.<br /><br />
[/registration]

[validation]
<strong>Complete Your Information</strong>,<br /><br />Your account has been registered on our site, but information about you is incomplete, so fill in additional fields in your profile.<br /><br />
[/validation]
</div>
<div class="panel">&nbsp;</div>
<table width="100%">
[registration]
                            <tr>
                              <td height="25" width="150">Username:</td>
                              <td><input type="text" name="name" id='name' class="f_input" /><br /><input style="height:18px; font-family:tahoma; font-size:11px; border:1px solid #DFDFDF; background: #FFFFFF" title="Check Username" onclick="CheckLogin(); return false;" type="button" value="Check Username" /><div id='result-registration'></div></td>
                            </tr>
                            <tr>
                              <td height="25">Password:</td>
                              <td><input type="password" name="password1" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">Password again:</td>
                              <td><input type="password" name="password2" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">E-Mail:</td>
                              <td><input type="text" name="email" class="f_input" /></td>
                            </tr>
		[question]
		<tr>
			<td class="label">
				Question:
			</td>
			<td>
				<div>{question}</div>
			</td>
		</tr>
		<tr>
			<td class="label">
				Answer:<span class="impot">*</span>
			</td>
			<td>
				<div><input type="text" name="question_answer" class="f_input" /></div>
			</td>
		</tr>
		[/question]
[sec_code]
                            <tr>
                              <td colspan="2" height="25"><strong>Confirm Security Code</strong></td>
                            </tr>
                            <tr>
                              <td height="25">Security Code:</td>
                              <td>{reg_code}</td>
                            </tr>
                            <tr>
                              <td height="25">Enter Code:</td>
                              <td><input type="text" name="sec_code" style="width:115px" class="f_input" /></td>
                            </tr>
[/sec_code]
[recaptcha]
                      <tr>
                        <td colspan="2" height="25"><strong>Type the two words:</strong></td>
                      </tr>
                      <tr>
                        <td colspan="2" height="25">{recaptcha}</td>
                      </tr>
[/recaptcha]
[/registration]
[validation]
                            <tr>
                              <td height="25">Name:</td>
                              <td><input type="text" name="fullname" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25"><nobr>Location:</nobr></td>
                              <td><input type="text" name="land" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">ICQ:</td>
                              <td><input type="text" name="icq" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">Avatar:</td>
                              <td><input type="file" name="image" style="width:304px; height:18px" class="f_input" /></td>
                            </tr>
                            <tr>
                              <td height="25">Information:</td>
                              <td><textarea name="info" style="width:98%; height:70px" /></textarea></td>
                            </tr>
{xfields}
[/validation]
</div>
                            <tr>
                              <td height="25">&nbsp;</td>
                              <td><div style="padding-top:2px; padding-left:0px;">
                              <input type="submit" value=" Submit "></div>
                              </td>
                            </tr>
                          </table>