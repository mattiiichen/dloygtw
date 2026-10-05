<?php echo link_tag('stylesheet/admin.css'); ?>
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

<div id="listContent">
	<?php $this->load->view('templates/article/admin_nav'); ?>

	<div class="list list-wide admin-form">
		<h2><?php echo $title ?></h2>

		<?php if (validation_errors()): ?>
		<div class="form-errors"><?php echo validation_errors(); ?></div>
		<?php endif; ?>

		<?php echo form_open('article/create') ?>

		<div class="form-row">
			<label for="title">文章標題</label>
			<input type="input" name="title" id="title" value="<?php echo set_value('title'); ?>"/>
		</div>

		<div class="form-row">
			<label for="subtitle">副標題</label>
			<input type="input" name="subtitle" id="subtitle" value="<?php echo set_value('subtitle'); ?>"/>
		</div>

		<div class="form-row">
			<label for="imgName">圖片名稱</label>
			<input type="input" name="imgName" id="imgName" value="<?php echo set_value('imgName'); ?>"/>
		</div>

		<div class="form-row">
			<label for="engTitle">English title（不要太多字，DB 設 34 個字元）</label>
			<input type="input" name="engTitle" id="engTitle" maxlength="34" value="<?php echo set_value('engTitle'); ?>"/>
		</div>

		<div class="form-row-group">
			<div class="form-row">
				<label for="category">目錄</label>
				<select name="categary" id="category">
					<option value="1" <?php echo set_select('categary', '1', TRUE); ?>>music</option>
					<option value="2" <?php echo set_select('categary', '2'); ?>>movie</option>
					<option value="3" <?php echo set_select('categary', '3'); ?>>book</option>
					<option value="4" <?php echo set_select('categary', '4'); ?>>think</option>
					<option value="5" <?php echo set_select('categary', '5'); ?>>programming</option>
					<option value="6" <?php echo set_select('categary', '6'); ?>>game</option>
				</select>
			</div>

			<div class="form-row">
				<label for="dtpicker">DateTime（格式 yyyy-MM-dd HH:mm:ss，點一下選擇）</label>
				<input type="text" name="dtpicker" id="dtpicker" data-field="datetime" data-format="yyyy-MM-dd HH:mm:ss" value="<?php echo set_value('dtpicker'); ?>" readonly>
				<div id="dtBox"></div>
			</div>
		</div>

		<div class="form-row">
			<label for="editor1">內文</label>
			<textarea class="ckeditor" name="editor1" id="editor1"><?php echo set_value('editor1'); ?></textarea>
		</div>

		<div class="list-actions">
			<button type="submit" name="submit" value="Create new article" class="admin-btn admin-btn-primary">＋ 新增文章</button>
			<a href="<?php echo base_url('article/getlist'); ?>" class="admin-btn">取消</a>
		</div>

		</form>
	</div>
</div>
