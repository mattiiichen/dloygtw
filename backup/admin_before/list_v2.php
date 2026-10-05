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
	<?php echo form_open('article/delete') ?>
		<div class="table-wrap">
		<table class="sortable" id="articleTable">
			<thead>
				<tr>
					<th class="col-check"><input type="checkbox" name="all" id="all" title="全選／全取消" /></th>
					<th class="col-id" data-sort-type="number" aria-sort="descending"><button type="button" class="sort-btn">ID<span class="sort-icon"></span></button></th>
					<th class="col-title" data-sort-type="text"><button type="button" class="sort-btn">Title<span class="sort-icon"></span></button></th>
					<th class="col-cat" data-sort-type="text"><button type="button" class="sort-btn">目錄<span class="sort-icon"></span></button></th>
					<th class="col-time" data-sort-type="text"><button type="button" class="sort-btn">Time<span class="sort-icon"></span></button></th>
				</tr>
			</thead>
			<tbody>
			<?php foreach ($articles as $article_item): ?>
				<tr>
					<td class="col-check"><input type="checkbox" name="articlebox[]" value="<?php echo $article_item['article_id']; ?>"></td>
					<td class="col-id" data-sort-value="<?php echo $article_item['article_id']; ?>"><?php echo $article_item['article_id']; ?></td>
					<td class="col-title" data-sort-value="<?php echo htmlspecialchars($article_item['title'], ENT_QUOTES, 'UTF-8'); ?>"><a href="view/<?php echo $article_item['article_id']; ?>"><?php echo $article_item['title']; ?></a><a href="edit?id=<?php echo $article_item['article_id']; ?>" class="edit_text">編輯</a></td>
					<td class="col-cat" data-sort-value="<?php echo htmlspecialchars($article_item['name'], ENT_QUOTES, 'UTF-8'); ?>"><?php echo $article_item['name']; ?></td>
					<td class="col-time" data-sort-value="<?php echo $article_item['write_time']; ?>"><?php echo $article_item['write_time']; ?></td>
				</tr>
			<?php endforeach ?>
			</tbody>
		</table>
		</div>
		<div class="list-actions">
			<button type="button" class="admin-btn admin-btn-primary" onclick="javascript:createArticle()">＋ 新增文章</button>
			<button type="submit" class="admin-btn admin-btn-danger js-delete" disabled>刪除所選文章</button>
			<span class="selected-count js-selected-count"></span>
		</div>
	</form>
	</div>
</div>
