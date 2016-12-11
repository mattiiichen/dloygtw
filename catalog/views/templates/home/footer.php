<link href='https://fonts.googleapis.com/css?family=Maven+Pro' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Orbitron:400,900' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>


<div class="footer_content">
	<div class="column_left">
		<div class="quote">
<?php echo $this->lang->line('footer_left_quote'); ?>
		</div>
		<div class="associationF" style="cursor:pointer;" onclick="window.open(' https://www.facebook.com/charisma.chen ');">
			Fb
		</div>
		<div class="associationG" style="cursor:pointer;" onclick="window.open(' https://plus.google.com/110583829227959080524/posts ');">
			G+
		</div>
		<div class="associationI" style="cursor:pointer;" onclick="window.open(' https://www.instagram.com/woodstocktaking/ ');">
			Ig
		</div>
	</div>
	<div class="column_middle">
		



<div class="ftcontent">

<p><a href="./article/view/<?php echo $footernews[0]['article_id']; ?>"><?php echo $this->lang->line('footer__center_news_music'); ?><?php echo $footernews[0]['engTitle']; ?></a></p><br>
<p><a href="./article/view/<?php echo $footernews[1]['article_id']; ?>"><?php echo $this->lang->line('footer__center_news_movie'); ?><?php echo $footernews[1]['engTitle']; ?></a></p><br>
<p><a href="./article/view/<?php echo $footernews[2]['article_id']; ?>"><?php echo $this->lang->line('footer__center_news_paper'); ?><?php echo $footernews[2]['engTitle']; ?></a></p><br>
<p><a href="./article/view/<?php echo $footernews[3]['article_id']; ?>"><?php echo $this->lang->line('footer__center_news_think'); ?><?php echo $footernews[3]['engTitle']; ?></a></p><br>
<!--<p>PROGRAM - jquery design</p><br>-->
<p><a href="./article/view/<?php echo $footernews[4]['article_id']; ?>"><?php echo $this->lang->line('footer__center_news_game'); ?><?php echo $footernews[4]['engTitle']; ?></a></p><br>

</div>
	</div>
	<div class="column_right">
		<div class="takeSomeShots">
			<a href="./travel/images"><img src="../CKEdit/upload/images/<?php echo $footerlastshot; ?>"></a>
		</div>
	</div>
</div>


    </body>
</html>


<!--<button type="button" class="simplepage currentpage">
    <span class="label">scroll to TOP</span>
</button>-->