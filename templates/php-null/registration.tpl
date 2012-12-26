<div class="static">
	<h2 class="newsTitle">[registration]Register New Account[/registration][validation]Update Your Information[/validation]</h2>

		
	<div class="baseform">
		<div class="registrationRules">
			[registration]
				<p><b>Welcome to dleviet.com</b>
				Register on our website allows you to make it a full participant.
				You will be able to add news to site, leave your comments, see hidden text, and more.</p>
				<p>In case of problems with the registration, contact <a href="/index.php?do=feedback">Administrator</a> of website.</p>
			[/registration]
			[validation]
					<b>Complete Your Information,</b><br />
					 Account has been registered on our site,
					however, Information about you is incomplete, so fill in additional fields in it's profile.
			[/validation]
		</div>
	
		<table class="tableform">
		[registration]
			<tr>
				<td class="label">Username:<span class="impot">*</span></td>
				<td>
					<input style="float: left;" type="text" name="name" id='name' style="width:175px; margin-right: 6px;" class="f_input" /><input class="bbcodes" style="float: left;margin-left:5px;" title="Check Username" onclick="CheckLogin(); return false;" type="button" value="Check Username" />
					<br /><br /><div id='result-registration'></div>
				</td>
			</tr>
			<tr>
				<td class="label">Password:<span class="impot">*</span></td>
				<td><input type="password" name="password1" class="f_input" /></td>
			</tr>
			<tr>
				<td class="label">Password again:<span class="impot">*</span></td>
				<td><input type="password" name="password2" class="f_input" /></td>
			</tr>
			<tr>
				<td class="label">E-Mail:<span class="impot">*</span></td>
				<td><input type="text" name="email" class="f_input" /></td>
			</tr>
			[sec_code]
			<tr>
				<td class="label">Enter Code:<span class="impot">*</span></td>
				<td>
					<div class="captcha">{reg_code}</div>
					<div><input type="text" maxlength="45" name="sec_code" style="width:115px" class="sec_input" /></div>
				</td>
			</tr>
			[/sec_code]
			[recaptcha]
			<tr>
				<td class="label">Type the two words: <span class="impot">*</span></td>
				<td><div>{recaptcha}</div></td>
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
			<div class="button"><input name="submit" type="submit" value="Submit" alt="Submit" /></div>
		</div>
	</div>
</div>