<?php
/* @var $this MadeInController */
/* @var $model MadeIn */

$this->breadcrumbs=array(
	'Made Ins'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List MadeIn', 'url'=>array('index')),
	array('label'=>'Manage MadeIn', 'url'=>array('admin')),
);
?>

<h1>Create MadeIn</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>