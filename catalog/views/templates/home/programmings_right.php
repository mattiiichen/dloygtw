<link href='https://fonts.googleapis.com/css?family=Quicksand:700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
 <?php echo link_tag('stylesheet/right_programming.css'); ?>
 
 
<div class="right_info">
	
	
<!--	<div class="listening"><p>-最近程式的-</p>
	
	<div class="musiccover"><img src="http://localhost/CKEdit/upload/images/recently_img/<?php echo $recently_programming[0]['img']; ?>">
	<div class="covertext"><?php echo $recently_programming[0]['title']; ?></div>
		
	</div>
	<br/><br/><br/>
	<iframe width="300" height="169" src="<?php echo $recently_programming[0]['youtubeurl']; ?>" frameborder="0" allowfullscreen></iframe>
	</div>-->
	


	
	
	<br/>
	
	
	
	<?php echo form_open('programming/search') ?>
	
	<div class="searchBOX">
	<p>-可以找的文章-</p>
	
		<input type="text" class="searchMF" name="searchMF" id="search" placeholder="Search Music and Films"/><input type="submit" class="searchMFBT" name="searchMFBT" value="">
	</div>
	</form>
	<div class="blogarchive">
	<p>-BLOG ARCHIVE-</p>
	</div>
	
	
	<div class="collapsed-archives">

	<ul class="years">
	 <?php for($i=0;$i< count($category_year);$i++){?>
		<li class="years<?php echo $i;?>">
		
		   
		   <input type="checkbox" id="archive-year-<?php echo $category_year[$i]['year'];?>" <?php if(isset($_GET['y'])){if($_GET['y']==$category_year[$i]['year']){echo "checked";}}else{if($i==0){echo "checked";}}?>>
			<label for="archive-year-<?php echo $category_year[$i]['year'];?>"><?php echo $category_year[$i]['year'];?>&nbsp;YEAR&nbsp;(<?php echo $category_year[$i]['posts'];?>)</label>	<br>
			<?php for($k=0;$k< count($category_month);$k++){?>
			
			<ul class="months">	
			<?php if($category_year[$i]['year']==$category_month[$k]['year']){?>
			
				<li><a href='../category?y=<?php echo $category_month[$k]['year'];?>&m=<?php echo $category_month[$k]['month'];?>&mid=<?php echo $category_month[$k]['month_num'];?>'><?php echo $category_month[$k]['month'];?>&nbsp;(<?php echo $category_month[$k]['posts'];?>)</a></li>
				
			<?php } ?>	
			</ul>
			<?php } ?>	
		
		  
					

		</li>
		
		
	<?php }?>
	</ul>

	</div>
	<div class="collapsed-archives_after"></div>
	 <br>

	

</div>
</div>