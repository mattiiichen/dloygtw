<link href='https://fonts.googleapis.com/css?family=Gloria+Hallelujah' rel='stylesheet' type='text/css'>

<div id="Article_view" class="clearfix">
<div id="viewContent">


	<div class="article">
	<div class="timehour">┌<?php echo $article[1]['write_time']; ?>┘</div>
	<!--<div class="aaa"></div>-->
	<?php if(count($article)==3){?>
			
       		<h2><?php echo $article[1]['title'] ?></h2>
 			<img src="../../../CKEdit/upload/images/article_img/<?php echo $article[1]['img_s']; ?>">
 		<!--	<?php echo $article[1]['write_time']; ?></br></br>-->
 		<br><br>
            <?php echo $article[1]['content'] ?>
            <br><br><br>
        <div class="tagNextPre3">
			<div class="Pre3"><a href="../../article/view/<?php echo $article[0]['article_id']; ?>"><?php echo $article[0]['engTitle'] ?></a></div>
			<div class="main"></div>
			<div class="Next3"><a href="../../article/view/<?php echo $article[2]['article_id']; ?>"><?php echo $article[2]['engTitle'] ?></a></div>
		</div>
			
            
            
<?php }else{ ?> 

	<?php for ($k=0;$k<count($article);$k++){ ?>	 
	
			
	<?php if($article[$k]['article_id']==$viewID){ ?>		
       		
       		<h2><?php echo $article[$k]['title']; ?></h2>
 			<img src="/CKEdit/upload/images/article_img/<?php echo $article[$k]['img_s']; ?>">
 		<!--	<?php echo $article[$k]['write_time']; ?></br></br>-->
            <?php echo $article[$k]['content']; ?>
            </br></br></br></br>
	<?php }else{ ?>
		<?php if($k==0){ ?>
		
		<div class="tagNextPre2">
			<div class="Pre2"><a href="../../article/view/<?php echo $article[$k]['article_id']; ?>"><?php echo $article[$k]['engTitle']; ?></a></div>
			<div class="main22"></div>
		</div>
		<?php }else{ ?>
		<br><br><br><br>
		<div class="tagNextPre2">
			<div class="main2"></div>
			<div class="Next2"><a href="../../article/view/<?php echo $article[$k]['article_id']; ?>"><?php echo $article[$k]['engTitle']; ?></a></div>
		</div>		
		<?php } ?>
<?php }}} ?>         
    </div>
   
   
</div>