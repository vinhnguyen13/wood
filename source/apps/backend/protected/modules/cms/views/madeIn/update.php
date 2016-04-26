<?php
/* @var $this MadeInController */
/* @var $model MadeIn */

$this->breadcrumbs=array(
	'Made Ins'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List MadeIn', 'url'=>array('index')),
	array('label'=>'Create MadeIn', 'url'=>array('create')),
	array('label'=>'View MadeIn', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage MadeIn', 'url'=>array('admin')),
);
?>

<h1>Update MadeIn <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>