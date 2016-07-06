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
<div class="content-top products-detail">
    <div class="wrap">
        <div class="content-full">
            <h2>CHI TIẾT: <?php echo $product->title; ?></h2>
            <img src="<?php echo $src; ?>" width="800" alt="image" class="imgpro"/>
            <?=$product->fulltext;?>
        </div>

        <div class="clear"></div>
    </div>
</div>

<?php if (!empty($products)):?>
    <?php
    $title = !empty($section) ? $section->title : '';
    ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/js/jquery.fancybox.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/jquery.fancybox.css" media="screen" />
    <script type="text/javascript">
        $(document).ready(function() {
            $('.fancybox').fancybox();

        });
    </script>
    <div class="content-top products">
        <div class="wrap">
            <div class="content-full">
                <h2>Sản phẩm khác</h2>
                <?php
                if (!empty($products)):
                    foreach ($products as $item) {
                        $src = $item->images;
                        $url = Yii::app()->createUrl('products/view', array('id' => $item->id, 'slug' => $item->slug));
                        ?>
                        <div class="col_1_of_4 span_1_of_4 item">
                            <a class="fancybox" href="<?php echo $src;?>" data-fancybox-group="gallery" title="<?=$item->title;?>">
                                <img src="<?php echo $src;?>" alt=""><span style="clear: both"> </span>
                            </a>
                            <div class="caption">
                                <h4><a href="<?=$url;?>"><?=Util::partString(strip_tags($item->title), 0, 15); ?></a></h4>
                                <p><?=Util::partString(strip_tags($item->introtext), 0, 100); ?></p>
                                <a href="<?=$url;?>" class="btn">read more</a>
                            </div>
                        </div>
                        <?php
                    }
                endif;
                ?>
                <div class="clear"></div>
            </div>
        </div>
    </div>
<?php endif; ?>
