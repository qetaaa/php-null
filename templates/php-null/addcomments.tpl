<div class="button" style="width:200px;margin-left:240px;"><a class="commentAdd" href="javascript:ShowOrHide('addcform')">Add Comments</a></div>


<div id="addcform" class="baseform" style="margin-top:10px;border-top:1px solid #D6D6D6;background:none;display:[not-aviable=comments]none[/not-aviable][aviable=comments]block[/aviable];">

    <table class="tableform">
      [not-logged]
      <tr>
        <td class="label">Name:<span class="impot">*</span></td>
        <td><input type="text" name="name" id="name" class="f_input" /></td>
      </tr>
      <tr>
        <td class="label">E-Mail:<span class="impot">*</span></td>
        <td><input type="text" name="mail" id="mail" class="f_input" /></td>
      </tr>
      [/not-logged]
      <tr>
        <td class="label">Comments:</td>
        <td class="editorcomm">{editor}</td>
      </tr>
      [sec_code]
			<tr>
				<td class="label">Enter Code:<span class="impot">*</span></td>
				<td>
					<div class="captcha">{sec_code}</div>
					<div><input type="text" maxlength="45" name="sec_code" style="width:115px" class="sec_input" /></div>
				</td>
			</tr>
      [/sec_code]
      [recaptcha]
      <tr>
        <td class="label">Type the two words: <span class="impot">*</span></td>
        <td>
          <div>{recaptcha}</div>
        </td>
      </tr>
      [/recaptcha]
    </table>
    <div class="fieldsubmit">
			<div class="button"><input type="submit" value="[not-aviable=comments]Add[/not-aviable][aviable=comments]EDIT[/aviable]" alt="[not-aviable=comments]Add[/not-aviable][aviable=comments]EDIT[/aviable]" /></div>
    </div>
</div>
<center><script type="text/javascript" src="http://adhitzads.com/460000"></script></center>