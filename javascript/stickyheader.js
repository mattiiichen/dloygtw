$(function () {

    /*
     * Sticky header
     */
    $('.page-header').each(function () {
		
        var $window = $(window), // Window 物件
            $header = $(this),   // header

            // header的複本
            $headerClone = $header.contents().clone(),

            // header複本的container
            $headerCloneContainer = $('<div class="page-header-clone"></div>'),

            
            //從HTML上側到header底部的距離 = header的top位置 + header的高度
//            threshold = $header.offset().top + $header.outerHeight();
           
            threshold = 486;

        // 將header的複本插入container
        $headerCloneContainer.append($headerClone);

        // 將container插入body的最後
        $headerCloneContainer.appendTo('body');

        
        // 針對捲動時的執行處理，次數限制為每秒最多15次
        $window.on('scroll', $.throttle(1000 / 15, function () {
            if ($window.scrollTop() > threshold) {
                $headerCloneContainer.addClass('visible');
            } else {
                $headerCloneContainer.removeClass('visible');
            }
          
        }));

        // 觸發捲動事件，決定初始位置
        $window.trigger('scroll');
    });

});
