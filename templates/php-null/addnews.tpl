<link rel="stylesheet" type="text/css" href="engine/skins/chosen/chosen.css"/>
<script type="text/javascript" src="engine/skins/chosen/chosen.js"></script>
<script type="text/javascript">
$(function(){
	$('#category').chosen({allow_single_deselect:true, no_results_text: 'Nothing was found'});
});
</script>
<div class="static">
	<h2 class="newsTitle">Add News</h2>

	<div class="baseform">
		<table class="tableform">
			<tr>
				<td class="label">
					Subject:<span class="impot">*</span>
				</td>
				<td><input type="text" name="title" value="{title}" maxlength="150" class="f_input" /></td>
			</tr>
		[urltag]
			<tr>
				<td class="label">Seo URL:</td>
				<td><input type="text" name="alt_name" value="{alt-name}" maxlength="150" class="f_input" /></td>
			</tr>
		[/urltag]
			<tr>
				<td class="label">
					Category:<span class="impot">*</span>
				</td>
				<td>{category}</td>
			</tr>
			<tr>
				<td colspan="2">
					<b>Introduction part: <span class="impot">*</span></b> (Necessarily)
					<div>
						[not-wysywyg]
						<div>{bbcode}</div>
						<textarea name="short_story" id="short_story" onclick=setFieldName(this.name) style="width:98%;" rows="10" class="f_textarea" >{short-story}</textarea>
						[/not-wysywyg]
						{shortarea}
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<b>Details Part:</b> (optional)
					<div>
						[not-wysywyg]
						<div>{bbcode}</div>
						<textarea name="full_story" id="full_story" onclick=setFieldName(this.name) style="width:98%;" rows="20" class="f_textarea" >{full-story}</textarea>
						[/not-wysywyg]
						{fullarea}
					</div>
				</td>
			</tr>
			<tr>
				<td class="label">Tags Clouds:</td>
				<td><input type="text" name="tags" id="tags" value="{tags}" maxlength="150"  class="f_input" autocomplete="off" /></td>
			</tr>
			{xfields}
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
					Type the two words:<span class="impot">*</span>
				</td>
				<td>
					<div>{recaptcha}</div>
				</td>
			</tr>
			[/recaptcha]
			<tr>
				<td id="admintag" colspan="2">{admintag}</td>
			</tr>
		</table>
		<div class="fieldsubmit">
			<div class="button" style="float:left;"><input name="add" type="submit" value="Submit" alt="Submit" /></div>
			<div class="button" style="float:left;"><input name="nview" type="submit" value="Preview" alt="Preview" onclick="preview()" /></div>
		</div>
	</div>
</div>