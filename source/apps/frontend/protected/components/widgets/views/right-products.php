		<?php if(!empty($products)){?>
		<div class="block-right">
          <h2>Sản phẩm bán chạy</h2>
          <ul id="gallery1">
          <?php foreach ($products as $item){?>
          <?php 
				$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
		  		if(!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot').$item->images)){
		  			$src = $item->images;
		  		}
		  		$price = 0;
		  		if(!empty($item->price)){
		  			$price = number_format($item->price);
		  		}
		  		$url = Yii::app()->createUrl('products/view', array('id'=>$item->id, 'slug'=>$item->slug));
          ?>
            <li><a href="<?php echo $url;?>"><img src="<?php echo $src;?>" alt="" /></a><br />
              <strong class="blue"><?php echo $item->title; ?></strong><br />
              <br />
              <strong>Giá:</strong> <strong class="red"><?php echo $price;?> VNĐ</strong></li>
            
              <?php }?>
          </ul>
          <div class="bg-menu-footer"></div>
        </div>
        <?php 
		}
        ?>
        <!-- End .block-right --> 
        
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