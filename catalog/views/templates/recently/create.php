





<h2><?php echo $title ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('recently/create') ?>

    <label for="title">標題</label>
    <input type="input" name="title" id="title"/><br /><br /><br />
   
	<label for="imgName">圖片名稱(音樂150x150，其他高度不要超過168px)</label>
    <input type="input" name="imgName" id="imgName"/><br /><br /><br />
    
  	<label for="youtube">Youtube網址</label>
    <input type="input" name="youtube" id="youtube"/><br /><br /><br />
    
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
  
    <input type="submit" name="submit" value="Create New Recent" />

</form>
