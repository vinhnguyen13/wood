<?php
$title = !empty($section) ? $section->title : '';
?>
<div class="block-news">
    <h2><?=$title;?></h2>
    <?php
    if (!empty($content)):
        foreach ($content as $item) {
            $src = $item->images;
            ?>
            <div class="news-items"><a href="#"><img alt="" src="<?php echo $src; ?>"></a>

                <h3>
                    <a href="<?php echo Yii::app()->createUrl('services/view', array('id' => $item->id, 'slug' => $item->slug)) ?>"><?php echo $item->title; ?></a>
                </h3>
                <h4><?php echo date("l - d/m/Y", $item->created); ?></h4>
                <?php echo $item->introtext; ?>
            </div>
        <?php
        }
    endif;
    ?>
    <div class="clearb"></div>
    <!-- .paging1 -->
    <?php if (!empty($pages) && $pages->getItemCount() > $pages->getPageSize()): ?>
        <div class="paging">
            <?php $this->widget('backend.extensions.ExtLinkPager', array('pages' => $pages,)); ?>
        </div>
    <?php endif; ?>
    <!-- End .paging1 -->
    <div class="content-footer"></div>
</div>
