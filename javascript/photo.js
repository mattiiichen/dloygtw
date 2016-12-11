
$(function(){
    // 
    var duration = 300;

    // images ----------------------------------------
    var $images = $('#homeContent > div').not("#column4");

    // images 第一個圖片
    $images.filter('[id^=column]')
        .on('mouseover', function(){
        	$(this).find('strong.date').stop(true).animate({opacity: 1, left: '18px'}, duration);
            $(this).find('strong.quote, span').stop(true).animate({opacity: 1}, duration);
        })
        .on('mouseout', function(){
        	$(this).find('strong.date').stop(true).animate({opacity: 1, left: '-226px'}, duration);
            $(this).find('strong.quote, span').stop(true).animate({opacity: 0}, duration);
        });
  
	var $images1 = $('#homeContent #column4');
	$images1.filter('[id^=column]')
        .on('mouseover', function(){
        	$(this).find('strong.date').stop(true).animate({opacity: 1, left: '18px'}, duration);
            $(this).find('strong.quote, span').stop(true).animate({opacity: 1}, duration);
        })
        .on('mouseout', function(){
        	$(this).find('strong.date').stop(true).animate({opacity: 1, left: '-200%'}, duration);
            $(this).find('strong.quote, span').stop(true).animate({opacity: 0}, duration);
        });
        
        
        
    // images 第二個圖片
 /*   $images.filter(':nth-child(2)')
        .on('mouseover', function(){
            $(this).find('strong').stop(true).animate({opacity: 1, left: '0%'}, duration);
            $(this).find('span').stop(true).animate({opacity: 1}, duration);
        })
        .on('mouseout', function(){
            $(this).find('strong').stop(true).animate({opacity: 0, left: '-200%'}, duration);
            $(this).find('span').stop(true).animate({opacity: 0}, duration);
        });*/

    // images 第三個圖片
    /*$images.filter(':nth-child(3)')
        .on('mouseover', function(){
            $(this).find('strong').stop(true).animate({bottom: '0px'}, duration);
            $(this).find('span').stop(true).animate({opacity: 1}, duration);
            $(this).find('img').stop(true).animate({top: '-20px'}, duration * 1.3);
        })
        .on('mouseout', function(){
            $(this).find('strong').stop(true).animate({bottom: '-80px'}, duration);
            $(this).find('span').stop(true).animate({opacity: 0}, duration);
            $(this).find('img').stop(true).animate({top: '0px'}, duration);
        });*/

});
