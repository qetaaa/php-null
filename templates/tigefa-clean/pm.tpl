<div class="basecont" style="margin-bottom: 10px;">
	<h2 class="heading">PM Lists</h2>
    </div>
       <div class="radial infoblock">
	<div align="center">[inbox]Inbox[/inbox] | [outbox]Outbox[/outbox] | [new_pm]Send New PM[/new_pm]</div>
  </div>
 [pmlist]
 <div class="basecont">
{pmlist}
</div>
[/pmlist]
[newpm]
<div class="radial baseform">
	<h2 class="bcheading">Send New PM</h2>
	<table class="tableform">
		 <tr>
			<td class="label">
			Send to:
			</td>
			<td><input type="text" name="name" value="{author}" class="f_input" /></td>
		</tr>

		<tr>
			<td class="label">
			Subject:<span class="impot">*</span>
			</td>
			<td><input type="text" name="subj" value="{subj}" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">
			Message:<span class="impot">*</span>
			</td>
			<td class="editorcomm"><div>{editor}</div><br />
			<div class="checkbox"><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">Save pm to Outbox</label></div>
			</td>
		</tr>
		[sec_code]
		<tr class="fieldtr">
		<td class="label">
		Security Code:<span class="impot">*</span>
		</td>
		<td>
		<div>{sec_code}</div>
		<div><input maxlength="45" name="sec_code" style="width: 115px;" class="f_input" type="text"></div>
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
    	<div class="fieldsubmit">
		<input name="add" class="fbutton" value="submit" title="submit" type="submit" />
		<input type="button" class="fbutton" onclick="dlePMPreview()" title="preview" value="preview" />

</div></div>
[/newpm]
[readpm]
<div class="radial bcomment">
	<div class="dcomtop">
		<div class="lcol avatar"><img src="(foto)" alt="avatar"/></div>
		<div class="rcol cominf">
			[reply]<img class="rcol" src="{THEME}/dleimages/quote.png" alt="Quote" title="Quote" />[/reply]
			<h5>{author}</h5>
			<ul class="reset">
                	<li>{date}</li>
			<li>ICQ: {icq}</li>
			</ul>
		</div>
		<div class="clr"></div>
	</div>
	<div class="dcont">
		<h3 style="margin-bottom: 0.4em;">{subj}</h3>
         {text}
	<div class="clr"></div>
	</div>
</div>
[/readpm]