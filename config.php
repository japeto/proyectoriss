<?php
	define('DB_SERVER', 'localhost');
	define('DB_USERNAME', 'japeto');
	define('DB_PASSWORD', 'japeto');
	define('DB_DATABASE', 'encuesta');
	$con = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
	mysqli_query($con,"SET NAMES 'utf8'");
?>