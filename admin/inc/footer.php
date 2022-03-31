<section id="footer">
<footer class="container">
			
<div class="row">
<div class="col-md-9">&copy; 2020 SMAC @Khalifa University</div>
<div class="col-md-3">
<ul>
<li class="title">Links:</li>
<li><a href="<?php echo HOST;?>">Site</a></li>
</ul>
</div>
</div>
</footer>
</section>
</body><script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
</script>
<script>

CKEDITOR.replace( 'editor' );
</script>
</html>
<?php 

if(isset($stmt)){
	$stmt->close();
}
$conn->close();


?>