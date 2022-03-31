<?php
//define("HOST","http://localhost/ae/contest/");
define("HOST", "http://alhikmahps.com/contest");
define("ADMIN_MAIL","myemail@gmail.com");
/*
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "contest";
*/
$servername = "localhost";
$username = "hikmah_contest";
$password = "Ajman2019.";
$dbname = "hikmah_contest";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

$mysqli = mysqli_connect($servername, $username, $password, $dbname);

if(!isset($_SESSION)){
	session_start();
}



/*

require_once "inc/config.php";

$page = "about";
if(isset($_POST["submit"])) {
	
        // prepare and bind
        $sql="UPDATE pages SET content='{$_POST['content']}' WHERE page_name = '{$page}'";
        //echo $sql;exit;
        $res = mysqli_query($mysqli, $sql);
        if($res){
                header("Location: about.php");
                exit;
        }
       // var_dump($res);exit;
	
}

$sql = "SELECT * FROM pages WHERE page_name = 'about'";
$res = mysqli_query($mysqli, $sql);
$data = mysqli_fetch_assoc($res);


require_once "inc/header.php";

*/