<link rel="stylesheet" href="<?= ASSETS_URL ?>css/printProduct.css" type="text/css" media="print"/>
<link rel="stylesheet" href="<?= ASSETS_URL ?>css/products_view.css" type="text/css"/>
<script src="<?=ASSETS_URL?>js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
<meta name="description" content="<?=$products['description']?>">
<div class="wrap-spot"></div>
<div class="wrap-body">
	<div class="proddescription container_16">
		<div class="grid_16">
			<div class="grid_5 alpha pictures_list">
				<div id="largeShow"></div>
				<div class="slideshow blinds_slideshow">
					<ul>
						<li style="display: none;"><img src="<?=ASSETS_URL?>img/<?=$more_info['slideshow_pic_m']?>" alt=""></li>
					</ul>
					<div class="blinds_container" onclick=""
					     style="position: relative; display: block; width: 200px; height: 200px; background-image: url(<?=ASSETS_URL?>img/<?=$more_info['slideshow_pic_m']?>); background-color: transparent; background-position: 0px 0px; background-repeat: no-repeat;">
					</div>
					<div id="pupup" style="display: none">
						<a rel="prettyPhoto" href="<?=ASSETS_URL?>img/<?=$more_info['slideshow_pic_l']?>"></a>
					</div>
				</div>
				<div id="imgthumbs"></div>
				<br/><br/>

				<div class="filesbox" style="z-index:99;"><strong>More info:</strong>
					<ul>
						<?
							foreach ($more_info as $key=>$value){
								unset($more_info[$key]);
								$more_info[ucfirst($key)] = $value;
							}

						unset($more_info['Slideshow_pic_s']);
						unset($more_info['Slideshow_pic_m']);
						unset($more_info['Slideshow_pic_l']);
						if(isset($more_info)) { foreach(array_slice($more_info, 1) as $key => $value) {
							$more_info = str_replace('_', ' ', $key);
							if($more_info == 'High res image') {?>
								<li> <?=$more_info?>: <a href="<?=ASSETS_URL?>img/<?=$value?>">[1]</a></li>
							<? } elseif ($more_info == 'Routerboot'){?>
								<li> <?=$more_info?>: <a href="<?=ASSETS_URL?>pdf/<?=$value?>"><?=$value?></a></li>
							<? }else{ ?>
								<li> <?=$more_info?>: <?=$value?></li>
							<? }?>
						<? }} ?>

						<li>Purchase questions: <a
								href="mailto:sales@mikrotik.com?subject=Question%20about%20<?= $products['name'] ?>">email
								sales</a>
						</li>
						<li><a href="http://wiki.mikrotik.com/wiki/Manual:TOC">RouterOS software manual</a></li>
					</ul>
				</div>
				<br/></div>
			<div class="grid_11 omega"><h1><?=$products['name']?></h1>

				<p><?=str_replace('/', '<br /><br />', $products['description'])?></p></div>
		</div>
	</div>
	<div class="prodtable container_16">
		<div class="grid_16">
			<div class="grid_16"><h2>Product specifications</h2>
				<table class="parameters_table">
					<tbody>

					<tr>
						<th colspan="2" class="alignleft">Details</th>
					</tr>
					<? if (isset($products_spec)) : foreach (array_slice($products_spec, 1) as $key => $product_spec) : ?>
						<? $products_spec[$key] = str_replace('_', ' ', $key) ?>
						<tr>
							<td><?=$products_spec[$key]?></td>
							<td><?=$product_spec?></td>
						</tr>
					<? endforeach; endif ?>
					</tbody>
				</table>
				<a name="tests"></a>

				<div class="related_products_title"></div>
			</div>
		</div>
	</div>
</div>