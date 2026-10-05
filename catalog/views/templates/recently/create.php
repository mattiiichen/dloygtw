<?php echo link_tag('stylesheet/admin.css'); ?>

<div id="listContent">
	<?php $this->load->view('templates/article/admin_nav'); ?>

	<div class="list admin-form">
		<h2><?php echo $title ?></h2>

		<?php if (validation_errors()): ?>
		<div class="form-errors"><?php echo validation_errors(); ?></div>
		<?php endif; ?>

		<?php echo form_open('recently/create') ?>

		<div class="form-row">
			<label for="title">標題</label>
			<input type="input" name="title" id="title" value="<?php echo set_value('title'); ?>"/>
		</div>

		<div class="form-row">
			<label for="imgName">圖片名稱（音樂 150x150，其他高度不要超過 168px）</label>
			<input type="input" name="imgName" id="imgName" value="<?php echo set_value('imgName'); ?>"/>
		</div>

		<div class="form-row">
			<label for="youtube">Youtube 網址</label>
			<input type="input" name="youtube" id="youtube" placeholder="https://www.youtube.com/watch?v=..." value="<?php echo set_value('youtube'); ?>"/>
		</div>

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

		<div class="list-actions">
			<button type="submit" name="submit" value="Create New Recent" class="admin-btn admin-btn-primary">＋ 新增</button>
			<a href="<?php echo base_url('recently/get_recentlist'); ?>" class="admin-btn">取消</a>
		</div>

		</form>
	</div>
</div>
