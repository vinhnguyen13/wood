<div id="slidetop">
          <div class="bg-slide"></div>
          <!-- .slides_container -->
          <div class="slides_container">
          	<?php if(!empty($slides)):?>
          		<?php foreach ($slides as $slide):?>
          			<?php if($slide->file_path && $slide->type=='image'):?>
          			<div class="slide"> <a href="#" title=""><img src="<?php echo Yii::app()->createUrl($slide->file_path); ?>" alt=""></a></div>
          			<?php endif;?>
          		<?php endforeach;?>
          	<?php else:?> 
	            <!-- .slide -->
	            <div class="slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide1.jpg" alt=""></a></div>
	            <!-- .slide -->
	            <div class="slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide2.jpg" alt=""></a></div>
	            <!-- .slide -->
	            <div class="slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide3.jpg" alt=""></a></div>
	            <!-- .slide -->
	            <div class="slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide4.jpg" alt=""></a></div>
			<?php endif;?>            
          </div>
          <!-- End .slides_container --> 
        </div>