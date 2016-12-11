<html>
<meta charset="UTF-8" />

    <head>
        <title>修改Recently</title>
        <link rel="stylesheet" type="text/css" href="../stylesheet/insert.css" />
        <script type="text/javascript" src="../asset/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../asset/ckfinder/ckfinder.js"></script

    </head>
    <body>
   		 <img src="../images/banner1263x373c.png">	





<h2><?php echo $title ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('recently/edit?id='.$editRecently['new_id'])?>

    <label for="title">文章標題</label>
    <input type="input" name="title" id="title" value="<?php echo $editRecently['title'];?>"/><br />
	<br /><br />
 	
	<label for="imgName">圖片名稱包含副檔名(大的：965X643 小的：400X300)</label>
    <input type="input" name="imgName" id="imgName" value="<?php echo $editRecently['img'];?>"/><br />
<br /><br />
	<label for="youtubeurl">Youtube網址</label>
    <input type="input" name="youtubeurl" id="youtubeurl" value="<?php echo $editRecently['youtubeurl'];?>"/><br />
    <br /><br />
    <label for="categary">目錄</label>
  <select name="categary" id="category">
	　　  <option value="1" <?php if($editRecently['new_category_id']==1){echo "selected";} ?>>music</option>
		　<option value="2" <?php if($editRecently['new_category_id']==2){echo "selected";} ?>>movie</option>
		　<option value="3" <?php if($editRecently['new_category_id']==3){echo "selected";} ?>>book</option>
		　<option value="4" <?php if($editRecently['new_category_id']==4){echo "selected";} ?>>remember</option>
		　<option value="5" <?php if($editRecently['new_category_id']==5){echo "selected";} ?>>programming</option>
		　<option value="6" <?php if($editRecently['new_category_id']==6){echo "selected";} ?>>game</option>
	</select>
  <br /><br /><br />
    
<br />
    <input type="submit" name="submit" value="Edit Recently" />

</form>

    </body>
<html>