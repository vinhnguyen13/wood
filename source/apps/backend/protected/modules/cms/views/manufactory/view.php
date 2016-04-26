<?php
/* @var $this ManufactoryController */
/* @var $model Manufactory */

$this->breadcrumbs=array(
	'Manufactories'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Manufactory', 'url'=>array('index')),
	array('label'=>'Create Manufactory', 'url'=>array('create')),
	array('label'=>'Update Manufactory', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Manufactory', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Manufactory', 'url'=>array('admin')),
);
?>

<h1>View Manufactory #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'made_in',
	),
)); ?>
