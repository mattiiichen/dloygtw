

<script type="text/javascript" src="http://localhost/dloygtw/javascript/tabsearch.js" ></script>
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
		<?php if($searchrollmusic_num == 0){?>
		<p class="nodata">找不著，歹勢！<br/>Sorry, but nothing matched your search terms.</p>
		<?php }else{?>
				<?php for ($i=0;$i<$searchrollmusic_num;$i++){ ?>
	
	<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $searchmusic[$i]['img_s']; ?>">
            
  <strong class="date">
			<p class="textY"><?php echo date('Y', strtotime($searchmusic[$i]['write_time'])); ?></p>
			<img width="50px" height="4px" src="http://localhost/dloygtw/images/123.png">
			<p class="textM"><?php echo  strtoupper(date('M', strtotime($searchmusic[$i]['write_time']))); ?></p>
			<p class="textD">/<?php echo date('j', strtotime($searchmusic[$i]['write_time'])); ?></p>	
		  </strong>  
            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $searchmusic[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($searchmusic[$i]['content'])),0,72,"UTF-8"); ?>...</p>
                    <a class="read-more" href="./">Continue Reading →</a>
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
			
			
			<div id="tab2" class="tab_content">
				<section class="tabs-panel" id="musiclist">
		<ul class="pagination1">
		<?php if($searchrollmovie_num == 0){?>
		找不到資料！
		<?php }else{?>
		<?php for ($i=0;$i<$searchrollmovie_num;$i++){ ?>
		<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $searchmovie[$i]['img_s']; ?>">
   <strong class="date">
			<p class="textY"><?php echo date('Y', strtotime($searchmovie[$i]['write_time'])); ?></p>
			<img width="50px" height="4px" src="images/123.png">
			<p class="textM"><?php echo  strtoupper(date('M', strtotime($searchmovie[$i]['write_time']))); ?></p>
			<p class="textD">/<?php echo date('j', strtotime($searchmovie[$i]['write_time'])); ?></p>	
		  </strong>  
            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $searchmovie[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($searchmovie[$i]['content'])),0,72,"UTF-8"); ?></p>
                    <a class="read-more" href="./">Continue Reading →</a>
                </div>
            </div>  
                </div>
		</li>
		<?php } ?>
		<?php } ?>
		</ul>
		</section>
			</div>
		</div>
	</div>
