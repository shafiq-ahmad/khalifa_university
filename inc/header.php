<?php

$script_url = "media.php";
$target_dir = "uploads/slides";
$target_dir_link = $target_dir;
$files = array_diff(scandir($target_dir_link), array('..', '.'));

?><!DOCTYPE html>
<html lang="en-US">
<head>
<meta http-equiv="Cache-control" content="public">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
<title>SMAC @Khalifa University</title>
</head>
<body>

<section id="nav-main" class="container">
	<div class="header row ml-sm-0 mr-sm-0">
	<div id="logo" class="col-lg-2"><img src="images/white-logo.png" alt=""/></div>
	<nav class="col-lg-10">
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
		<li class="nav-item"><a class="nav-link" href="register.php"><i class="fa fa-user-plus"></i><span>Register</span></a></li>
		</ul>
	</nav>
  </div>
</section>

<section id="slider" class="container">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner"><?php
  //var_dump($files);exit;
	foreach($files as $key => $file){

		$active="";
		if($key==2){
			$active='active';
		}
	?><div class="carousel-item <?php echo $active;?>">
		<img class="d-block w-100" src="uploads/slides/<?php echo $file;?>" alt="Slide <?php echo $key-1;?>">
	</div><?php
	}
  ?></div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</section>