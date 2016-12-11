$(function(){
    // 
    
    var duration = 300;
 	var $window = $(window); // Window 物件
    // aside ----------------------------------------
    var $aside = $('.page-main > aside');
  

    var $asidButton = $aside.find('button')
        .on('click', function(){
            $aside.toggleClass('open');
            
            if($aside.hasClass('open')){
                $aside.stop(true).animate({left: '-80px'}, duration, 'easeOutBack');
                $asidButton.find('img').attr('src', 'images/aside/btn_close.png');
              
               $window.on('scroll',$.throttle(1000/1,function() {
          		/*$($window).off('scroll');*/
          		$aside.toggleClass('open');
              	$aside.stop(true).animate({left: '-390px'}, duration, 'easeInBack');
                $asidButton.find('img').attr('src', 'images/aside/btn_open.png');
           		
       			}));
           
            }else{
                $aside.stop(true).animate({left: '-390px'}, duration, 'easeInBack');
                $asidButton.find('img').attr('src', 'images/aside/btn_open.png');
            };
        });
	 	
});
