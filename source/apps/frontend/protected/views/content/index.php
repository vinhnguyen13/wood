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
<div class="content-top">
    <div class="wrap">
        <div class="content-full">
            <h2><?=$title;?></h2>
            <?php
            if (!empty($content)):
            foreach ($content as $item) {
            $src = $item->images;
            ?>
            <div class="col_1_of_4 span_1_of_4">
                <a class="fancybox" href="<?php echo $src;?>" data-fancybox-group="gallery" title="<?php echo $item->title; ?>">
                    <img src="<?php echo $src;?>" alt=""><span> </span>
                </a>
                <div class="caption">
                    <h4><a href="<?php echo Yii::app()->createUrl('services/view', array('id' => $item->id, 'slug' => $item->slug)) ?>"><?php echo $item->title; ?></a></h4>
                    <p><?php echo strip_tags($item->introtext); ?></p>
                    <a href="<?php echo Yii::app()->createUrl('services/view', array('id' => $item->id, 'slug' => $item->slug)) ?>" class="btn">read more</a>
                </div>
            </div>
            <?php
            }
            endif;
            ?>
            <div class="clear"></div>
            <!-- .paging1 -->
            <?php if (!empty($pages) && $pages->getItemCount() > $pages->getPageSize()): ?>
                <div class="paging">
                    <?php $this->widget('backend.extensions.ExtLinkPager', array('pages' => $pages,)); ?>
                </div>
            <?php endif; ?>
            <!-- End .paging1 -->
        </div>
    </div>
</div>
