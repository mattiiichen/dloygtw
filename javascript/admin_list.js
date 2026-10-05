/*
 * admin_list.js — 後台列表共用（article/getlist、recently/get_recentlist）
 *
 * 只要 <table class="sortable"> 就會自動套用：
 *   1. 表頭 #all 勾選框：全選／全取消；部分勾選時顯示「—」
 *   2. th 有 data-sort-type="number|text" 的欄位可以點擊排序，再點一次反向
 *      td 用 data-sort-value 當排序值（沒有的話用文字內容）
 *      一進頁面的排序狀態寫在 th 的 aria-sort（ascending / descending）
 *   3. 「刪除所選」按鈕 (.js-delete)：沒勾選時不能按，按下去先確認
 */
$(function () {

    $('table.sortable').each(function () {

        var $table = $(this),
            $form = $table.closest('form'),
            $tbody = $table.find('tbody'),
            $all = $table.find('#all'),
            $deleteBtn = $form.find('.js-delete'),
            $count = $form.find('.js-selected-count');

        // ---------- 全選／全取消 ----------
        function rowBoxes() {
            return $tbody.find('input[type="checkbox"]');
        }

        function syncState() {
            var $boxes = rowBoxes(),
                checked = $boxes.filter(':checked').length;

            $all.prop('checked', checked > 0 && checked === $boxes.length);
            $all.prop('indeterminate', checked > 0 && checked < $boxes.length);

            $deleteBtn.prop('disabled', checked === 0);
            $count.text(checked > 0 ? '已選 ' + checked + ' 筆' : '');

            // 勾選的列加底色，比較好認
            $boxes.each(function () {
                $(this).closest('tr').toggleClass('is-selected', this.checked);
            });
        }

        $all.on('change', function () {
            rowBoxes().prop('checked', this.checked);
            syncState();
        });
        $tbody.on('change', 'input[type="checkbox"]', syncState);

        // ---------- 刪除前確認 ----------
        $form.on('submit', function (event) {
            var checked = rowBoxes().filter(':checked').length;
            if (checked === 0) {
                event.preventDefault();
                return;
            }
            if (!window.confirm('確定要刪除選取的 ' + checked + ' 筆資料嗎？刪除後無法復原。')) {
                event.preventDefault();
            }
        });

        // ---------- 排序 ----------
        function sortValue(tr, colIndex) {
            var $td = $(tr).children('td').eq(colIndex),
                v = $td.attr('data-sort-value');
            return v !== undefined ? v : $.trim($td.text());
        }

        function compare(a, b, type) {
            if (type === 'number') {
                return (parseFloat(a) || 0) - (parseFloat(b) || 0);
            }
            // 中文用台灣筆畫順序，英文不分大小寫，空值排最後
            if (a === '' && b !== '') { return 1; }
            if (b === '' && a !== '') { return -1; }
            return String(a).localeCompare(String(b), 'zh-Hant-TW', { sensitivity: 'base', numeric: true });
        }

        var $sortable = $table.find('thead th[data-sort-type]'),
            idIndex = $table.find('thead th.col-id').index();

        $sortable.each(function () {
            var $th = $(this);

            $th.find('.sort-btn').on('click', function () {
                var colIndex = $th.index(),
                    type = $th.data('sort-type'),
                    current = $th.attr('aria-sort'),
                    dir;

                if (current === 'ascending') {
                    dir = 'descending';
                } else if (current === 'descending') {
                    dir = 'ascending';
                } else {
                    // 第一次點：ID、Time 先降冪（新的在上），文字欄先升冪
                    dir = ($th.hasClass('col-id') || $th.hasClass('col-time')) ? 'descending' : 'ascending';
                }

                var rows = $tbody.children('tr').get();
                rows.sort(function (r1, r2) {
                    var result = compare(sortValue(r1, colIndex), sortValue(r2, colIndex), type);
                    if (result === 0 && idIndex > -1) {
                        result = compare(sortValue(r1, idIndex), sortValue(r2, idIndex), 'number');
                    }
                    return dir === 'ascending' ? result : -result;
                });
                $tbody.append(rows);

                $sortable.removeAttr('aria-sort');
                $th.attr('aria-sort', dir);
            });
        });

        syncState();
    });
});
