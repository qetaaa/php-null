<div class="static">
	<h2 class="newsTitle">Contact Us</h2>

	<div class="baseform">
		<table class="tableform">
		[not-logged]
			<tr>
				<td class="label">Name:<span class="impot">*</span></td>
				<td><input type="text" maxlength="35" name="name" class="f_input" /></td>
			</tr>
			<tr>
				<td class="label">E-Mail:<span class="impot">*</span></td>
				<td><input type="text" maxlength="35" name="email" class="f_input" /></td>
			</tr>
		[/not-logged]
			<tr>
				<td class="label">From:<span class="impot">*</span></td>
				<td>{recipient}</td>
			</tr>
			<tr>
				<td class="label">Subject:<span class="impot">*</span></td>
				<td><input type="text" maxlength="45" name="subject" class="f_input" /></td>
			</tr>
			<tr>
				<td class="label" valign="top">Message:</td>
				<td><textarea name="message" style="width: 380px; height: 160px" class="f_textarea" /></textarea></td>
			</tr>
			[sec_code]
			<tr>
				<td class="label">Enter Code:<span class="impot">*</span></td>
				<td>
					<div class="captcha">{code}</div>
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
		</table>
		<div class="fieldsubmit">
			<div class="button"><input type="submit" value="Submit" alt="Submit" /></div>
		</div>
	</div>
</div>