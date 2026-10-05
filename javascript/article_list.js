/*
 * article_list.js — 後台文章列表 (article/getlist)
 *   1. 表頭勾選框：全選／全取消；個別勾選時會同步表頭狀態（部分勾選顯示「—」）
 *   2. ID / Title / 目錄 / Time 點表頭排序，再點一次切換升冪／降冪
 */
$(function () {

    var $table = $('#articleTable');
    if (!$table.length) { return; }

    var $tbody = $table.find('tbody');
    var $all = $('#all');

    // ---------- 全選／全取消 ----------
    function rowBoxes() {
        return $tbody.find('input[name="articlebox[]"]');
    }

    function syncAllBox() {
        var $boxes = rowBoxes(),
            checked = $boxes.filter(':checked').length;
        $all.prop('checked', checked > 0 && checked === $boxes.length);
        $all.prop('indeterminate', checked > 0 && checked < $boxes.length);
    }

    $all.on('change', function () {
        rowBoxes().prop('checked', this.checked);
        syncAllBox();
    });

    $tbody.on('change', 'input[name="articlebox[]"]', syncAllBox);

    // ---------- 排序 ----------
    // 伺服器端預設是 ID 降冪，所以一開始把 ID 標成 descending
    function compare(a, b, type) {
        if (type === 'number') {
            return (parseFloat(a) || 0) - (parseFloat(b) || 0);
        }
        // 中文標題用台灣的排序規則（筆畫），英文不分大小寫
        return String(a).localeCompare(String(b), 'zh-Hant-TW', { sensitivity: 'base', numeric: true });
    }

    $table.find('thead th[data-sort-type]').each(function () {
        var $th = $(this);

        $th.find('.sort-btn').on('click', function () {
            var colIndex = $th.index(),
                type = $th.data('sort-type'),
                // 同一欄再點一次就反向；換欄位時，ID 和 Time 先降冪（新的在上），文字欄先升冪
                current = $th.attr('aria-sort'),
                dir;

            if (current === 'ascending') {
                dir = 'descending';
            } else if (current === 'descending') {
                dir = 'ascending';
            } else {
                dir = ($th.hasClass('col-id') || $th.hasClass('col-time')) ? 'descending' : 'ascending';
            }

            var rows = $tbody.children('tr').get();
            rows.sort(function (r1, r2) {
                var v1 = $(r1).children('td').eq(colIndex).attr('data-sort-value'),
                    v2 = $(r2).children('td').eq(colIndex).attr('data-sort-value'),
                    result = compare(v1, v2, type);

                // 值相同時用 ID 排，讓結果穩定
                if (result === 0) {
                    result = compare($(r1).children('.col-id').attr('data-sort-value'),
                                     $(r2).children('.col-id').attr('data-sort-value'), 'number');
                }
                return dir === 'ascending' ? result : -result;
            });

            $tbody.append(rows);

            $table.find('thead th[data-sort-type]').removeAttr('aria-sort');
            $th.attr('aria-sort', dir);
        });
    });

    syncAllBox();
});
