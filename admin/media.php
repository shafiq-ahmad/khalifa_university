<?php
require_once "inc/config.php";
require_once "inc/header.php";

$script_url = "media.php";
$pre_dir = "../";
$target_dir = "uploads/";
$selected="";
if(isset($_GET['dir']) && $_GET['dir']){
	$target_dir .= $_GET['dir'] . "/";
	$script_url .= "?dir=" . $_GET['dir'];
	$selected="selected";
}
if(isset($_POST["remove"])) {
	unlink('../' . $_POST['url_file']);
	header("Location: {$script_url}");
	exit;
}

$target_dir_link = $pre_dir . $target_dir;
//echo $$target_dir_link;exit;
$files = array_diff(scandir($target_dir_link), array('..', '.'));
if(isset($_POST["submit"])) {
$target_file = $target_dir_link . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
//if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
//}
// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
		header("Location: {$script_url}");
		exit;
    } else {
        echo "Error uploading your file.";
    }
}

}


//var_dump($files);
?>
<script>
function sel_text(obj){
	obj.select();
	document.execCommand("copy");
	alert("Text Copied.");
}
</script>


<section class="container">
<div id="wrapper">

<form action="<?php echo $script_url;?>" method="get">
<label>Change Dir: <select name="dir" class="form-control" onchange="this.form.submit();">
<option value="">Uploads</option>
<option value="slides" <?php echo $selected;?>>Slides</option>
</select></label>
</form>
<form action="<?php echo $script_url;?>" method="post" enctype="multipart/form-data">
	<div class="form-row"><p>
    Select image to upload:</p></div>
	<div class="form-row">
    <div class="col-sm-6 mb-4"><input type="file" name="fileToUpload" id="fileToUpload" required></div>
    <div class="col-sm-6 mb-3"><input type="submit" class="btn btn-success btn-sm" value="Upload" name="submit"></div>
	</div>
</form>

</div><hr/>
<style>
.inputbox{font-size:70%;width:100%;}
</style>
<p style="font-size:80%;">Click File name to copy</p>
<div class="row">
<?php
foreach ($files as $file){
	$info = new SplFileInfo($file);
	$ext = strtolower($info->getExtension());
	if($ext == 'gif' || $ext=='jpg' || $ext == 'png' || $ext=='jpeg'){
		//echo $file . '<br>';
		$file_path =  HOST . $target_dir . $file;
		echo '<div class="col-sm-2" style="overflow:hidden;">';
		echo '<form action="' . $script_url . '" method="post"><input type="hidden" name="url_file" value="' . $target_dir . $file . '" />';
		echo '<p class="mb-1"><input class="inputbox" type="text" value="' . $file_path . '" onClick="sel_text(this);" /></p>';
		echo '<p class="mb-4" style="height:100px;overflow:hidden;"><img src="' . $file_path . '" alt="file" style="width:98%;" /></p>';
		echo '<p class="mb-4"><button type="submit" name="remove" value="1" class="btn btn-danger" style="width:100%;"/><i class="fa fa-trash"></i></button> </p>';
		echo '</form>';
		echo '</div>';
	}
}
?>
</div>



</section><?php

require_once 'inc/footer.php';