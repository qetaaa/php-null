<div class="pheading"><h2>
	[registration]Register New Account[/registration]
	[validation]Update Your Information[/validation]
</h2></div>
<div class="baseform">
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
				<input type="text" name="name" id='name' style="width:175px; margin-right: 6px;" class="f_input" /><input class="bbcodes" style="height: 22px; font-size: 11px;" title="Check Username" onclick="CheckLogin(); return false;" type="button" value="Check Username" />
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
				<div><input type="text" name="question_answer" class="f_input" /></div>
			</td>
		</tr>
		[/question]
		[sec_code]
		<tr>
			<td class="label">
				Enter Security Code<br />in the image:<span class="impot">*</span>
			</td>
			<td>
				<div>{reg_code}</div>
				<div><input type="text" name="sec_code" style="width:115px" class="f_input" /></div>
			</td>
		</tr>
		[/sec_code]
		[recaptcha]
		<tr>
			<td class="label">
				Type the two words:<span class="impot">*</span>
			</td>
			<td>
				<div>{recaptcha}</div>
			</td>
		</tr>
		[/recaptcha]
	[/registration]
	[validation]
		<tr>
			<td class="label">Name:</td>
			<td><input type="text" name="fullname" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">Location:</td>
			<td><input type="text" name="land" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">ICQ:</td>
			<td><input type="text" name="icq" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">Avatar:</td>
			<td><input type="file" name="image" style="width:304px; height:18px" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">Information:</td>
			<td><textarea name="info" style="width: 98%;" rows="8" class="f_textarea" /></textarea></td>
		</tr>
		{xfields}
	[/validation]
	</table>
	<div class="fieldsubmit">
		<button name="submit" class="fbutton" type="submit"><span>Submit</span></button>
	</div>
</div>