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
<!-- Histats.com  START (hidden counter)-->
<script type="text/javascript">document.write(unescape("%3Cscript src=%27http://s10.histats.com/js15.js%27 type=%27text/javascript%27%3E%3C/script%3E"));</script>
<a href="http://www.histats.com" target="_blank" title="" ><script  type="text/javascript" >
try {Histats.start(1,3410573,4,0,0,0,"");
Histats.track_hits();} catch(err){};
</script></a>
<noscript><a href="http://www.histats.com" target="_blank"><img  src="http://sstatic1.histats.com/0.gif?3410573&101" alt="" border="0"></a></noscript>
<!-- Histats.com  END  -->
<link href='https://fonts.googleapis.com/css?family=Annie+Use+Your+Telescope' rel='stylesheet' type='text/css'>

    </head>
    <body>
    <div class="banner">
        <a href="./">
        <img src="../images/banner1263c.jpg" alt="Banner">
        </a>
    </div>

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
            	<li><a href='./langswitch/switchLanguage/english'>eng,</a></li>
            	<li><a href='./langswitch/switchLanguage/origin'>ori</a></li>
     </ul> 
     </div> 
	 <!-- Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//localhost/piwik/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 1]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//localhost/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
<!-- End Piwik Code -->
	</header>
	

			

	
      