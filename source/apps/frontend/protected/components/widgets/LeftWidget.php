<?php
class LeftWidget extends CWidget {
    public function run() {
    	$advs = Advertising::model()->findAllByAttributes(array('position'=>'left'));
    	$this->render('left', array(   
    		'advs'=>$advs,     
        ));
    }
}
?>