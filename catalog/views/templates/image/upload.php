<?php echo link_tag('stylesheet/admin.css'); ?>

<div id="listContent">
	<?php $this->load->view('templates/article/admin_nav'); ?>

	<div class="list list-wide admin-form">
		<h2>上傳圖片</h2>

		<?php echo validation_errors(); ?>

		<?php echo form_open('image/create')?>

		<div class="form-row">
			<label for="title">Image標題</label>
			<input type="input" name="title" id="title" value=""/>
		</div>

		<div class="form-row">
			<label for="imgName">圖片名稱包含副檔名(Small:寬230  Big:900*900之內)</label>
			<input type="input" name="imgName" id="imgName" value=""/>
		</div>

		<div class="form-row">
			<label for="date">日期時間</label>
			<input type="input" name="date" id="date" value=""/>
		</div>

		<div class="form-row">
			<label for="category">Image目錄</label>
			<select name="categary" id="category">
				<option value="1">people</option>
				<option value="2">event</option>
				<option value="3">thing</option>
			</select>
		</div>

		<div class="form-row">
			<?php echo $this->ckeditor->editor("editor1");?>
		</div>

		<div class="list-actions">
			<button type="submit" name="submit" value="新增圖片" class="admin-btn admin-btn-primary">＋ 新增圖片</button>
		</div>

		</form>
	</div>
</div>
