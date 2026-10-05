<?php echo link_tag('stylesheet/admin.css'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>javascript/admin_list.js"></script>
<script type="text/javascript">
    function createArticle(){
        window.location = "create";
    }
</script>

<div id="listContent">
	<?php $this->load->view('templates/article/admin_nav'); ?>

	<div class="list">
	<?php echo form_open('recently/delete') ?>
		<div class="table-wrap">
		<table class="sortable" id="recentlyTable">
			<thead>
				<tr>
					<th class="col-check"><input type="checkbox" name="all" id="all" title="全選／全取消" /></th>
					<th class="col-id" data-sort-type="number" aria-sort="ascending"><button type="button" class="sort-btn">ID<span class="sort-icon"></span></button></th>
					<th class="col-title" data-sort-type="text"><button type="button" class="sort-btn">Title<span class="sort-icon"></span></button></th>
					<th class="col-cat" data-sort-type="number"><button type="button" class="sort-btn">目錄<span class="sort-icon"></span></button></th>
					<th class="col-time" data-sort-type="text"><button type="button" class="sort-btn">Time<span class="sort-icon"></span></button></th>
				</tr>
			</thead>
			<tbody>
			<?php foreach ($recentlys as $recently): ?>
				<tr>
					<td class="col-check"><input type="checkbox" name="articlebox[]" value="<?php echo $recently['new_id']; ?>"></td>
					<td class="col-id" data-sort-value="<?php echo $recently['new_id']; ?>"><?php echo $recently['new_id']; ?></td>
					<td class="col-title" data-sort-value="<?php echo htmlspecialchars($recently['title'], ENT_QUOTES, 'UTF-8'); ?>"><a href="view/"><?php echo $recently['title']; ?></a><a href="edit?id=<?php echo $recently['new_id']; ?>" class="edit_text">編輯</a></td>
					<td class="col-cat" data-sort-value="<?php echo $recently['new_category_id']; ?>"><?php echo $recently['new_category_id']; ?></td>
					<td class="col-time" data-sort-value="<?php echo $recently['write_time']; ?>"><?php echo $recently['write_time']; ?></td>
				</tr>
			<?php endforeach ?>
			</tbody>
		</table>
		</div>
		<div class="list-actions">
			<button type="button" class="admin-btn admin-btn-primary" onclick="javascript:createArticle()">＋ 新增</button>
			<button type="submit" class="admin-btn admin-btn-danger js-delete" disabled>刪除所選項目</button>
			<span class="selected-count js-selected-count"></span>
		</div>
	</form>
	</div>
</div>
