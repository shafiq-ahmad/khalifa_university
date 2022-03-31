<section id="footer">
<footer class="container">
			
<div class="row">
<div class="col-md-9">&copy; 2020 SMAC @Khalifa University</div>
<div class="col-md-3">
<ul>
<li class="title">Links:</li>
<li><a href="<?php echo HOST;?>admin/">Admin</a></li>
</ul>
</div>
</div>
</footer>
</section>
</body>

<script>
function openNav() {
    document.getElementById("navbar").style.width = "250px";
}

/* Set the width of the side navigation to 0 */
function closeNav() {
    document.getElementById("navbar").style.width = "0";
}
window.onscroll = function() {f_scroll_sticky()};

var navbar = document.getElementById("nav-main");
var sticky = navbar.offsetTop;
function f_scroll_sticky() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky");
  }else{
    navbar.classList.remove("sticky");
  }
}
$('.carousel').carousel();
</script>

</html>
<?php

if(isset($stmt)){
	$stmt->close();
}
$conn->close();


?>