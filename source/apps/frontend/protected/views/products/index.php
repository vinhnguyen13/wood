<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;
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
            <h2>SẢN PHẨM</h2>
                <?php
                if (!empty($products)):
                    foreach ($products as $item) {
                        $src = Yii::app()->theme->baseUrl . '/resources/images/no_photo.jpg';
                        if (!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot') . $item->images)) {
                            $src = $item->images;
                        }
                        $price = 0;
                        if (!empty($item->price)) {
                            $price = number_format($item->price);
                        }
                        $price_new = 0;
                        if (!empty($item->price_new)) {
                            $price_new = number_format($item->price_new);
                        }
                        $url = Yii::app()->createUrl('products/view', array('id' => $item->id, 'slug' => $item->slug));
                        ?>
                        <div class="col_1_of_4 span_1_of_4 item">
                            <?php if (!empty($item->promotions)): ?>
                                <!-- 	    	<span class="khuyenmai"></span>  -->
                            <?php endif; ?>
                            <?php if (!empty($item->new)): ?>
                                <!-- 	    	<span class="new-pro"></span>  -->
                            <?php endif; ?>
                            <a class="fancybox" href="<?php echo $src;?>" data-fancybox-group="gallery" title="<?php echo $item->title; ?>">
                                <img src="<?php echo $src;?>" alt=""><span> </span>
                            </a>
                            <div class="caption">
                                <h4><a href="<?php echo Yii::app()->createUrl('products/view', array('id' => $item->id, 'slug' => $item->slug, 'type'=>'doi-tac')) ?>"><?php echo $item->title; ?></a></h4>
                                <p><?php echo $item->introtext; ?></p>
                                <a href="<?php echo Yii::app()->createUrl('products/view', array('id' => $item->id, 'slug' => $item->slug, 'type'=>'doi-tac')) ?>" class="btn">read more</a>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                    <!-- .paging1 -->
                    <?php if (!empty($pages) && $pages->getItemCount() > $pages->getPageSize()): ?>
                    <div class="paging1">
                        <?php $this->widget('backend.extensions.ExtLinkPager', array('pages' => $pages,)); ?>
                    </div>
                    <?php endif; ?>
                    <!-- End .paging1 -->
                <?php endif; ?>
        </div>
    </div>
</div>