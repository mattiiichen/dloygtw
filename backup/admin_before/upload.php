




 	<a href="../article/getlist">Article List</a><br>
    <a href="../recently/get_recentlist">Do something New</a><br>
    <a href="../image/">Upload Image</a>

<h2>上傳圖片</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('image/create')?>



    <label for="title">Image標題</label>
    <input type="input" name="title" id="title" value=""/><br />
	<br /><br />
 	
	<label for="imgName">圖片名稱包含副檔名(Small:寬230  Big:900*900之內)</label>
    <input type="input" name="imgName" id="imgName" value=""/><br />
<br /><br />


	<label for="date">日期時間</label>
    <input type="input" name="date"  id="date" value=""/>
    <br /><br /><br />
    <label for="categary">Image目錄</label>
  <select name="categary" id="category">
	　　  <option value="1">people</option>
		　<option value="2">event</option>
		　<option value="3">thing</option>
		　
	</select>
  <br /><br /><br />
    <?php echo $this->ckeditor->editor("editor1");?>
<br />
    <input type="submit" name="submit" value="新增圖片" />



</form>

