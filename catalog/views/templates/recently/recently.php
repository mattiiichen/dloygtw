
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
	<?php echo form_open('recently/delete') ?> 
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
       		<?php foreach ($recentlys as $recently): ?>
       			<tr>
       				<td><input type="checkbox" name="articlebox[]" value="<?php echo $recently['new_id']; ?>"></td>
       				<td><?php echo $recently['new_id']; ?></td>
       				<td><a href="view/"><?php echo $recently['title']; ?></a><a href="edit?id=<?php echo $recently['new_id']; ?>" class="edit_text">編輯</a></td>
       				<td><?php echo $recently['new_category_id']; ?></td>
       				<td><?php echo $recently['write_time']; ?></td>
       				
       			</tr>
       		<?php endforeach ?>	
       		</tbody>
       		<tfoot>
       			
       		</tfoot>
       </table>  
       </br>
       <input type="button" value="新增" onclick="javascript:createArticle()"/>
       <input type="submit" value="刪除所選項目">
       </form>      
    </div>  
</div>
	      