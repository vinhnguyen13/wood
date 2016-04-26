<?php
/* @var $this SiteController */
?>
<div class="block-content-small">
<div class="title">Giới thiệu</div>
<div class="content-detail">

<?php
if(!empty($content)){
    echo $content->fulltext;
}
?>
</div>
<div class="content-footer"></div>
</div>

