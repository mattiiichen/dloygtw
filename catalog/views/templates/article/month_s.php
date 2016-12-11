
	<!--		<div  class="tab_content" id="tab_<?php echo $year."_".$month;?>">-->
			<div  class="tab_content" style="display: none;">
				 <section class="tabs-panel" id="musiclist">
		<ul class="pagination1">	 
		<?php for ($i=0;$i<count($articles);$i++){ ?>
	
	<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $articles[$i]['img_s']; ?>">
            
<strong class="date">
			<p class="textY"><?php echo date('Y', strtotime($articles[$i]['write_time'])); ?></p>
			<img width="50px" height="4px" src="images/123.png">
			<p class="textM"><?php echo  strtoupper(date('M', strtotime($articles[$i]['write_time']))); ?></p>
			<p class="textD">/<?php echo date('j', strtotime($articles[$i]['write_time'])); ?></p>	
		  </strong> 
            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $articles[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($articles[$i]['content'])),0,72,"UTF-8"); ?>...</p>
                    <a class="read-more" href="./article/view/<?php echo $articles[$i]['article_id']; ?>">Continue Reading →</a>
                </div>
            </div>  
            </div>
    </li>            
	
		<?php } ?>
	</ul>
	<div class="clearing"></div>
			</section>
			</div>
			
			
