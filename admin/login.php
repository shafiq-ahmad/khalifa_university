<?php
require_once "inc/config.php";


$msg="";
if(isset($_POST["submit"])) {
	$stmt = $conn->prepare("SELECT * FROM users WHERE user_name = ? AND password = ?");
	$page = "index";
	$stmt->bind_param("ss", $_POST['user_name'], $_POST['password']);

	// set parameters and execute
	$res = $stmt->execute();
	$data = $stmt->get_result();
	if($data->num_rows){
		//var_dump($data);exit;
		$_SESSION['user_name']=$_POST['user_name'];
		header("Location: index.php");
		exit;
	}else{
		$msg="Invalid Username/Password";
	}

}


?><!DOCTYPE html>
<html lang="en-US">
<head>
<meta http-equiv="Cache-control" content="public">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="js/ckeditor4/ckeditor.js"></script>

<link rel="stylesheet" href="css/style.css">
<title>Admin Login</title>
</head>
<body>

<section id="header" class="container">
	<h3>Admin Panel Login</h3><?php if($msg){?>
	<div id="message" class="alert alert-danger"><?php echo $msg;?></div><?php }?>
</section>


<style>
html,
body {
  height: 100%;
}

body {
}

body > section {max-width:360px !important;}
.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}


</style>
<section class="container">
<form class="form-signin" method="post" action="">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputUser" class="sr-only">User name</label>
      <input type="text" id="inputUser" class="form-control" placeholder="User Name" name="user_name" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Sign in</button>
    </form>

</section>
<section id="footer" class="container">
<footer>
			

<p>&copy; 2020 SMAC @Khalifa University</p>
</footer>
</section>
</body><script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
<?php

if(isset($stmt)){
	$stmt->close();
}
$conn->close();


?>

