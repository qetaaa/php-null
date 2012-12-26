<div class="radial baseform">
	<h2 class="bcheading">Recover Your Password</h2>
	<table class="tableform">
		<tr>
			<td class="label">
              Your username or email to send password for you:
			</td>
			<td><input class="f_input" type="text" name="lostname" /></td>
		</tr>
		[sec_code]
		<tr>
			<td class="label">
		Security Code:<span class="impot">*</span>
			</td>
             <td>
			   <div>{code}</div>
               <div><input class="f_input" style="width:115px" maxlength="45" name="sec_code" size="14" /></div>
			</td>
			[/sec_code]
[recaptcha]
<tr>
<td colspan="2" height="25"><strong>Enter two words,<br />in the picture:</strong></td>
</tr>
<tr>
<td colspan="2" height="25">{recaptcha}</td>
</tr>
[/recaptcha]
		</tr>
	</table>
	<div class="fieldsubmit">
		<input name="submit" class="fbutton" value="Submit" title="Submit" type="submit" />
    </div>
</div>