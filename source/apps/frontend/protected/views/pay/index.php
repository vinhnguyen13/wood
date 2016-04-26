<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div class="block-content-large content-margin">
  <h2>Giỏ hàng</h2>
  <h4>Giỏ Hàng của bạn</h4>
  <?php if(!empty($cart)):?>
  <p class="checkinfo">Bạn vui lòng kiểm tra thông tin trước khi thanh toán</p>
  <table class="list-cart">
    <tr>
      <td class="td1">STT</td>
      <td class="td2">Sản phẩm</td>
      <td class="td3">Số lượng</td>
      <td class="td3">Size</td>
      <td class="td3">Màu</td>
      <td class="td4">Giá Sản phẩm</td>
      <td class="td5"></td>
    </tr>    
    <?php 
    $i=1;
    $total = 0;
    foreach ($cart as $key=>$item):
    	$cls = 'color1';
    	if($i%2==0){
    		$cls = 'color2';
    	}
    	$product = Products::model()->findByPk($item->product_id);
    	$price = $pname = '';
    	$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
    	if(!empty($product)){
    		$pname = $product->title;
    		$price = number_format($product->price_new);    		
	  		if(!empty($product->images) && is_file(Yii::getPathOfAlias('pathroot').$product->images)){
	  			$src = $product->images;
	  		}
    		$total +=  $product->price_new * $item->amount;
    	}
    ?>
    <tr class="pro_<?php echo $i;?>">
      <td class="<?php echo $cls;?>"><?php echo $i;?></td>
      <td class="<?php echo $cls;?>"><img src="<?php echo Yii::app()->createAbsoluteUrl($src);?>" alt="" class="product" width="41" height="32"/>
        <p class="product-text"><?php echo $pname;?></p></td>
      <td class="<?php echo $cls;?>"><?php echo $item->amount;?></td>
      <td class="<?php echo $cls;?>"><?php echo $item->size;?></td>
      <td class="<?php echo $cls;?>"><?php echo $item->color;?></td>
      <td class="<?php echo $cls;?>"><?php echo $price;?> VNĐ</td>
      <td class="<?php echo $cls;?>">
      <?php 
      echo CHtml::ajaxLink(
      '<img src="'.Yii::app()->theme->baseUrl.'/resources/images/cancel.png" alt="" />', 
      array('/pay/delcart/id/'.$key), 
      array(
      	'success' => "function( data )
                  {
                    $('.pro_".$i."').fadeOut();
                    window.setTimeout('location.reload()', 1000);
                  }",
      )
      );
      ?>
      </td>
    </tr>
    <?php
    $i++; 
    endforeach;
    ?>
  </table>
  <div class="clearb"></div>
  <input class="button-thanhtoan" name="thanhtoan" id="thanhtoan" type="button" value="Thanh toán" onClick="showdiv('showhideform');$(this).hide();" />
  <p class="total">Tồng cộng: <span><?php echo number_format($total);?> VNĐ</span></p>
  <div class="clearb"></div>
  <?php else:?>
		<p class="checkinfo">Chưa có sản phẩm nào trong giỏ hàng</p>  		
  <?php endif;?>
  <div id="showhideform" style="display:none;">
    <h4>thông tin liên hệ</h4>
    <fieldset class="fieldset-contact">
      <form method="post" action="" id="form" enctype="multipart/form-data">
        <p class="infotrue"><span>*</span> Thông tin băt buộc</p>
        <div class="input">
          <label for="">Họ tên: <span>*</span></label>
          <input type="text" name="name"  id="name" />
        </div>
        <div class="input">
          <label for="">Địa chỉ: <span>*</span></label>
          <input type="text" name="address"  id="address" />
        </div>
        <div class="input">
          <label for="">Số ĐT: <span>*</span></label>
          <input type="text" name="tel"  id="tel" />
        </div>
        <div class="input">
          <label for="">Email: <span>*</span></label>
          <input type="text" name="email"  id="email" />
        </div>
        <div class="clearb"></div>
        <div class="input">
          <label for="">Nội dung:</label>
          <textarea name="noidung" id="noidung"></textarea>
        </div>
        <?php
		       echo CHtml::ajaxButton(
		            'Gửi thông tin',
		            Yii::app()->createUrl('pay/payment', array()),
		            array( 
		            	'type'=>'POST',
		            	'beforeSend' => 'function(){
				            
				        }',
		            	'success'=>'function(resp)
                         {
                         	var obj = jQuery.parseJSON(resp);
                         	if(obj.stt=="OK"){
								$(".warning").css({"background-color":"#DEF4FF"});
                         		$(".warning").show();
								$("#updateStt").html(obj.msg);
								window.setTimeout("location.reload()", 800);	
							}else if(obj.stt=="CANCEL"){
								$(".warning").css({"background-color":"red"});
								$(".warning").show();
								$("#updateStt").html(obj.msg); 
							}
                         }',
		            ),
		            array('update'=>'.warning', 'class'=>'buttonsent', 'id'=>'btnPayment')
		//this is the update selector of yours $('#update_selector').load(url);
		        );
		?>
        <div class="warning" style="display: none;"><a href="#"><img src="images/cancel.png" alt=""/></a>
          <p id="updateStt"></p>
        </div>
      </form>
    </fieldset>
  </div>
  <div class="clearb"></div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div class="content-footer"></div>
</div>
