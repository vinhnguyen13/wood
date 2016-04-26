<?php
class CategoryWidget extends CWidget {
    public function run() {
	  	$categories = $this->getCategories();	  
    	$this->render('category', array(        
    		'categories' => $categories,
        ));
    }
    
	private function getCategories(){
    	$criteria = new CDbCriteria();
    	$cates = $this->getCategoriesChild(0);
    	return $cates;
    }
    
	private function getCategoriesChild($pid, $return=array(), $level=0){	
		$child = Categories::model()->findAllByAttributes(array('parent_id'=>$pid));		
		if(!empty($child)){
			$level++;
			foreach ($child as $item){
				$return[$pid][$item->id]['item'] = $item;
				$return[$pid][$item->id]['level'] = $level;
           		$return = $this->getCategoriesChild($item->id, $return, $level);				
			}			
		}
		return $return;	
	}
}
?>