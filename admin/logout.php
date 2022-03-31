<?php
if(!isset($_SESSION)){
	session_start();
}

if(isset($_SESSION['user_name'])){
	unset($_SESSION['user_name']);
}
header("Location: login.php");
exit;