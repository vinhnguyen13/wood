<?php 
$sections = (object)Yii::app()->params->sections;
$selecttitle = Yii::app()->request->getParam('selecttitle');
$cart = Yii::app()->session->readSession('cart');
$count = 0;
if(!empty($cart)){
	$cart = json_decode($cart);
	$count = count($cart);				
}
?>
<div id="header">
    <div id="logo"><a href="<?php echo Yii::app()->createUrl('site/index');?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/logo.png" alt="TENNIS XUXU"/></a></div>
    
    <!-- #search -->
    <div id="search">
      <form method="post" action="<?php echo Yii::app()->createUrl('content/search');?>" id="form" enctype="multipart/form-data">
        <fieldset class="bgsearch">
          <input type="text" name="keyword"  id="keyword" placeholder="Từ khóa tìm kiếm" />
        </fieldset>
        <input class="buttonsearch" name="send" type="submit" value="Tìm kiếm" />
      </form>
    </div>
    <!-- End #search -->     
  </div>