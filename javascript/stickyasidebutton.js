$(function () {

    /*
     * Sticky header
     */
    $('.page-main > aside button.openclose').each(function () {
		
        var $window = $(window), // Window ����
          	$header = $(this),  

            
            //�qHTML�W����header�������Z�� = header��top��m + header������
//            threshold = $header.offset().top + $header.outerHeight();
           
            threshold = 586;

 
        
        // �w�ﱲ�ʮɪ�����B�z�A���ƭ���C��̦h15��
        $window.on('scroll', $.throttle(100 / 15, function () {
            if ($window.scrollTop() < threshold) {
            
               $header.css('top',threshold-$window.scrollTop());
            } else {
              	 $header.css('top','86px');
            }
          
        }));

        // Ĳ�o���ʨƥ�A�M�w��l��m
        $window.trigger('scroll');
    });

});
