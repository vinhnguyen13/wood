<div id="left-side"> 
      <!-- .menu-left -->
      <?php $this->widget('frontend.components.widgets.CategoryWidget', array()); ?>
      
      <!-- .ads1 -->
      <?php if(!empty($advs)):?>
		<?php foreach ($advs as $adv):?>
			<?php if($adv->file_path && $adv->type=='image'):?>      	
			      <div class="ads1"><a href="#"><img src="<?php echo Yii::app()->createAbsoluteUrl($adv->file_path); ?>" alt="" /></a></div>
	      	<?php elseif($adv->file_path && $adv->type=='flash') :?>
	      		<embed width="187" height="280" allowscriptaccess="always" wmode="transparent" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src="<?php echo Yii::app()->createAbsoluteUrl($adv->file_path); ?>">
	      	<?php endif;?>
      	<?php endforeach;?>
      <?php endif;?>
    </div>