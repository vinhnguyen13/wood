<?php
/* @var $this MadeInController */
/* @var $model MadeIn */

$this->breadcrumbs=array(
	'Made Ins'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List MadeIn', 'url'=>array('index')),
	array('label'=>'Create MadeIn', 'url'=>array('create')),
	array('label'=>'Update MadeIn', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete MadeIn', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage MadeIn', 'url'=>array('admin')),
);
?>

<h1>View MadeIn #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
	),
)); ?>
