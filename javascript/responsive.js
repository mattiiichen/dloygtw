/*
 * responsive.js — 不要枉費青春 RWD 版
 * 手機／平板的漢堡選單開關。
 * 用事件委派 (document.on)，所以 stickyheader.js 複製出來的黑色 header 也能用。
 */
$(function () {

    var DESKTOP_MIN = 1025;

    // 開關選單
    $(document).on('click', '.nav-toggle', function (event) {
        event.preventDefault();
        var $header = $(this).closest('.page-header, .page-header-clone');
        $header.toggleClass('nav-open');
        $(this).attr('aria-expanded', $header.hasClass('nav-open') ? 'true' : 'false');
    });

    // 點了選單連結就收起來
    $(document).on('click', '.primary-nav a', function () {
        $(this).closest('.nav-open').removeClass('nav-open')
            .find('.nav-toggle').attr('aria-expanded', 'false');
    });

    // 視窗拉回桌機寬度時，把選單狀態清掉
    var resizeTimer;
    $(window).on('resize', function () {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(function () {
            if (window.innerWidth >= DESKTOP_MIN) {
                $('.nav-open').removeClass('nav-open')
                    .find('.nav-toggle').attr('aria-expanded', 'false');
            }
        }, 150);
    });
});
