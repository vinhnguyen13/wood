<?php
$input = array(
	array('Username' => 'contact@tennisxuxu.com','Password' => 'abc123'),
);
$rand_keys = array_rand($input, 1);
return array(	
	'phpmailer'=>array(
		'transport'=>'smtp',
		'html'=>true,
		'CharSet' => 'UTF-8',							
		'SMTPDebug' => false,          // enables SMTP debug information (for testing)
		'SMTPAuth' => true,            // enable SMTP authentication
		'SMTPSecure' => 'tls',         // sets the prefix to the servier
		'Host' => '112.213.89.74',    // sets GMAIL as the SMTP server
		'Port' => 25,                   // set the SMTP port for the GMAIL server
		'Username' => 'contact@tennisxuxu.com',  // GMAIL username
		'Password' => 'abc123',        // GMAIL password
		'fromName'=>'TENNIS XU XU',
		'toName'=>'TENNIS XU XU',
		'auth'=> $input[$rand_keys],
	),
	'uploads'=>array(
		'photos'=>array(
			'extension'=>array('jpeg', 'jpg', 'gif', 'png'),
			'positions'=>array('banner'=>'Banner', 'character'=>'Character', 'advertising'=>'Advertising'),
			'resolutions'=>array('1024_768', '1152_864', '1280_800', '1280_1024', '1366_768', '1440_900', '1600_900', '1920_1080'),
		),
		'videos'=>array(
			'extension'=>array('flv')
		),
		'flash'=>array(
			'extension'=>array('swf')
		),
	),
	'pagination'=>array(
		'product'=>32,
		'news'=>12,
	),
	'sections'=>array(
		'home'=>1,
		'sanpham'=>2,
		'thuonghieu'=>3,
		'dichvu'=>4,
		'doitac'=>5,
		'giamgia_khuyenmai'=>6,
		'contact'=>7,
	)
	
);