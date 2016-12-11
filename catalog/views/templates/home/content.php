<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

	<div id="homeContent">

	   <?php for ($i=0;$i<7;$i++){ ?>
		<div class="columnShadow<?php echo $i; ?>"></div>
		<div id="column<?php echo $i; ?>"  <?php if($i==2 || $i==4 || $i==5 ){ echo "class=\"clear\"";}?>>
		
    	
		<img src="../CKEdit/upload/images/article_img/<?php if($i==4){echo $articles[$i]['img_b'];}else{echo $articles[$i]['img_s'];}?>">
		<strong class="quote"><?php echo $articles[$i]['subheading'];?></strong>
		
		<strong class="date">
		<p class="textY"><?php echo date('Y', strtotime($articles[$i]['write_time'])); ?></p>
		<img src="./images/123.png">
		<p class="textM"><?php echo  strtoupper(date('M', strtotime($articles[$i]['write_time']))); ?></p>
		<p class="textD">/<?php echo date('j', strtotime($articles[$i]['write_time'])); ?></p>
			
			
		</strong>
		
		<span></span>
		
		<div class="title"><?php echo $articles[$i]['title']; ?></div>

		
		
		<div class="column_shortContent"> 
		
		
          <?php 
          
          if($i==4){
		  	echo mb_substr(strip_tags(html_entity_decode($articles[$i]['content'])),0,160,"UTF-8")."…";
		  }else{		  			  
	          if(strlen($articles[$i]['content'])>72){
	          		echo mb_substr(strip_tags(html_entity_decode($articles[$i]['content'])),0,68,"UTF-8")."…";
	          	}else{
	          		echo strip_tags(html_entity_decode($articles[$i]['content']))."…";
	          }
          }
          ?>
          
          
         </div>
	
		<h5><a href="./article/view/<?php echo $articles[$i]['article_id'];?>"><?php echo $this->lang->line('content_ContinueReading'); ?></a></h5>
		</div>
		<div id="doticon<?php echo $i; ?>"><img src="images/dot.png"></div>
		<div class="arrow<?php echo $i; ?>"></div>
		
	<?php } ?>
	
</div>
<!--	
	<script type="text/javascript">
var ar = <?php echo json_encode($articles,JSON_UNESCAPED_UNICODE) ?>;

for (j= 0; j< ar.length; j++){
	for(i=0;i<ar[i].length;i++)
	document.write(ar[j][i] + ",");
  document.write(ar[i] + "<br />");
}

</script>-->