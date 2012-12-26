<div class="radial baseform">
	<div class="bheading" style="padding: 0 10px;">
		<h2 class="bcheading">{title}</h2>
	</div>
	<div align="center" style="margin: 10px 0;">
			<table width="90%">
				<tr><td style="font-size: 12px; color: #f22211;"><b>{question}</b></td></tr>
				<tr><td><br />{list}</td></tr>
				<tr><td align="center"><br />Total Votes: {votes}</td></tr>
				<tr><td align="center">[not-voted]<br /><input type="button" onclick="doPoll('vote'); return false;" class="bbcodes" value="Vote" />&nbsp;<input type="button" onclick="doPoll('results'); return false;" class="bbcodes" value="Results"/>[/not-voted]</td></tr>
			</table>
</div>
</div>