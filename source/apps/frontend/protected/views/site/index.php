<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$advs = Advertising::model()->findAllByAttributes(array('position'=>'event'), array(
        'order' => 'created desc',
        'limit' => '1',
    ));
?>

<?php if(!empty($advs)):?>
	<script type="text/javascript">
	$(document).ready(function(){
		$( ".events" ).dialog({
			/*
		    dragStart: function() {
		        $( this ).hide();
		    },
		    dragStop: function() {
		        $( this ).show();
		    }
		    */
			title: "Events",
			modal: true,
			draggable: false,
			resizable: false,
			width: 'auto',
		});
	});
	</script>
	<div class="events" style="display: none;">	
	<?php foreach ($advs as $adv):?>
		<?php if($adv->file_path && $adv->type=='image'):?>
			<a href="<?php echo $adv->link;?>" target="_blank"><img  src="<?php echo Yii::app()->createAbsoluteUrl($adv->file_path); ?>" /></a>
		<?php endif;?>
	<?php endforeach;?>
	</div>
<?php endif;?>

<div class="block-content-large content-margin">
<h2>sẢN PHẨM Mới</h2>
<!-- .slideshow -->
<?php if(!empty($products2)):?>
<div class="slideshow"> 
 <a href="javascript:void(0);" id="gallery-prev"><span></span></a>
 <a href="javascript:void(0);" id="gallery-next"><span></span></a>
<div id="gallery-wrap">
    <ul id="gallery">  
    	<?php 
		foreach ($products2 as $item) {
	  		$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
	  		if(!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot').$item->images)){
	  			$src = $item->images;
	  		}
	  		$price = 0;
	  		if(!empty($item->price_new)){
	  			$price = number_format((int)$item->price_new);
	  		}
	  		$url = Yii::app()->createUrl('products/view', array('id'=>$item->id, 'slug'=>$item->slug));
		  ?>  
        <li><a href="<?php echo $url;?>"><img src="<?php echo $src;?>" alt="" /></a><br />
        <strong class="blue"><?php echo $item->title;?></strong><br /><br /><strong>Giá:</strong> <strong class="red"><?php echo $price;?> VNĐ</strong></li>
        <?php 
		}
        ?>
    </ul>
</div>
</div>
<?php endif;?>
<!-- End .slideshow -->
<div class="content-footer"></div>
</div>

<div class="block-content-large"> 
	  
	  <h3>SẢN PHẨM BÁN CHẠY</h3>
	  <!--.items-content -->
	  <div class="items-content">
	  	<?php 
		  if(!empty($products)):
		  	foreach ($products as $item) {
		  		$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
		  		if(!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot').$item->images)){
		  			$src = $item->images;
		  		}
		  		$price = 0;
		  		if(!empty($item->price_new)){
		  			$price = number_format((int)$item->price_new);
		  		}
		  		$url = Yii::app()->createUrl('products/view', array('id'=>$item->id, 'slug'=>$item->slug));
		  ?>
	    <div class="items">
	    <?php if(!empty($item->promotions)):?>
<!-- 	    	<span class="khuyenmai"></span>  -->
	    <?php endif;?>
	    <?php if(!empty($item->new)):?>
<!-- 	    	<span class="new-pro"></span>  -->
	    <?php endif;?>
	    <a href="<?php echo $url;?>" class="bgImg"><img src="<?php echo $src;?>" alt="" width="153" height="153" /></a><br />
	      <strong class="blue"><a href="<?php echo $url;?>"><?php echo $item->title;?></a></strong><br />
	      <br />
	      <strong>Giá:</strong> <strong class="red"><?php echo $price;?> VNĐ</strong> </div>
	    <?php 
		  	}		  	
		  ?>
	    <div class="clearb"></div>
	    <?php endif;?>
	  </div>
	  <!--ENd .items-content -->
	  
	  <div class="content-footer"></div>
	</div>