<!DOCTYPE html>
<html>
<head>
	<title>AdminLogin </title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<?php
require("db.php");
session_start();


 $query = "SELECT user_id,email,mobile,password FROM user_info";
 $result  = mysqli_query($con,$query);
 $row = mysqli_fetch_array($result);
 $_SESSION["user"] = $row["user_id"];

 if(isset($_POST['submit'])){
  $email = strip_tags($_POST['email']);
  $secret = strip_tags($_POST['secret']); 
  $password = strip_tags($_POST['password']);

  if($row['email'] === $email || $row['mobile'] === $secret || $row['password'] === $password){

   header("location:admin.php");
  }
else{
	  echo " <div class='alert alert-success'>
	            <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
	          <b>You don't exist!</b>
            </div>
				";
}


 } 


?>

	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Jfood Admin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
  </ul>
</div>
</nav>

	<div class="container">
		<div style=" position:relative;top: 100px;left: 125px;">
			<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
		         Email Address:
				<input type="text" name="email" style="width:700px;" class="form-control"><br>
				Passcode:
				<input type="password" name="secret"  style="width:700px;" class="form-control"><br>
				Password:
				<input type="password" name="password" style="width:700px;" class="form-control" ><br>
				<input type="submit" name="submit">
			</form>
		</div>
		
	</div>

</body>
</html>