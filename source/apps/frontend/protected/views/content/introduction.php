<?php
/* @var $this SiteController */
?>
<div class="content-top">
    <div class="wrap">
        <div class="content-full">
            <h2>Giới thiệu</h2>
            <?php
            if(!empty($content)){
                echo nl2br($content->fulltext);
            }
            ?>
        </div>

        <div class="clear"></div>
    </div>
</div>
<?php $this->beginContent('//layouts/_partials/ContentMiddle'); ?><?php $this->endContent(); ?>
