$(function () {

    /*
     * Sticky header
     */
    $('.page-header').each(function () {
		
        var $window = $(window), // Window ����
            $header = $(this),   // header

            // header���ƥ�
            $headerClone = $header.contents().clone(),

            // header�ƥ���container
            $headerCloneContainer = $('<div class="page-header-clone"></div>'),

            
            //�qHTML�W����header�������Z�� = header��top��m + header������
//            threshold = $header.offset().top + $header.outerHeight();
           
            threshold = 486;

        // �Nheader���ƥ����Jcontainer
        $headerCloneContainer.append($headerClone);

        // �Ncontainer���Jbody���̫�
        $headerCloneContainer.appendTo('body');

        
        // �w�ﱲ�ʮɪ�����B�z�A���ƭ���C��̦h15��
        $window.on('scroll', $.throttle(1000 / 15, function () {
            if ($window.scrollTop() > threshold) {
                $headerCloneContainer.addClass('visible');
            } else {
                $headerCloneContainer.removeClass('visible');
            }
          
        }));

        // Ĳ�o���ʨƥ�A�M�w��l��m
        $window.trigger('scroll');
    });

});
