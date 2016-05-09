<?php
/* @var $this SiteController */
$src = Yii::app()->theme->baseUrl . '/resources/images/no_photo.jpg';
if (!empty($product->images) && is_file(Yii::getPathOfAlias('pathroot') . $product->images)) {
    $src = Yii::app()->createAbsoluteUrl($product->images);
}
$params = json_decode($product->params);
$price = 0;
if (!empty($product->price)) {
    $price = number_format($product->price);
}
$price_new = 0;
if (!empty($product->price_new)) {
    $price_new = number_format($product->price_new);
}
$clsAmount = '';
if (empty($product->amount)) {
    $clsAmount = ' out-of-stock';
}
?>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/js/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/js/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/jquery.fancybox.css" media="screen" />
<script type="text/javascript">
    $(document).ready(function() {
        $('.fancybox').fancybox();

    });
</script>

<div class="content-top">
    <div class="wrap">
        <div class="content-full products">
            <h2>CHI TIẾT SẢN PHẨM</h2>
            <!--.product-detail -->
            <div class="product-detail clearfix">
                <div class="imgproduct"><a href="<?php echo $src; ?>" class="fancybox" rel='gal1' title="image"><img src="<?php echo $src; ?>" alt="image" class="imgpro"/></a></div>
                <!--.product-content -->
                <div class="product-content">
                    <h1><?php echo $product->title; ?></h1>
                    <?php if (!empty($product->category->title)) { ?>
                        <div class="price">Thuộc loại: <span><?php echo $product->category->title; ?></span></div>
                    <?php } ?>
                    <div class="price">Ngày đăng: <span><?= date('d-m-Y', $product->created); ?></span></div>
                    <div class="desc">
                        <?php echo $product->fulltext; ?>
                    </div>
                    <div class="clearb"><br/>
                    </div>
                </div>
                <!--End .product-content -->
            </div>
            <!--End .product-detail -->
            <div class="clearb"></div>
            <div class="content-footer"></div>
        </div>
    </div>
</div>
