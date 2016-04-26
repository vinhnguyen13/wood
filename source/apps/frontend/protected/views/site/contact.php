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

<div class="content-top">
	<div class="wrap">
		<div class="section group">
			<div class="col span_2_of_contact">
				<div class="contact-form">
					<h3>Contact Us</h3>
					<?php $form=$this->beginWidget('CActiveForm', array(
						'id'=>'contact-form',
						'enableClientValidation'=>true,
						'clientOptions'=>array(
							'validateOnSubmit'=>true,
						),
					)); ?>
						<div class="flash-success">
							<?php echo Yii::app()->user->getFlash('contact'); ?>
						</div>
						<div>
							<span><label>Name</label></span>
							<span><?php echo $form->textField($model,'name'); ?></span>
							<span><?php echo $form->error($model,'name'); ?></span>
						</div>
						<div>
							<span><label>E-Mail</label></span>
							<span><?php echo $form->textField($model,'email'); ?></span>
							<span><?php echo $form->error($model,'email'); ?></span>
						</div>
						<div>
							<span><label>Subject</label></span>
							<span><?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128)); ?></span>
							<span><?php echo $form->error($model,'subject'); ?></span>
						</div>
						<div>
							<span><label>Body</label></span>
							<span><?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?></span>
							<span><?php echo $form->error($model,'body'); ?></span>
						</div>
						<div>
							<span><?php echo CHtml::activeLabel($model, 'verifyCode'); ?></span>
							<!--			--><?php //$this->widget('CCaptcha', array(
							//			                                    'buttonLabel'=>'Refresh'
							//			                        )); ?>
							<span><?php echo CHtml::error($model, 'verifyCode'); ?></span>
						</div>
						<div>
							<span><input type="submit" value="Submit"></span>
						</div>
					<?php $this->endWidget(); ?>
				</div>
			</div>
			<div class="col span_1_of_contact">
				<div class="contact_info">
					<h3>Find Us Here</h3>
					<div class="map">
						<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<?php echo $url;?>"></iframe><br><small><a href="<?php echo $url;?>" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
					</div>
				</div>
				<div class="company_address">
					<h3>Company Information :</h3>
					<p>500 Lorem Ipsum Dolor Sit,</p>
					<p>22-56-2-9 Sit Amet, Lorem,</p>
					<p>Phone:(00) 222 666 444</p>
					<p>Fax: (000) 000 00 00 0</p>
					<p>Email: <span>info[at]mycompany.com</span></p>
					<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>



