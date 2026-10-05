$(function(){
    //
    var duration = 300;
 	var $window = $(window); // Window 物件
    // aside ----------------------------------------
    var $aside = $('.page-main > aside');

    // RWD：桌機維持原本的 -390px（關）/ -80px（開）；
    // 手機的 aside 寬度由 CSS 決定，關的時候整個藏起來、開的時候貼齊左邊
    function closedLeft() {
        return window.innerWidth >= 768 ? -390 : -$aside.outerWidth();
    }
    function openLeft() {
        return window.innerWidth >= 768 ? -80 : 0;
    }

    function closeAside() {
        $aside.removeClass('open');
        $aside.stop(true).animate({left: closedLeft() + 'px'}, duration, 'easeInBack');
        $asidButton.find('img').attr('src', 'images/aside/btn_open.png');
        // 原本每次打開都會多綁一個 scroll 事件、而且從來不解除，
        // 造成捲動時 aside 一直開開關關；改用 namespace 綁定並在關閉時解除
        $window.off('scroll.aside');
    }

    var $asidButton = $aside.find('button')
        .on('click', function(){
            if(!$aside.hasClass('open')){
                $aside.addClass('open');
                $aside.stop(true).animate({left: openLeft() + 'px'}, duration, 'easeOutBack');
                $asidButton.find('img').attr('src', 'images/aside/btn_close.png');

                // 打開後只要使用者捲動頁面就自動收起來（維持原本的行為）
                $window.off('scroll.aside').on('scroll.aside', $.throttle(1000/1, function() {
                    closeAside();
                }));

            }else{
                closeAside();
            };
        });

    // 視窗大小改變時，關閉狀態下把位置重新對齊
    $window.on('resize', function(){
        if(!$aside.hasClass('open')){
            $aside.css('left', '');
        }
    });

});
