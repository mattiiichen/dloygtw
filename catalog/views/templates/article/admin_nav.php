<?php
/*
 * 後台共用的三顆按鈕：Article List / Do something New / Upload Image
 * 用法：<?php $this->load->view('templates/article/admin_nav'); ?>
 * 目前所在的頁面會自動加上 is-active。
 */
$adminSeg = $this->uri->segment(1);
?>
<nav class="admin-nav" role="navigation">
	<a href="<?php echo base_url('article/getlist'); ?>" class="admin-nav-btn<?php echo ($adminSeg == 'article') ? ' is-active' : ''; ?>">Article List</a>
	<a href="<?php echo base_url('recently/get_recentlist'); ?>" class="admin-nav-btn<?php echo ($adminSeg == 'recently') ? ' is-active' : ''; ?>">Do something New</a>
	<a href="<?php echo base_url('image/'); ?>" class="admin-nav-btn<?php echo ($adminSeg == 'image') ? ' is-active' : ''; ?>">Upload Image</a>
</nav>
