<div class="news">
	<h2 class="newsTitle">{question}</h2>
	<div class="baseform">
		{list}
		[voted]<div align="center">Total Votes: <b>{votes}</b></div>[/voted]

		[not-voted]
		<div class="fieldsubmit">
			<div class="button" style="float:left;"><input type="submit" onclick="doPoll('vote'); return false;" value="Vote" alt="Vote" /></div>
			<div class="button" style="float:left;"><input type="submit" onclick="doPoll('results'); return false;" value="Results" alt="Results" /></div>
		</div>
		[/not-voted]
	</div>
</div>