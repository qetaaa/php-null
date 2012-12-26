<div class="static">
	<h2 class="newsTitle">Recover Your Password</h2>
	
	<div class="baseform">
		<table class="tableform">
			<tr>
				<td class="label"> Please enter your username or email to send password for you:</td>
				<td><input class="f_input" type="text" name="lostname" /></td>
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
			<div class="button"><input name="submit" type="submit" value="Submit" alt="Submit" /></div>
		</div>
	</div>
</div>