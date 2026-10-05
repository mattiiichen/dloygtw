<html>
<meta charset="UTF-8" />

    <head>
        <title>修改文章</title>
        <script type="text/javascript" src="../javascript/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="../asset/ckeditor/ckeditor.js"></script>
		<script type="text/javascript" src="../asset/ckfinder/ckfinder.js"></script
	
    </head>
    <body>
   		 <img src="../images/banner1263x373c.png">	



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

<?php echo form_open('article/edit?id='.$editArticle['article_id'])?>

    <label for="title">文章標題</label>
    <input type="input" name="title" id="title" value="<?php echo $editArticle['title'];?>"/><br />
	<br /><br />
 	<label for="subtitle">副標題</label>
    <input type="input" name="subtitle" id="subtitle" value="<?php echo $editArticle['subheading'];?>"/><br />
	<br /><br />
	<label for="imgName">圖片名稱包含副檔名(大的：965X643 小的：400X300)</label>
    <input type="input" name="imgName" id="imgName" value="<?php echo substr_replace($editArticle['img_s'], '', -5, 1);?>"/><br />
<br /><br />
	<label for="engTitle">English title(不要太多字，DB 設34個字元)</label>
    <input type="input" name="engTitle" id="engTitle" value="<?php echo $editArticle['engTitle'];?>"/><br />
    <br /><br />
    <label for="categary">目錄</label>
  <select name="categary" id="category">
	　　  <option value="1" <?php if($editArticle['category_id']==1){echo "selected";} ?>>music</option>
		　<option value="2" <?php if($editArticle['category_id']==2){echo "selected";} ?>>movie</option>
		　<option value="3" <?php if($editArticle['category_id']==3){echo "selected";} ?>>book</option>
		　<option value="4" <?php if($editArticle['category_id']==4){echo "selected";} ?>>think</option>
		　<option value="5" <?php if($editArticle['category_id']==5){echo "selected";} ?>>programming</option>
		　<option value="6" <?php if($editArticle['category_id']==6){echo "selected";} ?>>game</option>
	</select>
  <br /><br /><br />
  <p>DateTime : (格式 - "dd-MM-yyyy HH:mm:ss")</p>
		<input type="text" name="dtpicker" data-field="datetime" data-format="yyyy-MM-dd HH:mm:ss" readonly value="<?php echo $editArticle['write_time'];?>">
	
		<div id="dtBox"></div>
         <textarea class="ckeditor" name="editor1"><?php echo $editArticle['content']; ?></textarea>
            <br />
<br />
    <input type="submit" name="submit" value="Edit Article" />

</form>

    </body>
<html>