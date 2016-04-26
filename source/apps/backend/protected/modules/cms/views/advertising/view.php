<?php
/* @var $this AdvertisingController */
/* @var $model Advertising */

$this->breadcrumbs=array(
	'Advertisings'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Advertising', 'url'=>array('index')),
	array('label'=>'Create Advertising', 'url'=>array('create')),
	array('label'=>'Update Advertising', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Advertising', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Advertising', 'url'=>array('admin')),
);
?>

<h1>View Advertising #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'description',
		'type',
		'file_path',
		'link',
		'params',
		'order',
		'created',
		'published',
	),
)); ?>
