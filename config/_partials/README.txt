config.php

<?php
return array(
	'db'=>array(
		'connectionString' => 'mysql:host=localhost;dbname=dongphong_cms',
		'emulatePrepare' => true,
		'username' => 'root',
		'password' => '',
		'charset' => 'utf8',
		'tablePrefix' => '',
	),
	'mongodb' => array(
        'class'            => 'EMongoDB',
	 	'connectionString' => 'mongodb://localhost:27017',			//Dev
	 	//'connectionString' => 'mongodb://221.132.32.106:27017', 	//Test
	 	//'connectionString' => 'mongodb://125.253.121.84:27017', 	//Release
        'dbName'           => 'likevn',
        'fsyncFlag'        => true,
        'safeFlag'         => true,
        'useCursor'        => false
    )
);


params.php
<?php
return array(
	'urls' => array(
		'id'   		  	=> 'http://localhost.id.like.vn',
		'saga'  		=> 'http://saga.like.vn',
		'play'			=> 'http://play.saga.like.vn'	
	),	
	'phpmailer'=>array(
		'transport'		=>'smtp',
		'html'			=> true,
		'CharSet' 		=> 'UTF-8',		
		'Port' 			=> 465,					
		'SMTPDebug' 	=> false,         
		'SMTPAuth' 		=> true,           
		'SMTPSecure' 	=> 'ssl',        
		'Host' 			=> 'mail.like.vn',    
		'Username' 		=> 'noreply@like.vn',
		'Password' 		=> 'HI9U),1oL&hFMVJ*$BBr',
		'fromName' 		=> 'Error',
	),
);
