<?php
/* @var $this SiteController */
?>

<div class="content-top">
	<div class="wrap">
		<div class="content-full">
			<h2><?php echo $content->title;?></h2>
			<?php
			if(!empty($content)){
				echo $content->fulltext;
			}
			?>
		</div>

		<div class="clear"></div>
	</div>
</div>

