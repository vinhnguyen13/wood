<?php 
$url = 'https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=91+Th%C3%A0nh+Th%C3%A1i,+14,+Qu%E1%BA%ADn+10,+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=37.188995,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=91+Th%C3%A0nh+Th%C3%A1i,+14,+Qu%E1%BA%ADn+10,+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam&amp;ll=10.7736571,106.6646504&amp;spn=0.005638,0.010568&amp;t=m&amp;z=14&amp;output=embed';
?>
<div id="center-right"> 
        <!-- .support-address -->
        <div class="support-address">
          <h2>Hỗ trợ khách hàng</h2>
          <div class="clearb"></div>
          <p><strong></strong> <span class="telspecial">08.0000.999</span></p>
          <div class="clearb"></div>
          <p><strong></strong> <span class="telspecial">090.0000.999</span></p>
          <div class="bottombg"></div>
        </div>
        <!-- End .support-address --> 
        <!-- .support-address -->
        <div class="support-address support-address-mar">
          <h3>Địa chỉ cửa hàng</h3>
          <p class="chatyahoo">999 Thành Thái, Phường 14, Quận 10, TP Hồ Chí Minh</p>
          <p class="checkmaps"><a href="<?php echo $url;?>">Xem bản đồ <img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/arrow-right2.png" alt="" /></a> <a href="<?php echo $url;?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/maps.png" alt="" class="maps" /></a></p>
          <div class="bottombg1"></div>
        </div>
        <!-- End .support-address -->
        <div class="clearb"></div>
        <!-- .block-right -->
        <?php 
        if(Yii::app()->layout != 'products'){
        	$this->render('right-products', array('advs'=>$advs, 'products'=>$products));
        }
        ?>
      </div>