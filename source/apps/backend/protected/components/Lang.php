<?php
/**
 * 
 * Enter description here ...
 * @author vinh.nguyen
 *
 */
class Lang {	
	public static function t($source, $text, $lang = null){
		$app = Yii::app();
		$langID = $app->language;
		$separator = DIRECTORY_SEPARATOR;
		$pathMsgApp = $app->basePath.$separator.'messages';
		if (!empty($app->controller->module->id)){
			$pathMsgModule = $app->getModule($app->controller->module->id)->basePath.$separator.'messages';
			$sourceNew = ucfirst($app->controller->module->id).ucfirst($app->controller->id).ucfirst($app->controller->action->id);
		}
		$tr = new CPhpMessageSource();
		
		if(!empty($source)){			
			$source = $source;
			if(!empty($pathMsgModule) && file_exists($pathMsgModule.$separator.$langID.$separator.$source.'.php')){
				$tr->basePath = $pathMsgModule;
			}elseif (file_exists($pathMsgApp.$separator.$langID.$separator.$source.'.php')){
				$tr->basePath = $pathMsgApp;
			}
		}elseif(!empty($pathMsgModule) && file_exists($pathMsgModule.$separator.$langID.$separator.$sourceNew.'.php')){
			$tr->basePath = $pathMsgModule;
			$source = $sourceNew;
		}elseif (file_exists($pathMsgApp.$separator.$langID.$separator.'main'.'.php')){
			$tr->basePath = $pathMsgApp;
			$source = 'main';
		}
		return $tr->translate($source, $text, $lang);
	}
}