<?php
session_start();

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'SeaMonkey79');
define('DB_NAME', 'login_creds');
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
if($link===false){
	die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>