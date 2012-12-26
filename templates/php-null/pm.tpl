<div class="static">
	<h2 class="newsTitle">[pmlist]PM Lists[/pmlist][newpm]New Message[/newpm][readpm]and messages[/readpm]</h2>

	<div class="baseform">
		<div class="pmMenu">[inbox]Inbox[/inbox] | [outbox]Outbox[/outbox] | [new_pm]Send New PM[/new_pm]</div>
	</div>

[pmlist]<div class="pmList">{pmlist}</div>[/pmlist]

[newpm]
	<div class="baseform" style="background:none;padding-top:5px;">
		<table class="tableform">
			<tr>
				<td class="label">
					From:
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
				<td class="editorcomm">
				{editor}<br />
				<div class="checkbox"><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">Save pm to outbox</label></div>
				</td>
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
				<td class="label">
					Type the two words: <span class="impot">*</span>
				</td>
				<td>
					<div>{recaptcha}</div>
				</td>
			</tr>
			[/recaptcha]
		</table>
		<div class="fieldsubmit">
			<div class="button" style="float:left;"><input name="add" type="submit" value="Submit" alt="Submit" /></div>
			<div class="button" style="float:left;"><input type="submit" value="Preview" alt="Preview" onclick="dlePMPreview()" /></div>
		</div>
	</div>
[/newpm]

[readpm]
<div class="comment">
	<div class="authorFoto"><img src="{foto}" alt="Avatar of {login}"/></div>
	<div class="commentContent">
		<ul class="commentInfo">
			<li>{author}</li>
			<li>{date}</li>
			<li>Status <b>{group-name}</b></li>
			<li>Archives: <b>{news-num}</b></li>
			<li>Comments: <b>{comm-num}</b></li>
		</ul>
		
		<div class="commentText">
			<b>[reply]{subj}[/reply]</b>
			<div>{text}</div>
			[signature]<br clear="all" />--------------------<div class="signature">{signature}</div>[/signature]
		</div>
		<div class="comOptions">[del]DELETE[/del][reply]Reply[/reply]</div>
	</div>
</div>
[/readpm]
</div>