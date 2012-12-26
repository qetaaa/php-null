[pmlist]
<div class="pheading"><h2>PM Lists</h2></div>
[/pmlist]
[newpm]
<div class="pheading"><h2>New Message</h2></div>
[/newpm]
[readpm]
<div class="pheading"><h2>and messages</h2></div>
[/readpm]
<div class="basecont">
<div class="dpad">
<div class="pm_status">
	<div class="pm_status_head">PM Folder</div>
	<div class="pm_status_content">Personal messages folder are filled with:
{pm-progress-bar}
{proc-pm-limit}% at the limit ({pm-limit} message)
	</div>
</div>
<div style="padding-top:10px;">[inbox]Inbox[/inbox]<br /><br />
[outbox]Outbox[/outbox]<br /><br />
[new_pm]Send New PM[/new_pm]</div>
</div><br />
<div class="clr"></div>
<br />
[pmlist]
<div class="dpad">{pmlist}</div>
[/pmlist]
[newpm]
<div class="baseform">
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
			<td class="label">
				Security Code:<span class="impot">*</span>
			</td>
			<td>
				<div>{sec_code}</div>
				<div><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></div>
			</td>
		</tr>
		[/sec_code]
		[recaptcha]
		<tr>
			<td class="label">
				Type the two words:<span class="impot">*</span>
			</td>
			<td>
				<div>{recaptcha}</div>
			</td>
		</tr>
		[/recaptcha]
	</table>
	<div class="fieldsubmit">
		<button type="submit" name="add" class="fbutton"><span>Submit</span></button>
		<input type="button" class="fbutton" onclick="dlePMPreview()" title="Preview" value="Preview" />
	</div>	
</div>
[/newpm]
[readpm]
<div class="bcomment">
	<div class="dtop">
		<div class="lcol"><span><img src="{foto}" alt=""/></span></div>
		<div class="rcol">
			<span class="reply">[reply]<b>Reply</b>[/reply]</span>
			<ul class="reset">
				<li><h4>{author}</h4></li>
				<li>{date}</li>
			</ul>
			<ul class="cmsep reset">
				<li>Group: {group-name}</li>
				<li>ICQ: {icq}</li>
			</ul>
		</div>
		<div class="clr"></div>
	</div>
	<div class="cominfo"><div class="dpad">
		<div class="comedit">
			<ul class="reset">
				<li>[complaint]Complaint[/complaint]</li>
				<li>[ignore]Ignore[/ignore]</li>
				<li>[del]DELETE[/del]</li>
			</ul>
		</div>
		<ul class="cominfo reset">
			<li>Register: {registration}</li>
			<li>Comments: {comm-num}</li>
			<li>News: {news-num}</li>
		</ul>
	</div>
	<span class="thide">^</span>
	</div>
	<div class="dcont">
		<h3 style="margin-bottom: 0.4em;">[reply]{subj}[/reply]</h3>
		{text}
		[signature]<br clear="all" /><div class="signature">--------------------</div><div class="slink">{signature}</div>[/signature]
		<div class="clr"></div>
	</div>
</div>
[/readpm]
</div>