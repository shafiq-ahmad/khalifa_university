<?php
require_once "admin/inc/config.php";
require_once "inc/header.php";

// prepare and bind
$stmt = $conn->prepare("SELECT * FROM pages WHERE page_name = ?");
$page = "submission";
$stmt->bind_param("s", $page);

// set parameters and execute
$res = $stmt->execute();
$data = $stmt->get_result();
//var_dump($data);
?><section class="container">
<div id="wrapper">
<div class="vc_tta-panel vc_active" id="1551786269450-8b6573e8-cff2" data-vc-content=".vc_tta-panel-body">
<div class="vc_tta-panel-body" style=""><div class="vc_row wpb_row vc_inner vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="wpb_text_column wpb_content_element ">
<div class="wpb_wrapper"><?php
foreach ($data as $d){
	echo $d['content'];
}
?>


<div>
<div role="form" class="wpcf7" id="wpcf7-f21176-p20549-o1" lang="en-GB" dir="ltr">
<div class="screen-reader-response"></div>
<form action="" method="post" class="wpcf7-form" enctype="multipart/form-data" novalidate="novalidate">

<div id="responsive-form" class="clearfix">
<div class="form-row">
<div class="form-group col-lg-4">Supervisor Name(s) </div>
<div class="form-group col-lg-4">University Email </div>
<div class="form-group col-lg-4">Telephone Number </div>
</div>
<p><span style="font-weight:bold;">Add Students</span></p>
<div class="form-row">
<div class="form-group col-lg-4"><label>1.Student Name</label><input type="text" name="student-name1" class="form-text text-muted form-control" value=""></div>
<div class="form-group col-lg-4"><label>Phone </label><span><input type="text" name="student-phone1" class="form-text text-muted form-control" value=""></span></div>
<div class="form-group col-lg-4"><label>University Email </label><span><input type="text" name="university-email1" class="form-text text-muted form-control" value=""></span></div>
</div>
<div class="form-row">
<div class="form-group col-lg-4"><label>2. Student Name</label><span><input type="text" name="student-name2" class="form-text text-muted form-control" value=""></span></div>
<div class="form-group col-lg-4"><label>Phone </label><span><input type="text" name="student-phone2" value="" class="form-text text-muted form-control"></span></div>
<div class="form-group col-lg-4"><label>University Email </label><span><input type="text" name="university-email2" value="" class="form-text text-muted form-control"></span></div>
</div>
<div class="form-row">
<div class="form-group col-lg-4"><label>3. Student Name</label><span class=" student-name3"><input type="text" name="student-name3" value="" class="form-text text-muted form-control"></span></div>
<div class="form-group col-lg-4"><label>Phone </label><span class=" student-phone3"><input type="text" name="student-phone3" value="" class="form-text text-muted form-control"></span></div>
<div class="form-group col-lg-4"><label>University Email </label><span class=" university-email3"><input type="text" name="university-email3" value="" class="form-text text-muted form-control"></span></div>
</div>
<div class="form-row">
<div class="form-group col-lg-4"><label>4. Student Name</label><span class=" student-name4"><input type="text" name="student-name4" value="" class="form-text text-muted form-control"></span></div>
<div class="form-group col-lg-4"><label>Phone </label><span class=" student-phone4"><input type="text" name="student-phone4" value="" class="form-text text-muted form-control"></span></div>
<div class="form-group col-lg-4"><label>University Email </label><span class=" university-email4"><input type="text" name="university-email4" value="" class="form-text text-muted form-control"></span></div>
</div>
<div class="form-row">
<div class="form-group col-lg-4"><label>Application Title </label><span class=" application-title"><input type="text" name="application-title" value="" class="form-text text-muted form-control"></span></div>
<div class="form-group col-lg-4"><label>Application Platform(eg:iOS, android)</label><span class=" application-platform"><input type="text" name="application-platform" value="" class="form-text text-muted form-control"></span></div>
</div>
<div class="form-row">
<div class="form-group col-sm-12"><label>Description (You can only upload a Word doc file.) </label>
<input type="file" name="file-898"  class="form-control" accept=".doc,.docx">
</div>
<div class="form-group col-sm-12"><input type="submit" value="Send" class="btn btn-info"><span class="ajax-loader"></span></div>
</div>
</div>

</div>
</div>
</div></div></div></div></div></div>

</div>
</section><?php

require_once 'inc/footer.php';