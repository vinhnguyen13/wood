<?php
$sections = (object)Yii::app()->params->sections;
$request = Yii::app()->request;
$baseUrl = Yii::app()->urlManager->parseUrl($request);
$sec = $request->getParam('sec');
?>
<div id="bgmenu"> 
    <!-- #menu -->
    <ul id="menu">
        <li><a href="<?php echo Yii::app()->createUrl('site/index', array())?>" <?=($baseUrl=='site/index') ? 'class="current"' : '';?> >Trang chủ</a></li>
        <li><a href="<?php echo Yii::app()->createUrl('products/index', array())?>" <?=($baseUrl=='products/index') ? 'class="current"' : '';?>>Sản phẩm</a>
            <?php if(!empty($categories)):?>
                <ul class="level2">
                    <?php foreach ($categories as $key=>$cat):?>
                        <li><a href="<?php echo Yii::app()->createUrl('products/index', array('catid'=>$cat->id, 'cslug'=>$cat->slug))?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/arrow-right3.png" alt=""/><?php echo $cat->title;?></a></li>
                    <?php endforeach;?>
                </ul>
            <?php endif;?>
        </li>
        <li><a href="<?php echo Yii::app()->createUrl('content/introduction', array())?>" <?=($baseUrl=='content/introduction') ? 'class="current"' : '';?>>Thương hiệu</a></li>
        <li><a href="<?php echo Yii::app()->createUrl('content/index', array('sec'=>$sections->dichvu))?>" <?=($baseUrl=='content/index' && (!empty($sec) && $sec==2)) ? 'class="current"' : '';?>>Dịch vụ</a></li>
        <li><a href="<?php echo Yii::app()->createUrl('content/index', array('sec'=>$sections->doitac))?>" <?=($baseUrl=='content/index' && (!empty($sec) && $sec==5)) ? 'class="current"' : '';?>>Đối tác</a></li>
        <li><a href="<?php echo Yii::app()->createUrl('content/index', array('sec'=>$sections->giamgia_khuyenmai))?>" <?=($baseUrl=='content/index' && (!empty($sec) && $sec==6)) ? 'class="current"' : '';?>>Giảm giá - Khuyến mãi</a></li>
        <li><a href="<?php echo Yii::app()->createUrl('site/contact', array())?>" <?=($baseUrl=='site/contact') ? 'class="current"' : '';?>>Liên hệ</a></li>
    </ul>
    <!-- End #menu -->
    <div class="datetime"> Thứ sáu - 2/11/2012 </div>
  </div>
  
  
<script type="text/javascript">
$(document).ready(function() {
// Create two variable with the names of the months and days in an array
var monthNames = [ "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12" ]; 
var dayNames= ["Chủ nhật","Thứ hai","Thứ ba","Thứ tư","Thứ năm","Thứ sáu","Thứ bảy"]

// Create a newDate() object
var newDate = new Date();
// Extract the current date from Date object
newDate.setDate(newDate.getDate());
// Output the day, date, month and year   
$('.datetime').html(dayNames[newDate.getDay()] + " - " + newDate.getDate() + '/' + monthNames[newDate.getMonth()] + '/' + newDate.getFullYear());

setInterval( function() {
    // Create a newDate() object and extract the seconds of the current time on the visitor's
    var seconds = new Date().getSeconds();
    // Add a leading zero to seconds value
    $("#sec").html(( seconds < 10 ? "0" : "" ) + seconds);
    },1000);
    
setInterval( function() {
    // Create a newDate() object and extract the minutes of the current time on the visitor's
    var minutes = new Date().getMinutes();
    // Add a leading zero to the minutes value
    $("#min").html(( minutes < 10 ? "0" : "" ) + minutes);
    },1000);
    
setInterval( function() {
    // Create a newDate() object and extract the hours of the current time on the visitor's
    var hours = new Date().getHours();
    // Add a leading zero to the hours value
    $("#hours").html(( hours < 10 ? "0" : "" ) + hours);
    }, 1000);    
});
</script>