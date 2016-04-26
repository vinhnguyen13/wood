<?php
/* @var $this MadeInController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Made Ins',
);

$this->menu=array(
	array('label'=>'Create MadeIn', 'url'=>array('create')),
	array('label'=>'Manage MadeIn', 'url'=>array('admin')),
);
?>

<h1>Made Ins</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
