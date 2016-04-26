<li>
<ul class="news-button"><span class="home-readmore"><a target="_top" href="<?php echo Yii::app()->createUrl('//news/frontend/news'); ?>">Xem thêm</a></span>	
	<li class="tintuc active">
		<a href="javascript:void(0)"></a>
		<?php if(count($news) > 0): ?>
		<ul class="spr-news-widget">
			<?php foreach($news as $key => $value): ?>
				<?php if($key == 0): ?>
					<li class="first" style="background-color: transparent; background-position: initial initial; background-repeat: initial initial; ">
						<div class="title"><a target="_top" href="<?php echo Yii::app()->createUrl('//news/frontend/article', array('id' => $value->article_id, 'slug' => $value->article->slug)); ?>">
						<span><?php echo $this->vbchop($value->article->title, 45);?></span></a>
						<span class="date">[<?php echo date('d/m/Y', $value->article->created) ;?>]</span></div>
						<div class="detail">
							<a target="_top" href="<?php echo Yii::app()->createUrl('//news/frontend/article', array('id' => $value->article_id, 'slug' => $value->article->slug)); ?>">
							<img alt="" src="<?php  echo Yii::app()->params['urls']['uploads_path'].'/'.$value->article->thumbnail; ?>" title=""></a>
							<span><?php echo $value->article->description; ?></span>
						</div>
					</li>
				<?php else: ?>
					<li><div class="title"><a target="_top" href="<?php echo Yii::app()->createUrl('//news/frontend/article', array('id' => $value->article_id, 'slug' => $value->article->slug)); ?>"><span><?php echo $this->vbchop($value->article->title, 45);?></span></a><span class="date">[<?php echo date('d/m/Y', $value->article->created) ;?>]</span></div></li>
				<?php endif;?>
			<?php endforeach; ?>
		</ul>		
		<?php endif; ?>
	</li>
</ul>
</li>

