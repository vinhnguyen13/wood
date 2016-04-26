<?php
/* @var $this ManufactoryController */
/* @var $model Manufactory */

$this->breadcrumbs=array(
	'Manufactories'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Manufactory', 'url'=>array('index')),
	array('label'=>'Create Manufactory', 'url'=>array('create')),
	array('label'=>'View Manufactory', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Manufactory', 'url'=>array('admin')),
);
?>

<h1>Update Manufactory <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>