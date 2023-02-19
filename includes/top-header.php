<?php 
//session_start();

?>
<style>
input[type=checkbox] {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  -webkit-tap-highlight-color: transparent;
  cursor: pointer;
  
}
input[type=checkbox]:focus {
  outline: 0;

}

.toggle {
  height: 22px;
  width: 42px;
  border-radius: 16px;
  display: inline-block;
  position: relative;
  margin-top: 5px;
  border: 2px solid #474755;
  background: linear-gradient(180deg, #2D2F39 0%, #1F2027 100%);
  transition: all 0.2s ease;
}
.toggle:after {
  content: "";
  position: absolute;
  top: 2px;
  left: 2px;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  background: white;
  box-shadow: 0 1px 2px rgba(44, 44, 44, 0.2);
  transition: all 0.2s cubic-bezier(0.5, 0.1, 0.75, 1.35);
}
.toggle:checked {
  border-color: #654FEC;
}
.toggle:checked:after {
  transform: translatex(20px);
}

.dark-mode {
  background-color: black;
  color: white;
}
</style>
<div class="top-bar animate-dropdown" style="background-color: #DCDCDC">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i>Welcome -<?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>My Account</a></li>
					<li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Wishlist</a></li>
					<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<li><a href="contactus.php"><i class="icon fa fa-phone"></i>Contact Us</a></li>
					<li><a href="aboutus.php"><i class="icon fa fa-user"></i>About Ust</a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Login</a></li>
<?php }
else{ ?>
	
				<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Logout</a></li>
				<?php } ?>	
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<a href="track-orders.php" class="dropdown-toggle" ><span class="key">Track Order</b></a>
						
					</li>
					<input onclick="myFunction()" type="checkbox" class="toggle" checked>
				</ul>

			</div>

			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->
<script>
function myFunction() {
   var element = document.body;
   element.classList.toggle("dark-mode");
}
</script>