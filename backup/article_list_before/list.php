
<script type="text/javascript">
    function createArticle(){   
        window.location = "create";
    }
  
</script>
    <?php echo link_tag('stylesheet/bluelagoon.css'); ?>
    <a href="../article/getlist">Article List</a><br>
    <a href="../recently/get_recentlist">Do something New</a><br>
    <a href="../image/">Upload Image</a>
<div id="listContent">
	<div class="list">		
	<?php echo form_open('article/delete') ?> 
       <table>
       		<thead>
       			<tr>
       				<td><input type="checkbox" name="all" id="all" /></td>
       				<td>
       					ID
       				</td>
       				<td>
       					Title
       				</td>
       				<td>
       					目錄
       				</td>
       				<td>
       					Time
       				</td>
       				
       			</tr>       		
       		</thead>
       		<tbody>
       		<?php foreach ($articles as $article_item): ?>
       			<tr>
       				<td><input type="checkbox" name="articlebox[]" value="<?php echo $article_item['article_id']; ?>"></td>
       				<td><?php echo $article_item['article_id']; ?></td>
       				<td><a href="view/<?php echo $article_item['article_id']; ?>"><?php echo $article_item['title']; ?></a><a href="edit?id=<?php echo $article_item['article_id']; ?>" class="edit_text">編輯</a></td>
       				<td><?php echo $article_item['name']; ?></td>
       				<td><?php echo $article_item['write_time']; ?></td>
       				
       			</tr>
       		<?php endforeach ?>	
       		</tbody>
       		<tfoot>
       			
       		</tfoot>
       </table>  
       </br>
       <input type="button" value="新增文章" onclick="javascript:createArticle()"/>
       <input type="submit" value="刪除所選文章">
       </form>      
    </div>  
</div>
	      