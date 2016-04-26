<?php
$sections = (object)Yii::app()->params->sections;
$request = Yii::app()->request;
$baseUrl = Yii::app()->urlManager->parseUrl($request);
$sec = $request->getParam('sec');
?>
<div class="header">
    <div class="header-top">
        <div class="wrap">
            <div class="top-nav">
                <ul>
                    <li <?=($baseUrl=='site/index') ? 'class="active"' : '';?>><a href="/">Trang chủ</a></li>
                    <li <?=($baseUrl=='content/introduction') ? 'class="active"' : '';?>><a href="<?php echo Yii::app()->createUrl('content/introduction', array())?>">Giới thiệu</a></li>
                    <li <?=($baseUrl=='content/index' && (!empty($sec) && $sec==$sections->dichvu)) ? 'class="active"' : '';?>><a href="<?php echo Yii::app()->createUrl('content/index', array('sec'=>$sections->dichvu))?>">Dịch vụ</a></li>
                    <li <?=($baseUrl=='content/index' && (!empty($sec) && $sec==$sections->doitac)) ? 'class="active"' : '';?>><a href="<?php echo Yii::app()->createUrl('content/index', array('sec'=>$sections->doitac))?>">Đối tác</a></li>
                    <li <?=($baseUrl=='site/contact') ? 'class="active"' : '';?>><a href="<?php echo Yii::app()->createUrl('site/contact', array())?>">Liên hệ</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="wrap">
            <div class="logo">
                <a href="index.html"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/logo.png" alt=""></a>
            </div>
            <div class="header-right">
                <ul class="follow_icon">
                    <li><a href="#"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/fb.png" alt=""></a></li>
                    <li><a href="#"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/rss.png" alt=""></a></li>
                    <li><a href="#"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/tw.png" alt=""></a></li>
                    <li><a href="#"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/g+.png" alt=""></a></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="search_box">
                <form>
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
                </form>
            </div>
        </div>
    </div>
</div>