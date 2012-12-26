<div class="pheading"><h2>Recover Your Password</h2></div>
<div class="baseform">
	<table class="tableform">
		<tr>
			<td class="label">
				 Please enter your username or email to send password for you:
			</td>
			<td><input class="f_input" type="text" name="lostname" /></td>
		</tr>
		[sec_code]<tr>
			<td class="label">
				Enter Security Code<br />in the image:<span class="impot">*</span>
			</td>
			<td>
				<div>{code}</div>
				<div><input class="f_input" style="width:115px" maxlength="45" name="sec_code" size="14" /></div>
			</td>
		</tr>[/sec_code]
		[recaptcha]<tr>
			<td class="label">
				Enter two words,<br />in the picture:<span class="impot">*</span>
			</td>
			<td>
				<div>{recaptcha}</div>
			</td>
		</tr>[/recaptcha]
	</table>
	<div class="fieldsubmit">
		<button name="submit" class="fbutton" type="submit"><span>Submit</span></button>
	</div>
</div>