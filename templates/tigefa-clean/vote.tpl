<div class="bshadow">
  <div class="block bvote">
	<div class="btl">
		<h5>Poll</h5>
		<form method="post" name="vote_result" action=''>
            <input type="hidden" name="vote_action" value="results" />
			<input type="hidden" name="vote_id" value="1" />
			<input class="vresult" type="submit" onclick="doVote('results'); return false;" value="Results" title="Results" />
		</form>
	</div>
   <p class="clr"><span>{title}</span></p>
[votelist]   
	<div class="dcont">
		<form method="post" name="vote" action=''>{list}<br />
		    <input type="hidden" name="vote_action" value="vote" />
            <input type="hidden" name="vote_id" id="vote_id" value="1" />
			<input class="radial fbutton" type="submit" onclick="doVote('vote'); return false;" value="vote" /><br />
			<center><a href="" onclick="ShowAllVotes(); return false;">All Poll</a></center>
		</form>
		</div>
[/votelist]   
[voteresult]
	<div class="dcont">
		<form method="post" name="vote" action=''>{list}<br />
		    <input type="hidden" name="vote_action" value="vote" />
            <input type="hidden" name="vote_id" id="vote_id" value="1" />
			<input class="radial fbutton" type="submit" onclick="doVote('vote'); return false;" value="vote" />
		</form>
        </div>
[/voteresult]	
</div></div>