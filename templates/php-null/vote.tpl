<div class="voteTitle">{title}</div>

<div class="voteContent">
	[votelist]<form method="post" name="vote" action=''>[/votelist]
	{list}
	[voteresult]<div class="votesNum">Total Votes: <b>{votes}</b></div>[/voteresult]

	[votelist]
			<input type="hidden" name="vote_action" value="results" />
			<input type="hidden" name="vote_id" value="1" />
			<div class="buttonReds" style="margin-left:60px;float:left;"><input type="submit" value="Results" alt="Results" onclick="doVote('results'); return false;" /></div>
		</form>

		<form method="post" name="vote_result" action=''>
			<input type="hidden" name="vote_action" value="vote" />
			<input type="hidden" name="vote_id" id="vote_id" value="1" />
			<div class="button" style="float:left;"><input type="submit" value="Vote" alt="Vote" onclick="doVote('vote'); return false;" /></div>
		</form>
	[/votelist]
</div>