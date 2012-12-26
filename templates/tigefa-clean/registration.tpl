<form  method="post" name="registration" onsubmit="if (!check_reg_daten()) {return false;};" id="registration" action="http://coolsmart.ru/index.php?do=register">
<div class="radial baseform">
	<h2 class="bcheading">[registration]Register New Account[/registration][validation]Update Your Information[/validation]</h2>
	<table class="tableform">
		<tr>
          <td colspan="2">
	[registration]
	<b>Welcome to dleviet.com</b><br />
	Register on our website allows you to make it a full participant.
	You will be able to add news to site, leave your comments, see hidden text, and more.
	<br />In case of problems with the registration, contact <a href="/index.php?do=feedback">Administrator</a> of website.
	[/registration]
	[validation]
	<b>Complete Your Information,</b><br />
	Account has been registered on our site,
	however, Information about you is incomplete, so fill in additional fields in it's profile.
	[/validation]
	</td>
	</tr>
	[registration]
	<tr>
	<td class="label">
        Username:<span class="impot">*</span>
	</td>
	<td>
	<input type="text" name="name" id='name' style="width:175px; margin-right: 6px;" class="f_input" />
	<input class="bbcodes" style="height: 21px;" title="Check Username" onclick="CheckLogin(); return false;" type="button" value="Check Username" />
	<div id='result-registration'></div> 
	</td>
	</tr>
	<tr>
        <td class="label">
	Password:<span class="impot">*</span>
	</td>
	<td><input type="password" name="password1" class="f_input" /></td>
	</tr>
	<tr>
	<td class="label">
	Password again:<span class="impot">*</span>
        </td>
	<td><input type="password" name="password2" class="f_input" /></td>
	</tr>
	<tr>
	<td class="label">E-Mail:<span class="impot">*</span></td>
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
	<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
	</td>
	</tr>
	[/question]
	[sec_code]
	<tr>
	<td class="label">Security Code:<span class="impot">*</span></td>
	<td>
	<div>{reg_code}</div>
	<div><input name="sec_code" style="width: 115px;" class="f_input" type="text"></div>
	</td>
		</tr>
	[/sec_code]
	[recaptcha]
	<tr>
	<td>&nbsp;</td>
	<td><br />Type the two words:<br />{recaptcha}</td>
	</tr>
  	[/recaptcha]
	[/registration]
	[validation]
	<tr>
	<td class="label">Full name:</td>
	<td><input name="fullname" class="f_input" type="text"></td>
	</tr>
	<tr class="fieldtr">
	<td class="label">Location:</td>
	<td><input name="land" class="f_input" type="text"></td>
	</tr>
	<tr>
	<td class="label">ICQ:</td>
	<td><input name="icq" class="f_input" type="text"></td>
	</tr>
	<tr class="fieldtr">
	<td class="label">Avatar:</td>
	<td><input name="image" style="height: 22px;" class="f_input" type="file" size="50"></td>
	</tr>
	<tr>
	<td class="label">Information:</td>
	<td><textarea name="info" style="width: 98%; height: 70px;" class="f_textarea"></textarea></td>
	</tr>
	{xfields}
	[/validation]
	</table>
	<div class="fieldsubmit">
		<input name="submit" class="fbutton" value="Submit" title="Submit" type="submit" />
	</div>
</div>