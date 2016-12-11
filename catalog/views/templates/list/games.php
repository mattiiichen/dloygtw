

<script type="text/javascript" src="../javascript/tabsearch.js" ></script>
 <?php echo link_tag('stylesheet/rollfilm.css'); ?>


<div class="listbody clearfix">
<div class="abgne_tab">
		<ul class="tabsearch">
			<li class="tabSearchall"><a href="#tab1">search for_<?php echo $keyword; ?></a></li>
			
		</ul>
 
		<div class="tab_container">
			<div id="tab1" class="tab_content">
				 <section class="tabs-panel" id="musiclist">
		<ul class="pagination1">	
		<?php if($searchgame_num == 0){?>
		<p class="nodata">找不著，歹勢！<br/>Sorry, but nothing matched your search terms.</p>
		<?php }else{?>
				<?php for ($i=0;$i<$searchgame_num;$i++){ ?>
	
	<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $searchgame[$i]['img_s']; ?>">
            
  <strong class="date">
			<p class="textY"><?php echo date('Y', strtotime($searchgame[$i]['write_time'])); ?></p>
			<img width="50px" height="4px" src="http://localhost/dloygtw/images/123.png">
			<p class="textM"><?php echo  strtoupper(date('M', strtotime($searchgame[$i]['write_time']))); ?></p>
			<p class="textD">/<?php echo date('j', strtotime($searchgame[$i]['write_time'])); ?></p>	
		  </strong>  
            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $searchgame[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($searchgame[$i]['content'])),0,72,"UTF-8"); ?>...</p>
                    <a class="read-more" href="../article/view/<?php echo $searchgame[$i]['article_id']; ?>">Continue Reading →</a>
                </div>
            </div>  
            </div>
    </li>            
	
		<?php } ?>
			
		<?php } ?>
		
	
	</ul>
	<div class="clearing"></div>
			</section>
			</div>
			
			
		
		</div>
	</div>
