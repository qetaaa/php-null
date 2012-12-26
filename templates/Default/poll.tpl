<div class="dpad infoblock radial">
	<div align="center">
		<div class="pollvotelist">
			<h1 class="heading">{question}</h1>
			{list}
		</div>
	</div>
	<br />
	[voted]<div align="center">Total Votes: {votes}</div>[/voted]
	[not-voted]
	<div align="center">
		<button class="fbutton" type="submit" onclick="doPoll('vote'); return false;" ><span>Vote</span></button>
		<button class="fbutton" type="submit" onclick="doPoll('results'); return false;"><span>Results</span></button>
	</div>
	[/not-voted]
</div>