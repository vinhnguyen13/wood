<?php
return array(
	'db'=>array(
		'connectionString' => 'mysql:host=localhost;dbname=longhien',
		'emulatePrepare' => true,
		'username' => 'root',
		'password' => 'root',
		'charset' => 'utf8',
	),
	'mongodb' => array(
        'class'            => 'EMongoDB',
	 	'connectionString' => 'mongodb://localhost:27017',			//Dev
        'dbName'           => 'likevn',
        'fsyncFlag'        => true,
        'safeFlag'         => true,
        'useCursor'        => false
    ),
);