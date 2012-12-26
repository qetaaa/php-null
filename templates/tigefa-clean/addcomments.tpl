<div class="radial baseform">
	<h3 class="bcheading">{title}</h3>
	<table class="tableform">
				[not-logged]
		<tr class="fieldtr">
			<td class="label">
			Name:<span class="impot">*</span>
			</td>
			<td><input type="text" name="name" id="name" class="f_input" /></td>
		</tr>
		<tr class="fieldtr">
			<td class="label">
			E-Mail:<span class="impot">*</span>
			</td>
			<td><input type="text" name="mail" id="mail" class="f_input" /></td>
		</tr>
		[/not-logged]
		<tr>
			<td class="label">
                Comment:
             </td>
			 <td class="editorcomm"><div>{editor}</div></td>
		</tr>
		[question]
    <tr>
        <td class="label">
            Security question:
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
	<tr class="fieldtr">
	<td class="label">
	Security code: <span class="impot">*</span>
	</td>
	<td>
	<div>{sec_code}</div>
	<div><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></div>
	</td>
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
	</table>
   <div class="fieldsubmit"><input name="submit" class="fbutton" value="Submit" title="Submit" type="submit" /></div>
</div>