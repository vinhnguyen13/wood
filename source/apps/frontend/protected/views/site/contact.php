<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . ' - Contact Us';
$this->breadcrumbs=array(
	'Contact',
);
$url = 'https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=91+Th%C3%A0nh+Th%C3%A1i,+14,+Qu%E1%BA%ADn+10,+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=37.188995,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=91+Th%C3%A0nh+Th%C3%A1i,+14,+Qu%E1%BA%ADn+10,+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam&amp;ll=10.7736571,106.6646504&amp;spn=0.005638,0.010568&amp;t=m&amp;z=14&amp;output=embed';
?>
<div class="block-content-large content-margin">
	<h2>Liên hệ</h2>
	<h4>thông tin liên hệ</h4>
	 <fieldset class="fieldset-contact">
	   <?php $form=$this->beginWidget('CActiveForm', array(
			'id'=>'contact-form',
			'enableClientValidation'=>true,
			'clientOptions'=>array(
				'validateOnSubmit'=>true,
			),
		)); ?>
		
			<p class="infotrue"><?php echo sprintf(Lang::t('contact', 'Fields with %s are required'), '<span class="required">*</span>');?>.</p>
			<div class="flash-success">
				<?php echo Yii::app()->user->getFlash('contact'); ?>
			</div>
			<?php echo $form->errorSummary($model); ?>
		
			<div class="input">
				<?php echo $form->labelEx($model,'name'); ?>
				<?php echo $form->textField($model,'name'); ?>
				<?php echo $form->error($model,'name'); ?>
			</div>
		
			<div class="input">
				<?php echo $form->labelEx($model,'email'); ?>
				<?php echo $form->textField($model,'email'); ?>
				<?php echo $form->error($model,'email'); ?>
			</div>
		
			<div class="input">
				<?php echo $form->labelEx($model,'subject'); ?>
				<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128)); ?>
				<?php echo $form->error($model,'subject'); ?>
			</div>
		
			<div class="input">
				<?php echo $form->labelEx($model,'body'); ?>
				<?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?>
				<?php echo $form->error($model,'body'); ?>
			</div>
			
			<div class="input">
			<?php echo CHtml::activeLabel($model, 'verifyCode'); ?>
			<?php $this->widget('CCaptcha', array(
			                                    'buttonLabel'=>'Refresh'
			                        )); ?>
			<?php echo CHtml::error($model, 'verifyCode'); ?>
			</div>
		
			<div class="input buttons">
				<?php echo CHtml::submitButton(Lang::t('contact', 'Send Info'), array('class'=>'buttonsent')); ?>
				<?php echo CHtml::button(Lang::t('contact', 'Reset'), array('type'=>'reset', 'class'=>'buttonclear')); ?>
			</div>
		
		<?php $this->endWidget(); ?>
	</fieldset>    
	<div class="map-contact">
		<iframe width="573" scrolling="no" height="327" frameborder="0" class="maps-iframe" src="<?php echo $url;?>" marginwidth="0" marginheight="0"></iframe>
	</div>
	<div class="content-footer"></div>
</div>
