<?php

define('DS', '/');
$pathroot = dirname(dirname(__FILE__));
$frontend = $pathroot . DIRECTORY_SEPARATOR . 'source/apps/frontend/protected';
$backend = $pathroot . DIRECTORY_SEPARATOR . 'source/apps/backend/protected';
$themes = $pathroot . DIRECTORY_SEPARATOR . 'source/apps/themes';

Yii::setPathOfAlias('pathroot', $pathroot);
Yii::setPathOfAlias('frontend', $frontend);
Yii::setPathOfAlias('backend', $backend);
Yii::setPathOfAlias('themes', $themes);

return array(
	'basePath'=> $frontend,
	'name'=>'Long Hien',
	'id' => 'like.vn',
	'theme' => 'tennis',
	'runtimePath' => $frontend . DIRECTORY_SEPARATOR . 'runtime',
	'modulePath' => $backend.'/modules',
	'preload'=>array('log'),
	'language' => 'vi',
	'import'=>array(
		'backend.vendors.*',
		'backend.components.*',
		'backend.extensions.captchaExtended.*',
		'backend.modules.user.models.*',
		'backend.modules.cms.models.*',
		'application.models.*',
		'application.components.*',
		'backend.extensions.CDropDownMenu.*',
	),
	'modules'=>array(
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'123456',
			'ipFilters'=>array('127.0.0.1','::1'),
		),
	),
	'components'=> CMap::mergeArray(
		array(
			'user'=>array(
				'allowAutoLogin'=>true,
				'class' => 'backend.modules.user.components.YumWebUser',
			),
			'urlManager'=>array(
				'showScriptName' => false,
				'urlFormat'=>'path',
				'rules'=>array(
						
					'trang-chu' 												=> 'site/index',
					'gioi-thieu'												=> 'content/introduction',
					'san-pham'													=> 'products/index',
					'san-pham/trang-<page:\d+>'									=> 'products/index',
					'san-pham/danh-muc/<catid:\d+>-<cslug>'						=> 'products/index',
					'san-pham/chi-tiet/<id:\d+>-<slug>/trang-<page:\d+>'		=> 'products/view',
					'san-pham/chi-tiet/<id:\d+>-<slug>'							=> 'products/view',
					'dich-vu'													=> 'content/services',
					'dich-vu/<id:\d+>-<slug>'									=> 'services/view',
					'tin-tuc'													=> 'news',
					'tin-tuc/trang-<page:\d+>'									=> 'news/index',
					'tin-tuc/<id:\d+>-<slug>'									=> 'news/view',
					'lien-he' 													=> 'site/contact',
					'dat-hang-thanh-toan'										=> 'content/payment',
					'tim-kiem'													=> 'content/search',
					'invite-friend'												=> 'site/invite',
						
					'<controller:\w+>/<id:\d+>'									=>'<controller>/view',
					'<controller:\w+>/<action:\w+>/<id:\d+>'					=>'<controller>/<action>',
					'<controller:\w+>/<action:\w+>'								=>'<controller>/<action>',
						
				),
			),
			'errorHandler'=>array(
				'errorAction'=>'site/error',
			),
			'log'=>array(
				'class'=>'CLogRouter',
				'routes'=>array(
					array(
						'class'=>'CFileLogRoute',
						'levels'=>'error, warning',
					),
				),
			),
			'assetManager'=>array(
	        	'basePath'=> dirname(__FILE__).'/../source/apps/frontend/protected/assets/',
	            'baseUrl'=>'/source/apps/frontend/protected/assets/'
	        ),
	        'themeManager' => array(
				'basePath'=> dirname(__FILE__).'/../source/apps/themes/',
	        	'baseUrl'=>'/source/apps/themes/'
			),
			'cache' => array('class' => 'system.caching.CFileCache'),
			'session' => array (
			    'class' => 'system.web.CDbHttpSession',
			    'connectionID' => 'db',
			    'sessionTableName' => 'sessions',
				'sessionName' => 'Site Session',
				'useTransparentSessionID'   =>(!empty($_POST['PHPSESSID'])) ? true : false,
				'autoStart' => 'false',
				'cookieMode' => 'only',
				'timeout' => 900
			),
			'CURL' =>array(
				'class' => 'backend.extensions.curl.Curl',
			),
			'swiftMailer' => array(
			    'class' => 'backend.extensions.swiftMailer.SwiftMailer',
			),
			'counter' => array(
	            'class' => 'backend.extensions.UserCounter',
	        ),
		),
		require(dirname(__FILE__).'/_partials/config.php')
	),
	'behaviors' => array(
		'onBeginRequest' => array(
	 		'class'=>'application.components.BeginRequestBehavior'
		)
   	),
	'params'=> CMap::mergeArray(
		require(dirname(__FILE__).'/_partials/params.php'),
		array(
			'adminEmail'=>'contact@tennisxuxu.com',
		)
	)
);