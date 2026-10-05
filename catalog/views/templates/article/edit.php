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
		<h2><?php echo $title ?><span class="form-subtitle">#<?php echo $editArticle['article_id']; ?></span></h2>

		<?php if (validation_errors()): ?>
		<div class="form-errors"><?php echo validation_errors(); ?></div>
		<?php endif; ?>

		<?php echo form_open('article/edit?id='.$editArticle['article_id'])?>

		<div class="form-row">
			<label for="title">文章標題</label>
			<input type="input" name="title" id="title" value="<?php echo set_value('title', $editArticle['title']); ?>"/>
		</div>

		<div class="form-row">
			<label for="subtitle">副標題</label>
			<input type="input" name="subtitle" id="subtitle" value="<?php echo set_value('subtitle', $editArticle['subheading']); ?>"/>
		</div>

		<div class="form-row">
			<label for="imgName">圖片名稱包含副檔名（大的：965X643　小的：400X300）</label>
			<input type="input" name="imgName" id="imgName" value="<?php echo set_value('imgName', substr_replace($editArticle['img_s'], '', -5, 1)); ?>"/>
		</div>

		<div class="form-row">
			<label for="engTitle">English title（不要太多字，DB 設 34 個字元）</label>
			<input type="input" name="engTitle" id="engTitle" maxlength="34" value="<?php echo set_value('engTitle', $editArticle['engTitle']); ?>"/>
		</div>

		<div class="form-row-group">
			<div class="form-row">
				<label for="category">目錄</label>
				<select name="categary" id="category">
				<?php
				$categories = array(1 => 'music', 2 => 'movie', 3 => 'book', 4 => 'think', 5 => 'programming', 6 => 'game');
				foreach ($categories as $catId => $catName): ?>
					<option value="<?php echo $catId; ?>" <?php echo set_select('categary', $catId, $editArticle['category_id'] == $catId); ?>><?php echo $catName; ?></option>
				<?php endforeach; ?>
				</select>
			</div>

			<div class="form-row">
				<label for="dtpicker">DateTime（格式 yyyy-MM-dd HH:mm:ss，點一下選擇）</label>
				<input type="text" name="dtpicker" id="dtpicker" data-field="datetime" data-format="yyyy-MM-dd HH:mm:ss" value="<?php echo set_value('dtpicker', $editArticle['write_time']); ?>" readonly>
				<div id="dtBox"></div>
			</div>
		</div>

		<div class="form-row">
			<label for="editor1">內文</label>
			<textarea class="ckeditor" name="editor1" id="editor1"><?php echo set_value('editor1', $editArticle['content']); ?></textarea>
		</div>

		<div class="list-actions">
			<button type="submit" name="submit" value="Edit Article" class="admin-btn admin-btn-primary">儲存修改</button>
			<a href="<?php echo base_url('article/view/'.$editArticle['article_id']); ?>" class="admin-btn" target="_blank">預覽文章</a>
			<a href="<?php echo base_url('article/getlist'); ?>" class="admin-btn">取消</a>
		</div>

		</form>
	</div>
</div>
