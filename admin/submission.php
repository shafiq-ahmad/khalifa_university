<?php
require_once "inc/config.php";
require_once "inc/header.php";



if(isset($_POST["submit"])) {
	
// prepare and bind
	$stmt = $conn->prepare("UPDATE pages SET content=? WHERE page_name = ?");
	$page = "submission";
	$stmt->bind_param("ss", $_POST['content'], $page);

	// set parameters and execute
	$res = $stmt->execute();

	
	
	
}


// prepare and bind
$stmt = $conn->prepare("SELECT * FROM pages WHERE page_name = ?");
$page = "submission";
$stmt->bind_param("s", $page);

// set parameters and execute
$res = $stmt->execute();
$data = $stmt->get_result();
//var_dump($data);
?><section class="container">
<div id="wrapper" class="form">

<form action="" method="post">
<div class="form-row"><textarea id="editor" name="content" style="min-height:500px;width:100%;"><?php
foreach ($data as $d){
	echo $d['content'];
}
?></textarea></div>
<hr/>
<div class="form-row">
<div class="btn-group">
<input type="submit" class="btn btn-success btn-sm" value="Update" name="submit">
</div>
</div>
</form>
</div>

</section><?php

require_once 'inc/footer.php';



