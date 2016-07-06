<div id="headertop">
	<div id="mainmenu">
		<?php
		$this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'Home', 'url'=>array('/site/index')),
//				array('label'=>'Danh Mục', 'url'=>array('/cms/categories/admin'), 'active'=> (Yii::app()->controller->id=='categories') ? true : false),
				array('label'=>'Giới Thiệu', 'url'=>Yii::app()->createUrl('/cms/introduction/admin'), 'active'=> (Yii::app()->controller->id=='introduction') ? true : false),
				array('label'=>'Sản Phẩm', 'url'=>array('/cms/products/admin'), 'active'=> (Yii::app()->controller->id=='products') ? true : false),
//				array('label'=>'Hãng', 'url'=>Yii::app()->createUrl('/cms/manufactory/admin'), 'active'=> (Yii::app()->controller->id=='news') ? true : false),
//				array('label'=>'Xuất xứ', 'url'=>Yii::app()->createUrl('/cms/madeIn/admin'), 'active'=> (Yii::app()->controller->id=='news') ? true : false),
				array('label'=>'Dịch vụ', 'url'=>Yii::app()->createUrl('/cms/services/admin'), 'active'=> (Yii::app()->controller->id=='services') ? true : false),
// 				array('label'=>'Đặt Hàng', 'url'=>Yii::app()->createUrl('/cms/payment/admin'), 'active'=> (Yii::app()->controller->id=='payment') ? true : false),
				array('label'=>'Hình Ảnh - Quảng Cáo', 'url'=>array('/cms/advertising/admin'), 'active'=> (Yii::app()->controller->id=='advertising') ? true : false),
// 				array('label'=>'Đơn Hàng', 'url'=>array('/cms/payDetail/admin'), 'active'=> (Yii::app()->controller->id=='payDetail') ? true : false),
			),
		)); ?>
	</div><!-- mainmenu -->
	<?php if(!Yii::app()->user->isGuest): ?>
	<div id="topuser">
		Welcome <a rel="userMenus" class="anchorclass" href="#"><strong><?php echo Yii::app()->user->name; ?></strong></a>
        <span>|</span> <?php echo CHtml::link("Log out", array('/user/user/logout'))?>
   	</div>
    <?php endif; ?>
</div>
<style>
/* drop down list */
#mainmenu ul { list-style: none; margin: 0; padding: 0; position: relative; height: 30px; }
#mainmenu ul li { display: block; float: left; overflow: visible; }
#mainmenu ul li span{color: #FFFFFF;font-size: 12px;font-weight: bold;padding: 5px 8px;display: block;float: left;}
#mainmenu ul li:hover > ul { display: block; }
#mainmenu ul li a { float: left; display: block; }
#mainmenu ul li ul { display: none; position: absolute; top: 70%;background: #165d8d; color: #fff; height: auto;border-radius: 7px;}
#mainmenu ul li ul li a { color: #ccc; padding: 4px 14px; display: block; }
</style>