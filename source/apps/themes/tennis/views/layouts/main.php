<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<!--slider-->
	<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/js/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/js/jquery.nivo.slider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('#slider').nivoSlider();
		});
	</script>
</head>
<body>
<?php $this->beginContent('//layouts/_partials/header'); ?><?php $this->endContent(); ?>
<?=$content;?>
<?php $this->beginContent('//layouts/_partials/footer'); ?><?php $this->endContent(); ?>

</body>
</html>
