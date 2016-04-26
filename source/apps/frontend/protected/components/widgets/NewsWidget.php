<?php
class NewsWidget extends CWidget {
	public $type;
	public $timeout = 7200;
	public $limit = 6;
	
    public function run() {
	  	if($this->type == 'play') 
	  		$view = 'news-play';
	  	elseif($this->type == 'full') 
	  		$view = 'news-full';	
	  	else  
	  		$view = 'news';
	  	
		$news 		= Yii::app()->cache->get($view);	
	  	if (!$news){
	    	$news = $this->getNews(null, $this->limit);
	   		Yii::app()->cache->set($view, $news, $this->timeout);
	  	} 
    	$this->render($view, array(        
    		'news' => $news,
        ));
    }
    
	public function getNews($section_id = null, $limit) {
		$article = new ArticleSection($section_id, $limit);
		$article = $article->getArticle();
		return $article;
		
	}
	
	/**
	* Chops off a string at a specific length, counting entities as once character
	* and using multibyte-safe functions if available.
	*
	* @param	string	String to chop
	* @param	integer	Number of characters to chop at
	*
	* @return	string	Chopped string
	*/
	public function vbchop($string, $length)
	{
		$length = intval($length);
		if ($length <= 0)
		{
			return $string;
		}
	
		// Pretruncate the string to something shorter, so we don't run into memory problems with
		// very very very long strings at the regular expression down below.
		//
		// UTF-32 allows 0x7FFFFFFF code space, meaning possibility of code point: &#2147483647;
		// If we assume entire string we want to keep is in this butchered form, we need to keep
		// 13 bytes per character we want to output. Strings actually encoded in UTF-32 takes 4
		// bytes per character, so 13 is large enough to cover that without problem, too.
		//
		// ((Unlike the regex below, no memory problems here with very very very long comments.))
		$pretruncate = 13 * $length;
		$string = substr($string, 0, $pretruncate);
	
		if (preg_match_all('/&(#[0-9]+|lt|gt|quot|amp);/', $string, $matches, PREG_OFFSET_CAPTURE))
		{
			// find all entities because we need to count them as 1 character
			foreach ($matches[0] AS $match)
			{
				$entity_length = strlen($match[0]);
				$offset = $match[1];
	
				// < since length starts at 1 but offset starts at 0
				if ($offset < $length)
				{
					// this entity happens in the chop area, so extend the length to include this
					// -1 since the entity should still count as 1 character
					$length += strlen($match[0])  - 1;
				}
				else
				{
					break;
				}
			}
		}
	
		if (function_exists('mb_substr'))
		{
			$charset = 'utf-8';
			$substr = $charset ? @mb_substr($string, 0, $length, $charset) : @mb_substr($string, 0, $length);
		}
	
		if ($substr != '' )
		{
			return $substr.'...';
		}
		else
		{
			return substr($string, 0, $length);
		}
	}
}
?>