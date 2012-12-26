<div id="votes" class="block" style="margin-bottom: 6px;">
	<div class="dtop">&nbsp;</div>
	<div class="dcont">
		<div class="btl">
			<h4>Poll</h4>
			<form method="post" name="vote_result" action=''>
				<input type="hidden" name="vote_action" value="results" />
				<input type="hidden" name="vote_id" value="{vote_id}" />
				<button class="vresult" type="submit" onclick="ShowAllVotes(); return false;" ><span>All Poll</span></button>
			</form>
		</div>
		<p class="vtitle"><b>{title}</b></p>
		<div class="dpad">
			[votelist]<form method="post" name="vote" action=''>[/votelist]
			{list}
			<br />
			[voteresult]<div><small>Total Votes: {votes}</small></div>[/voteresult]
			[votelist]
				<input type="hidden" name="vote_action" value="vote" />
				<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}" />
				<button class="fbutton" type="submit" onclick="doVote('vote'); return false;" ><span>Vote</span></button>&nbsp;<button class="fbutton" type="button" onclick="doVote('results'); return false;" ><span>Results</span></button>
			</form>
			[/votelist]
		</div>
	</div>
	<div class="dbtm">&nbsp;</div>
</div>