<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>不要枉費青春-登入</title>
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>favicon.ico">
	<?php echo link_tag('stylesheet/stylesheet.css'); ?>
	<?php echo link_tag('stylesheet/responsive.css'); ?>
	<?php echo link_tag('stylesheet/admin.css'); ?>
</head>
<body class="login-page">

	<!-- 跟前台一樣的 banner（尺寸、各解析度的圖由 stylesheet.css 控制） -->
	<div class="banner"><a href="<?php echo base_url(); ?>"><img></a></div>

	<!-- 登入框：banner 正下方 50px、水平置中 -->
	<div id="login">
		<form action="<?php echo base_url(); ?>bluelagoon/login" method="post" accept-charset="utf-8">
			<input type="hidden" name="<?php echo $csrf['name'];?>" value="<?php echo $csrf['hash'];?>" />

			<h2 class="login-title">後台登入</h2>

			<div class="login-row">
				<label for="aaa">User Name</label>
				<input type="text" name="username" id="aaa" autocomplete="username" autofocus required>
			</div>

			<div class="login-row">
				<label for="bbb">Password</label>
				<input type="password" name="password" id="bbb" autocomplete="current-password" required>
			</div>

			<button type="submit" class="login-btn">登入</button>
		</form>
	</div>

</body>
</html>
