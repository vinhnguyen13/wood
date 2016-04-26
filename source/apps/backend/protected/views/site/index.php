<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
Yii::app()->counter->refresh();
?>

<h1>Welcome to <i><?php echo CHtml::encode(Yii::app()->name); ?></i></h1>

online: <?php echo Yii::app()->counter->getOnline(); ?><br />
today: <?php echo Yii::app()->counter->getToday(); ?><br />
yesterday: <?php echo Yii::app()->counter->getYesterday(); ?><br />
total: <?php echo Yii::app()->counter->getTotal(); ?><br />
maximum: <?php echo Yii::app()->counter->getMaximal(); ?><br />
date for maximum: <?php echo date('d.m.Y', Yii::app()->counter->getMaximalTime()); ?>
