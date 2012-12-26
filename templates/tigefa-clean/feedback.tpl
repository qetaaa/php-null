<div class="radial baseform">
   <h2 class="bcheading">Contact Us</h2>
	<table class="tableform">
	[not-logged]
		<tr class="fieldtr">
			<td class="label">
			Name:<span class="impot">*</span>
			</td>
			<td><input type="text" maxlength="35" name="name" class="f_input" /></td>
		</tr>
		<tr class="fieldtr">
			<td class="label">
			E-Mail:<span class="impot">*</span>
			</td>
			<td><input type="text" maxlength="35" name="email" class="f_input" /></td>
		</tr>
	[/not-logged]
		<tr>
			<td class="label">
			Send to:<span class="impot">*</span>
			</td>
			<td>{recipient}</td>
		</tr>
		<tr>
			<td class="label">
			Subject:<span class="impot">*</span>
			</td>
			<td><input type="text" maxlength="45" name="subject" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label" valign="top">
			Message:
			</td>
			<td><textarea name="message" style="width: 380px; height: 160px" class="f_textarea"></textarea></td>
		</tr>
		[sec_code]
		<tr>
			<td class="label">
			Enter Code:<span class="impot">*</span>
			</td>
			<td>
			<div>{code}></div>
			<div><input type="text" maxlength="45" name="sec_code" style="width:115px" class="f_input" /></div>
			</td>
		</tr>
		[/sec_code]
		[recaptcha]
		<tr>
		<td>&nbsp;</td>
		<td><br />Type the two words:<br />{recaptcha}</td>
		</tr>
		[/recaptcha]
	</table>
	<div class="fieldsubmit"><input name="send_btn" class="fbutton" value="Submit" title="Submit" type="submit" /></div>
</div>