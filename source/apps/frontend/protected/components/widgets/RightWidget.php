<?php
class RightWidget extends CWidget {
	
    public function run() {
    	$advs = Advertising::model()->findAllByAttributes(array('position'=>'right'));
    	$products = Products::model()->findAllByAttributes(array('fast_selling'=>1));
    	$this->render('right', array( 
    		'advs'=>$advs,       
    		'products'=>$products,       
        ));
    }
}
?>