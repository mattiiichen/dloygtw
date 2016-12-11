$(function () {

    /*
     * Sticky header
     */
    $('.page-main > aside button.openclose').each(function () {
		
        var $window = $(window), // Window 物件
          	$header = $(this),  

            
            //從HTML上側到header底部的距離 = header的top位置 + header的高度
//            threshold = $header.offset().top + $header.outerHeight();
           
            threshold = 586;

 
        
        // 針對捲動時的執行處理，次數限制為每秒最多15次
        $window.on('scroll', $.throttle(100 / 15, function () {
            if ($window.scrollTop() < threshold) {
            
               $header.css('top',threshold-$window.scrollTop());
            } else {
              	 $header.css('top','86px');
            }
          
        }));

        // 觸發捲動事件，決定初始位置
        $window.trigger('scroll');
    });

});
