<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
<meta name="Description" content="Description" lang="fr" xml:lang="fr" />
<meta name="Keywords" content="Keywords"/>
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/libs.css" rel="stylesheet" type="text/css" media="all" />
<link href=http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.1/themes/ui-lightness/jquery-ui.css rel="stylesheet" type="text/css" media="all" />


<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery-ui.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/carouselslideshow.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/slides.min.jquery.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/ddaccordion.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery.jqzoom-core.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery.resizecrop-1.0.3.js" type="text/javascript"></script>

<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/script.js" type="text/javascript"></script>
</head>
<body>
	<?php echo $content; ?>
</body>
</html>
