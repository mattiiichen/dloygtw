
$(function () {

    /*
     * Back-toTop button (Smooth scroll)
     */
    $('ul.simplePagerNav > li:not([class$="currentPage"]) > a').each(function () {

       
        // �˴�html�Bbody��̬��i���ʤ���
        var $el = $(scrollableElement('html', 'body'));

        // �]�w���s���I���ƥ�
        $(this).on('click', function (event) {
            event.preventDefault();
            $el.animate({ scrollTop: 500 }, 0);
        });
    });

    // �z�LscrollTop�˴��i�Τ��������
    // http://www.learningjquery.com/2007/10/improved-animated-scrolling-script-for-same-page-links#update4
    function scrollableElement (elements) {
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

});

