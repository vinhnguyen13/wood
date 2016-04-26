<?php
class SlideWidget extends CWidget {
    public function run() {
    	$slides = Advertising::model()->findAllByAttributes(array('position'=>'slide'));
    	$this->render('slide', array(
    		'slides'=>$slides,        
        ));
    }
}
?>