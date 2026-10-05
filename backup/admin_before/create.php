

<link rel="stylesheet" type="text/css" href="../stylesheet/DateTimePicker.css" />	

<script type="text/javascript" src="../javascript/datetime/DateTimePicker.js"></script>

<script type="text/javascript">
		
			$(document).ready(function()
			{
				$("#dtBox").DateTimePicker({
				
					secondsInterval: 5

				});
			});
		
</script>

<h2><?php echo $title ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('article/create') ?>

    <label for="title">文章標題</label>
    <input type="input" name="title" id="title"/><br /><br /><br />
    <label for="subtitle">副標題</label>
    <input type="input" name="subtitle" id="subtitle"/><br /><br /><br />
	<label for="imgName">圖片名稱</label>
    <input type="input" name="imgName" id="imgName"/><br /><br /><br />
  	<label for="engTitle">English title(不要太多字，DB 設34個字元)</label>
    <input type="input" name="engTitle" id="engTitle"/><br /><br /><br />
  	<label for="categary">目錄</label>
 
	 <select name="categary" id="category">
	　<option value="1">music</option>
	　<option value="2">movie</option>
	　<option value="3">book</option>
	　<option value="4">think</option>
	　<option value="5">programming</option>
	　<option value="6">game</option>
	</select>
	<br /><br /><br />
	<p>DateTime : (格式 - "dd-MM-yyyy HH:mm:ss")</p>
		<input type="text" name="dtpicker" data-field="datetime" data-format="yyyy-MM-dd HH:mm:ss" readonly >
	
		<div id="dtBox"></div>
<textarea class="ckeditor" name="editor1"></textarea>
            <br />
<br />
    <input type="submit" name="submit" value="Create new article" />

</form>
