<!DOCTYPE html>
<html class="no-js lt-ie9 lt-ie8 lt-ie7">
<html class="no-js lt-ie9 lt-ie8">
<html class="no-js lt-ie9">
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>RouterBoard.com : <?=isset($products['name']) ? $products['name'] : 'Products' ?></title>
	<meta name="viewport" content="width=device-width">


	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<script src="<?=ASSETS_URL?>js/main.js"></script>
	<script>BASE_URL = '<?=BASE_URL?>'</script>
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<?= ASSETS_URL ?>css/rb_style.min.css" type="text/css" media="screen, projection">
	<link rel="stylesheet" href="<?= ASSETS_URL ?>css/navbar.css" type="text/css" media="screen, projection">
	<script src="<?=ASSETS_URL ?>js/vendor/modernizr-2.6.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<?=ASSETS_URL?>css/jquery.confirm.css" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="<?=ASSETS_URL?>js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<?= ASSETS_URL ?>js/libs.js"></script>

	<script src="<?=ASSETS_URL?>js/plugins.js"></script>


	<?if(!EMPTY($this->scripts)) : ?>
		<?foreach($this->scripts as $script) : ?>
			<script src="<?=ASSETS_URL?>js/<?=$script?>"></script>
		<?endforeach?>
	<?endif?>
</head>
<body>
<div class="logo-bar">
	<a class="brand" href="<?=BASE_URL?>products"><img src="<?=ASSETS_URL?>img/rblogo-header
	.png"></a>
</div>
<div class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div style="padding-left: 225px" class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="active" id="menu-icon" style="color:#ffffff;"><a href="<?=BASE_URL?>products">Products</a></li>
					<li id="menu-icon"><a href="#about">How to buy</a></li>
					<li id="menu-icon"><a href="<?=BASE_URL?>auth/logout">About</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>
<div>
	<?php
	require 'views/'.$request->controller.'_'.$request->action.'_view.php';
	?>
</div>
<div class="wrap-footer" style="position: fixed; bottom: 0px; width: 100%">
	<div class="container_16 footer">
		<div class="grid_12 alpha">
			<div style="padding: 15px;"><a href="http://mikrotik.com"><img id="footer-logo"
			                                                               src="http://img.routerboard.com/mtlogo-footer.png"
			                                                               alt="mikrotik" width="100" height="24"/></a></div>
		</div>
		<div class="grid_4 omega" >
			<div style="padding: 15px;">e-mail: sales@mikrotik.com</div>
		</div>
	</div>
</div>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->


</body>
</html>
