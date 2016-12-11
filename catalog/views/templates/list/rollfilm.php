<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Averia+Sans+Libre' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="./javascript/tabs.js" ></script>
     <?php echo link_tag('stylesheet/rollfilm.css'); ?>

<div class="listbody clearfix">
<div class="abgne_tab">
		<ul class="tabs">
			<li class="tabmusic"><a href="#tab1"><?php echo $this->lang->line('tab_music'); ?></a></li>
			<li class="tabfilms"><a href="#tab2"><?php echo $this->lang->line('tab_movie'); ?></a></li>
		</ul>
 		
		<div class="tab_container">
			<div id="tab1" class="tab_content">
				 <section class="tabs-panel" id="musiclist">
		<ul class="pagination1">	 
		<?php for ($i=0;$i<$musiclistnum;$i++){ ?>
	
	<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $musiclists[$i]['img_s']; ?>">
           <strong class="date">
			<p class="textY"><?php echo date('Y', strtotime($musiclists[$i]['write_time'])); ?></p>
			<img width="50px" height="4px" src="images/123.png">
			<p class="textM"><?php echo  strtoupper(date('M', strtotime($musiclists[$i]['write_time']))); ?></p>
			<p class="textD">/<?php echo date('j', strtotime($musiclists[$i]['write_time'])); ?></p>	
		  </strong>      

            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $musiclists[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($musiclists[$i]['content'])),0,72,"UTF-8"); ?>...</p>
                    <a class="read-more" href="./article/view/<?php echo $musiclists[$i]['article_id']?>">Continue Reading →</a>
                </div>
            </div>  
            </div>
    </li>            
	
		<?php } ?>
	</ul>
	
	<div class="clearing"></div>
			</section>
			</div>
			
			
			<div id="tab2" class="tab_content">
				<section class="tabs-panel" id="musiclist">
		<ul class="pagination1">
		<?php for ($i=0;$i<$movielistnum;$i++){ ?>
		<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $movielists[$i]['img_s']; ?>">
                <strong class="date">
		<p class="textY"><?php echo date('Y', strtotime($movielists[$i]['write_time'])); ?></p>
		<img width="50px" height="4px" src="images/123.png">
		<p class="textM"><?php echo  strtoupper(date('M', strtotime($movielists[$i]['write_time']))); ?></p>
		<p class="textD">/<?php echo date('j', strtotime($movielists[$i]['write_time'])); ?></p>
			
			
		</strong>

            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $movielists[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($movielists[$i]['content'])),0,72,"UTF-8"); ?></p>
                    <a class="read-more" href="./article/view/<?php echo $movielists[$i]['article_id']?>">Continue Reading →</a>
                </div>
            </div>  
                </div>
		</li>
		<?php } ?>
		</ul>
		</section>
			</div>
		</div>
	</div>
