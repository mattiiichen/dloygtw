<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
  <?php echo link_tag('stylesheet/tabmonth.css'); ?>

<script type="text/javascript" src="./javascript/monthlistTab.js" id="charisma"></script>


  
  
  
<div class="listbody clearfix">
<div class="abgne_tab" id="abgne_tab">
		<ul class="tabs" id="tabs">
		<?php for ($k=0;$k<count($category_month);$k++){ ?>
			<li class="tab_<?php echo $category_month[$k]['year'];?>_<?php echo $category_month[$k]['month'];?>" id="tab_<?php echo $category_month[$k]['month'];?>_<?php echo $category_month[$k]['year'];?>" title="tab_<?php echo $category_month[$k]['year'];?>_<?php echo $category_month[$k]['month_num'];?>"><a href="#tab_<?php echo $category_month[$k]['year'];?>_<?php echo $category_month[$k]['month_num'];?>">
				<div class="Month_num"><?php echo $category_month[$k]['month_num'];?></div>
				<div class="Month"><?php echo $category_month[$k]['month'];?></div>
				<div class="year_num"><?php echo $category_month[$k]['year'];?></div>
				
				
			</a></li>
			
		<?php } ?>	
		</ul>

		<div class="tab_container" id="tab_container">
			<div  class="tab_content" >
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
			
			
			
		</div>
	</div>
