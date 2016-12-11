<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="./javascript/tabs.js" ></script>
     <?php echo link_tag('stylesheet/rollfilm.css'); ?>

<div class="listbody clearfix">
<div class="abgne_tab">
		<ul class="tabs">
			<li class="tabGAME"><a href="#tab1">GAME</a></li>
			
		</ul>
 	
		<div class="tab_container">
			<div id="tab1" class="tab_content">
				 <section class="tabs-panel" id="musiclist">
		<ul class="pagination1">	 
		<?php for ($i=0;$i<$gamelistnum;$i++){ ?>
	
	<li class="eacharticle">
		   <div class="image-wrapper">
                <img width="275px" src="../../CKEdit/upload/images/article_img/<?php echo $gamelists[$i]['img_s']; ?>">
           <strong class="date">
			<p class="textY"><?php echo date('Y', strtotime($gamelists[$i]['write_time'])); ?></p>
			<img width="50px" height="4px" src="./images/123.png">
			<p class="textM"><?php echo  strtoupper(date('M', strtotime($gamelists[$i]['write_time']))); ?></p>
			<p class="textD">/<?php echo date('j', strtotime($gamelists[$i]['write_time'])); ?></p>	
		  </strong>      

            <div class="content">
                <div class="inner">
                    <h3 class="title"><?php echo $gamelists[$i]['title']; ?></h3>
                    <p class="description"><?php echo mb_substr(strip_tags(html_entity_decode($gamelists[$i]['content'])),0,72,"UTF-8"); ?>...</p>
                    <a class="read-more" href="./article/view/<?php echo $gamelists[$i]['article_id']?>">Continue Reading →</a>
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
