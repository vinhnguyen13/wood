<?php $this->beginContent('//layouts/main'); ?>
<!-- #page -->
<div id="page"> 
  <!-- #header -->
  <?php $this->beginContent('//layouts/_partials/header'); ?><?php $this->endContent(); ?>
  <!--End #header -->
  
  <div class="clearb"></div>
  <!-- #bgmenu -->
  <?php $this->beginContent('//layouts/_partials/menu'); ?>
  <?php $this->endContent(); ?>
  <!-- End #bgmenu -->
  <div class="clearb"></div>
  
  <!-- #contenu -->
  <div id="contenu"> 
    
    <!-- #left-side -->
<!--    --><?php //$this->widget('frontend.components.widgets.LeftWidget', array()); ?>
    <!-- End #left-side --> 
    
    <!-- #center -->
    <div id="center"> 
      
      <!-- #center-left -->
      <div id="center-left"> 
        
        <!-- #slidetop -->
        <?php $this->widget('frontend.components.widgets.SlideWidget', array()); ?>
        <!--End  .slidetop -->
        <div class="clearb"></div>
        
        <!--  .block-content-small -->
        <?php echo $content;?>
        <!-- End .block-content-small --> 
        
      </div>
      <!--End #center-left --> 
      
      <!-- #center-right -->
      <?php $this->widget('frontend.components.widgets.RightWidget', array()); ?>
      <!--End #center-right -->
      
      <div class="clearb"></div>
    </div>
    <!-- End #center -->
    
    <div class="clearb"></div>
    
    <!-- #footer -->
    <?php $this->beginContent('//layouts/_partials/footer'); ?><?php $this->endContent(); ?>
    <!-- End #footer --> 
    
  </div>
  <!-- End #contenu --> 
</div>
<!-- End #page -->
<?php $this->endContent(); ?>