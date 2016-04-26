<?php
/* @var $this ManufactoryController */
/* @var $model Manufactory */

$this->breadcrumbs=array(
	'Manufactories'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Manufactory', 'url'=>array('index')),
	array('label'=>'Manage Manufactory', 'url'=>array('admin')),
);
?>

<h1>Create Manufactory</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>