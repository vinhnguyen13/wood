<?php
/* @var $this ManufactoryController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Manufactories',
);

$this->menu=array(
	array('label'=>'Create Manufactory', 'url'=>array('create')),
	array('label'=>'Manage Manufactory', 'url'=>array('admin')),
);
?>

<h1>Manufactories</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
