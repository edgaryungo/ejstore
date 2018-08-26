<?php
  
   if($_GET['show_desktop_mode'] == 'true') {
    $_SESSION['desktopmode'] = 'true';
}
if($_SESSION['desktopmode'] == 'true') {
  
   echo '<meta name="viewport" content="width=1024">';

}
else{
	echo '<meta name="viewport" content="width=1024, initial-scale=1.0">';
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title>LS&times;</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<style>
	.container{
	position: absolute;
	top: 70px;
	left:350px;
	width:600px;
	height: 500px;
	margin: 0 auto;
	background-color: #fff;
	padding: 10px 50px 50px 50px;
	border-radius: 50px;
	border: 2px solid #cbcbcb;
	box-shadow: 10px 15px 5px #cbcbcb;
}

		
		</style>
</head>
<body>
	<div  class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only"> navigation toggle</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">J-foods</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="index.php"><span class="glyphicon glyphicon-modal-window"></span>Product</a></li>
			 </ul>
			</div>
		</div>
	</div>

	

	<div class="container">
		<div style="position:relative;left:55px;top: 50px;"><h3>Let us know your location:</h3></div>
		<div style="position:relative;top: 50px;left:32px;">
	    <form class="form-inline" method="post" action="payment_success.php">
        <div style="position: relative;left: 30px;">
            <label>Name</label><br>
		    <input type="text" name="name" size="50px" class="form-control" ><br>
	         </div> 
		    <div style="position: relative;left: 30px;">
	        <label>Phone number</label><br>  
		    <input type="text" name="mobile" size="50px" class="form-control"><br>
	         </div>
		    <div style="position: relative;left: 30px;">
		    <label>Address</label><br>
		    <input type="text" name="location" placeholder="e.g cool palace No 14 gate c" size="50px" class="form-control"><br>
	        </div>
		    <div style="position: relative;left: 30px;top: 10px;""><input type="submit" name="submit" size="50px"></div>
		</div>
	</form>
	</div>
	


</body>
</html>