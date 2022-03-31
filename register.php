<?php
require_once "admin/inc/config.php";
require_once "inc/header.php";
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
$msg="";
$mail = new PHPMailer(true);
$message = '';









if(isset($_POST['submit'])){
	// prepare and bind
	$stmt = $conn->prepare("INSERT INTO students (title,e_mail,phone,country_id,membership_id) VALUES(?, ? ,? ,? ,?)");
	$title = $_POST['title'];
	$e_mail = $_POST['e_mail'];
	$phone = $_POST['phone'];
	$country_id = $_POST['country_id'];
	$membership_id = $_POST['membership_id'];
	$stmt->bind_param("sssss", $title, $e_mail, $phone, $country_id, $membership_id);

	// set parameters and execute
	$res = $stmt->execute();
	$data = $stmt->get_result();
	$last_id = $conn->insert_id;


	//$sql = "SELECT s.* FROM students AS s ";
	$sql = "SELECT s.*, c.title AS country, m.title AS membership FROM students AS s ";
	$sql .= "INNER JOIN countries AS c ON (s.country_id=c.id) ";
	$sql .= "INNER JOIN memberships AS m ON (s.membership_id=m.id) ";
	$sql .= "WHERE s.id = {$last_id}";
	//echo $sql;exit;
	$stmt = $conn->prepare($sql);
	$res = $stmt->execute();
	$student = $stmt->get_result();
	$subject = "Registration Successful";
	//var_dump($student);exit;
	if($student){
	$message = "
	<html>
	<head>
	<title>" . $subject . "</title>
	</head>
	<body>
	<p>A student has been successfuly registered</p>
	<table>
	<tr>
	<th>Full Name</th>
	<th>Phone</th>
	<th>Country</th>
	<th>Membership</th>
	<th>Ref#</th>
	</tr>";
	foreach($student as $s){
		//var_dump($s);exit;
		$message .= 
	"<tr>
	<td>" . $s['title'] . "</td>
	<td>" . $s['phone'] . "</td>
	<td>" . $s['country'] . "</td>
	<td>" . $s['membership'] . "</td>
	<td>" . $s['id'] . "</td>";
	}
	
	$message .= "</tr>
	</table>
	</body>
	</html>
	";
	}



try {
	//Server settings
	//$mail->SMTPDebug = 2;										// Enable verbose debug output
	$mail->isSMTP();											// Set mailer to use SMTP
	$mail->SMTPOptions = array(
	'ssl' => array(
	'verify_peer' => false,
	'verify_peer_name' => false,
	'allow_self_signed' => true
	));
	$mail->Host	= 'smtp.gmail.com';								// Specify main and backup SMTP servers
	$mail->SMTPAuth   = true;									// Enable SMTP authentication
	$mail->Username   = 'contest2k19@gmail.com';				// SMTP username
	$mail->Password   = 'Ajman2019.';							// SMTP password
	$mail->SMTPSecure = 'tls';									// Enable TLS encryption, `ssl` also accepted
	$mail->Port	= 587;											// TCP port to connect to

	//Recipients
	$mail->setFrom('contest2k19@gmail.com', 'SMAC 2020');
	$mail->addAddress(ADMIN_MAIL, 'Super Visor');	 // Add a recipient
	//$mail->addReplyTo('info@example.com', 'Information');
	//$mail->addCC('cc@example.com');
	//$mail->addBCC('bcc@example.com');

	// Attachments
	//$mail->addAttachment('/var/tmp/file.tar.gz');		 // Add attachments
	//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');	// Optional name

	// Content
	$mail->isHTML(true);								  // Set email format to HTML
	$mail->Subject = $subject;
	$mail->Body	= $message;
	//$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	$mail->send();
	$msg="Registration Successful";
} catch (Exception $e) {
	echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}


}

$stmt = $conn->prepare("SELECT * FROM countries");
$res = $stmt->execute();
$countries = $stmt->get_result();
// getting memberships
$stmt = $conn->prepare("SELECT * FROM memberships");
$res = $stmt->execute();
$memberships = $stmt->get_result();
?><section class="container">
<div id="wrapper">
<div class="wrapper">
<div>
<h1 style="color: #c32e2e; text-align: center; font-weight: 600;">SMAC 2020</h1>
<h4 style="text-align: center; margin-bottom: 13px; color: #c32e2e;">Fill the registration form</h4>
</div>
<div role="form" lang="en-GB" dir="ltr">
<div class="screen-reader-response"><?php
if($message){
?>
	<!-- Large modal --><!--
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Large modal</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" data-whatever="@mdo">Open modal for @mdo</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" data-whatever="@fat">Open modal for @fat</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>
-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"><?php
        echo $message;
      ?></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script>
$('#myModal').modal('show');
</script>
<?php
}
?></div>
<form action="" method="post">

<div id="responsive-form" class="clearfix">
<div class="row">
<div class="col-md-6 col-sm-8">
<div class="form-row">
<div class="form-group col-sm-12"><label>Full Name</label><input type="text" name="title" class="form-text text-muted form-control" value="" required></div>
<div class="form-group col-sm-12"><label>Phone </label><span><input type="text" name="phone" class="form-text text-muted form-control" value="" required></span></div>
<div class="form-group col-sm-12"><label>Email </label><span><input type="email" name="e_mail" class="form-text text-muted form-control" value="" required></span></div>
<div class="form-group col-sm-12"><label>Country </label>
<span><select name="country_id" class="form-text form-control"><?php
foreach ($countries as $d){
	echo '<option value="' . $d['id'] . '">' . $d['title'] . '</option>';
}
?></select></span></div>
<div class="form-group col-sm-12"><label>Membership </label>
<span><select name="membership_id" class="form-text form-control"><?php
foreach ($memberships as $d){
	echo '<option value="' . $d['id'] . '">' . $d['title'] . '</option>';
}
?></select></span></div>
</div>

<div class="form-row">
<div class="btn-group col-sm-12"><input type="submit" value="Submit" class="btn btn-info" name="submit"><span class="ajax-loader"></span></div>
</div>
</div>
</div>
</div>
</form>
</div>

</div>
</section><?php

require_once 'inc/footer.php';