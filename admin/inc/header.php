<?php
if(!isset($_SESSION['user_name'])){
	header("Location: login.php");
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
<title>SMAC @Khalifa University</title>
</head>
<body>

<section id="header">
<div class="container">
	<h1>Admin Panel SMAC</h1>
</div>
</section>
<section id="nav-main">
	<div class="header container clearfix">
	<nav>
	<div>
	<ul class="mr-auto">
		<li class="nav-item"><a class="nav-link" href="index.php"><i class="fa fa-home"></i><span>Home</span></a></li>
		<li class="nav-item"><a class="nav-link" href="about.php"><i class="fa fa-pencil-square-o"></i><span>About</span></a></li>
		<li class="nav-item"><a class="nav-link" href="committees.php"><i class="fa fa-user"></i><span>Committeesِ</span></a></li>
		<li class="nav-item"><a class="nav-link" href="submission.php"><i class="fa fa-book"></i><span>Submission</span></a></li>
		<li class="nav-item"><a class="nav-link" href="venue.php"><i class="fa fa-map-marker"></i><span>Venue</span></a></li>
		<li class="nav-item"><a class="nav-link" href="training.php"><i class="fa fa-graduation-cap"></i><span>Training</span></a></li>
		<li class="nav-item"><a class="nav-link" href="participation.php"><i class="fa fa-envelope-open-o"></i><span>Call for Participation</span></a></li>
		<li class="nav-item"><a class="nav-link" href="program.php"><i class="fa fa-file-text-o"></i><span>Program</span></a></li>
		<li class="nav-item"><a class="nav-link" href="gallery.php"><i class="fa fa-picture-o"></i><span>Gallery</span></a></li>
		<li class="nav-item"><a class="nav-link" href="students.php"><i class="fa fa-users"></i><span>Students</span></a></li>
		<li class="nav-item"><a class="nav-link" href="media.php"><i class="fa fa-upload"></i><span>Media</span></a></li>
		<li class="nav-item"><a class="nav-link" href="logout.php" style="color:red;"><i class="fa fa-sign-out"></i><span>Logout</span></a></li>

	</ul>
	</div>
</nav>
  </div>
</section>
