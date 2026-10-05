<html>
<meta charset="UTF-8" lang="e"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <head>
        <title>不要枉費青春</title>       
         <?php echo link_tag('stylesheet/stylesheet.css'); ?>   
         <?php echo link_tag('stylesheet/paging.css'); ?>      
         <?php echo link_tag('stylesheet/footer_info.css'); ?>
         <?php echo link_tag('stylesheet/jquery-impromptu.css'); ?>

<link href='https://fonts.googleapis.com/css?family=Titillium+Web:600' rel='stylesheet' type='text/css'>


<link rel="shortcut icon" type="image/x-icon" href="./favicon.ico">
    
      
        <script type="text/javascript" src="./javascript/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="./javascript/jquery-ui-1.10.3.custom.min.js"></script> 	 
    	<script type="text/javascript" src="./asset/ckeditor/ckeditor.js"></script>
        <script type="text/javascript" src="./javascript/photo.js"></script>
        <script type="text/javascript" src="./javascript/stickyheader.js"></script>
        <script type="text/javascript" src="./javascript/aside.js"></script>     
        <script type="text/javascript" src="./javascript/jquery.colorbox-min.js"></script>
        <script type="text/javascript" src="./javascript/jquery.ba-throttle-debounce.min.js"></script>
		<script type="text/javascript" src="./javascript/jquery.quick.pagination.min.js" id="pageJsa" ></script>	
		<script type="text/javascript" src="./javascript/jquery-impromptu.js" ></script>
		
<script type="text/javascript" src="./javascript/stickyasidebutton.js"></script>
    <script type="text/javascript" id="pageJsb">  
    $(document).ready( function() {


 if (screen.width==1280){
     $('.page-main > aside').find('textarea').focusin(function(){
    		 $(this).animate({
			        height: 289
			    }, 300),
		     $(this).blur(function() {

		     $(this).animate({
			            height: 48
			        }, 300)
		     });
		
    });
 }
      $("ul.pagination1").quickPagination({pageSize:"6"});
      $('ul.simplePagerNav > li:not([class$="currentPage"]) > a').each(function () {

       
        // 檢測html、body何者為可捲動元素
        var $el = $(scrollableElement('html', 'body'));

        // 設定按鈕的點擊事件
        $(this).on('click', function (event) {
            event.preventDefault();
            $el.animate({ scrollTop: 500 }, 0);
        });
    });

	    // 透過scrollTop檢測可用元素的函數
	    function scrollableElement (elements){
        var i, len, el, $el, scrollable;
        for (i = 0, len = arguments.length; i < len; i++) {
            el = arguments[i],
            $el = $(el);
            if ($el.scrollTop() > 0) {
                return el;
            } else {
                $el.scrollTop(1);
                scrollable = $el.scrollTop() > 0;
                $el.scrollTop(0);
                if (scrollable) {
                    return el;
                }
            }
        }
        return [];
    }
    
    		
    $('div.tab_container .tab_content').fadeIn();
    
  
    });

  </script>

<link href='https://fonts.googleapis.com/css?family=Annie+Use+Your+Telescope' rel='stylesheet' type='text/css'>

    </head>
    <body>
 <!--  <?php echo img('images/banner1263.png'); ?>-->
    <div class="banner"><a href="./"><img></a></div>

    <header class="page-header" role="banner">
    <div class="inner clearfix">
        <h1 class="site-logo"><a href="./" ><?php echo $this->lang->line('title'); ?></a></h1>
        <nav class="primary-nav" role="navigation">
            <ul>  
                <li><a href="./rollfilm"><?php echo $this->lang->line('header_rollfilm'); ?></a></li>
                <li><a href="./book"><?php echo $this->lang->line('header_book'); ?></a></li>
                <li><a href="./think"><?php echo $this->lang->line('header_think'); ?></a></li>
                <li><a href="./travel/images"><?php echo $this->lang->line('header_image'); ?></a></li>
              <!--  <li><a href="./programming"><?php echo $this->lang->line('header_book'); ?></a></li>-->
                <li><a href="./game"><?php echo $this->lang->line('header_game'); ?></a></li>
             
           <!--    
             <li>
             <a href='./langswitch/switchLanguage/english'>English</a>
			 <a href='./langswitch/switchLanguage/origin'>Origin</a>
 
				</li>-->
            </ul>
             
        </nav>
        		
    </div>
    <div class="lang">
     <ul>
     <?php if(substr(strrchr(current_url(),"/"),1)=="rollfilm"){ ?>
		<li><a href='rollfilm/switchLanguage/english'>eng,</a></li>
		<li><a href='rollfilm/switchLanguage/origin'>ori</a></li>
     <?php }elseif(substr(strrchr(current_url(),"/"),1)=="book"){ ?>
		<li><a href='book/switchLanguage/english'>eng,</a></li>
		<li><a href='book/switchLanguage/origin'>ori</a></li>
     <?php }elseif(substr(strrchr(current_url(),"/"),1)=="think"){ ?>
		<li><a href='think/switchLanguage/english'>eng,</a></li>
		<li><a href='think/switchLanguage/origin'>ori</a></li>
     <?php }else{ ?>
		<li><a href='game/switchLanguage/english'>eng,</a></li>
		<li><a href='game/switchLanguage/origin'>ori</a></li>    
     <?php } ?>
   
     </ul> 
     </div> 
	</header>
	

			

	
      