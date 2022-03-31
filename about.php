<?php 
require_once "admin/inc/config.php";
require_once "inc/header.php";

// prepare and bind
$stmt = $conn->prepare("SELECT * FROM pages WHERE page_name = ?");
$page = "about";
$stmt->bind_param("s", $page);

// set parameters and execute
$res = $stmt->execute();
$data = $stmt->get_result();
//var_dump($data);
?><section class="container">
<div id="wrapper"><?php
foreach ($data as $d){
	//echo htmlentities($d['content']);
	echo html_entity_decode($d['content']);
}
?></div>
</section><?php

require_once 'inc/footer.php';