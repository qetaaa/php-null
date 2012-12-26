<link rel="stylesheet" type="text/css" href="engine/skins/chosen/chosen.css"/>
<script type="text/javascript" src="engine/skins/chosen/chosen.js"></script>
<script type="text/javascript">
$(function(){
	$('#category').chosen({allow_single_deselect:true, no_results_text: 'Nothing was found'});
});
</script>
<div class="basecont">
   <div class="radial baseform">
	<h2 class="bcheading">Add News</h2>
	<table class="tableform"><tbody>
		<tr class="fieldtr">
			<td class="label">Subject:<span class="impot">*</span></td>
			<td><input name="title" value="{title}" maxlength="150" class="f_input" type="text"></td>
		</tr>
		[urltag]
    <tr class="fieldtr">
      <td class="label">Seo URL:</td>
      <td><input type="text" name="alt_name" value="{alt-name}" maxlength="150" class="f_input" /></td>
    </tr>
		[/urltag]
		<tr class="fieldtr">
			<td class="label">Category:<span class="impot">*</span></td>
			<td>{category}</td>
		</tr>
		<tr class="fieldtr">
			<td colspan="2">
				<div><b>Introduction part: <span class="impot">*</span></b></div>
				<div>
					[not-wysywyg]
					<div>{bbcode}</div>
					<textarea name="short_story" id="short_story" onclick="setFieldName(this.name)" style="width: 98%; height: 160px;" class="f_textarea">{short-story}</textarea>
					[/not-wysywyg]
					{shortarea}
				</div>
			</td>
		</tr>
		<tr class="fieldtr">
			<td colspan="2">
				<div><b>Details Part:</b></div>
				<div>
					[not-wysywyg]
					<textarea name="full_story" id="full_story" onclick="setFieldName(this.name)" style="width: 98%; height: 200px;" class="f_textarea">{full-story}</textarea>
					[/not-wysywyg]
					{fullarea}
				</div>
			</td>
		</tr>
		<tr class="fieldtr">
			<td class="label">Keyword for tag clouds:</td>
			<td><input name="tags" id="tags" autocomplete="off" value="{tags}" maxlength="150" class="f_input" type="text"></td>
		</tr>
		{xfields}
		[question]
    <tr>
        <td class="label">
            Question:
        </td>
        <td>
            <div>{question}</div>
        </td>
    </tr>
    <tr>
        <td class="label">
            Answer:<span class="impot">*</span>
        </td>
        <td>
            <div><input type="text" name="question_answer" class="f_input" /></div>
        </td>
    </tr>
		[/question]
		[sec_code]
		<tr class="fieldtr">
		<td class="label">
		Security Code:<span class="impot">*</span>
		</td>
		<td>
		<div>{sec_code}</div>
		<div><input name="sec_code" id="sec_code" style="width: 115px;" class="f_input" type="text"></div>
		</td>
		</tr>
		[/sec_code]
		[recaptcha]
		<tr>
		<td>&nbsp;</td>
		<td><br/>Enter two words,<br />in the picture:<br />{recaptcha}</td>
		</tr>
		[/recaptcha]
		<tr class="fieldtr">
			<td colspan="2">{admintag}</td>
		</tr>
		<tr class="fieldtr flast">
			<td colspan="2" align="center">
			<input name="add" class="fbutton" value="Submit" title="Submit" type="submit">
			<input name="nview" onclick="preview()" class="fbutton" value="Preview" title="Preview" type="submit">
			</td>
		</tr>
	</tbody></table>
</div></div>