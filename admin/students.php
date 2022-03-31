<?php
require_once "inc/config.php";
require_once "inc/header.php";

if(isset($_GET['delete']) && isset($_GET['id'])){
	$sql = "DELETE FROM students WHERE id={$_GET['id']} ";
	$stmt = $conn->prepare($sql);
	$res = $stmt->execute();
	$data = $stmt->get_result();
	header("Location: students.php");
}
$sql = "SELECT s.*, m.title AS mTitle, c.title AS cTitle FROM students AS s ";
$sql .= "LEFT JOIN countries AS c ON (s.country_id=c.id) ";
$sql .= "LEFT JOIN memberships AS m ON (s.membership_id=m.id) ";
$sql .= "WHERE s.status >0";

$stmt = $conn->prepare($sql);
$res = $stmt->execute();
$data = $stmt->get_result();
//var_dump($data);
?><section class="container">
<div id="wrapper" class="form">
<style>
td,th {padding:3px 15px;}
</style>
<div class="form-row"><table>
<tr>
<th>Fullname</th>
<th>E-mail</th>
<th>Phone</th>
<th>Membership</th>
<th>Country</th>
<th>Action</th>
</tr>
<?php
foreach ($data as $d){
	echo "<tr>";
	echo "<td>" . $d['title'] . "</td>";
	echo "<td>" . $d['e_mail'] . "</td>";
	echo "<td>" . $d['phone'] . "</td>";
	echo "<td>" . $d['mTitle'] . "</td>";
	echo "<td>" . $d['cTitle'] . "</td>";
	$del_link="students.php?delete=1&id={$d['id']}";
	$js="return confirm('Confirm delete!!!');";
	echo '<td><a onClick="' .$js . '" class="btn btn-danger" href="' . $del_link . '"><i class="fa fa-trash"></i></a></td>';
	echo "</tr>";
}
?>
</table></div>
<hr/>
</div>
</section><?php
require_once 'inc/footer.php';