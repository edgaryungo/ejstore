<!--<?php
session_start();
require_once 'db.php';

if(isset($_SESSION["uid"])){
	header("index.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>J-foods</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style></style>
	</head>
<body style="background-color: lavender;">
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="index.php" class="navbar-brand">J-foods</a>
			</div>
		</div>
	</div>
	</p>
</body>
</html>-->
<!DOCTYPE html>
<html>
<head>
	<title>admin</title>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery2.js"></script>
	<!--<meta http-equiv="refresh" content="5">-->
	<meta name="viewport" content="width = device-width, initial-scale = 1">
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">LS&time; Admin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="orders.php">New oders</a></li>
          <li><a href="#">Sales summary</a></li>
          <li><a href="#">Site's Summary</a></li> 
        </ul>
      </li>
      <li><a href="#">Add User</a></li> 
      <li><a href="#">view active users</a></li> 
    </ul>
  </div>
</nav>
<?php

 if(!isset($_SESSION["user"])){
header("location:adminlogin.php");
 }


	 if(isset($_POST['submit'])){
    $cat = $_POST['product_cat'];
    $title = $_POST['product_title'];
    $price = $_POST['product_price'];
    $desc = $_POST['product_desc'];
    $image = $_POST['product_image'];
    $keyword =$_POST['product_keywords'];


 if($cat != null||$title != null||$price != null || $desc != null  || $image != null || $keyword != null){       
    $sql = "INSERT INTO products(`product_id`,`product_cat`,`product_title`,`product_price`,`product_desc`,`product_image`,`product_keywords`)VALUES(NULL,'$cat','$title','$price','$desc','$image','$keyword')";
    
    $result = mysqli_query($con,$sql);

    if($result){
     echo " <div class='alert alert-success'>
	            <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
	          <b>Your product is Added Successfully..!</b>
            </div>
				";
				header("admin.php");
    }
   

   }
}
else{
	  echo "<div class='alert alert-success'>
         <b> fill up all fields</b>
         </div>";
}

   if(isset($_POST['Addcat'])){
   
    $title = $_POST['cat_title'];

    $query = "INSERT INTO categories(`cat_id`,`cat_title`)VALUES(NULL,'$title')";

     if(mysqli_query($con,$query)){
     	 echo " <div class='alert alert-success'>
	            <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
	          <b>Category has been Added Successfully..!</b>
            </div>
				";
				exit();
     	header("admin.php");

   }
}
?>


<div class="col-md-1" style="background-color: lightgrey;">
	<?php
     
     $query = "SELECT * FROM user_info";
     $result = mysqli_query($con,$query);
     $registered = mysqli_num_rows($result);

     echo $registered." users registered";



	?>
</div>


	<div class="container" style="padding-top: 80px;">
		<table class="table table-bordered table-stripped" class="col=md-6">
			<thead>
				<th>View order</th>
				<th>Name</th>
				<th>Phone Number</th>
				<th>Location</th>
				<th>Time</th>
			</thead>
		    <tbody><?php 
 
       

        $sql = "SELECT c_id,user_id,name,phone,location,tim FROM  c_order_details order by c_id asc";


        $result = mysqli_query($con,$sql) or die(mysql_error());
        if(mysqli_num_rows($result) > 0){
         while ($row = $result -> fetch_assoc()) {?>
         
		    	<tr>
		    		<td> <a href="orders.php?id='<?php echo $row['user_id'];?>'"><button>View Order</button></a></td>
		    		<td> <?php echo $row['name'];?></td>
		    		<td> <?php echo $row['phone'];?></td>
		    		<td> <?php echo $row['location'];?></td>
		    		<td><?php  echo $row['tim'];?></td>
		    	</tr>
		    	 <?php }

        }?>
		    </tbody>
	    	</table>
	</div>
	<div class="col-md-4" style="position:relative;left: 105px;">
		<div class="row" style="background-color:lightgrey;">
			<h3>Add product</h3>
			<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST">
			Product category:<br><input type="text" name="product_cat" ><br>

			product title:<br><input type="text" name="product_title" ><br>

			product price:<br><input type="text" name="product_price"  ><br>

			product description:<br><input type="text" name="product_desc" ><br>

			product image:<br><input type="text" name="product_image" ><br>

			product keyword:<br><input type="text" name="product_keywords" ><br>

			<input type="submit" name="submit">
				</form>
		</div>
		<div class="row" style="background-color: lightgrey; position: relative;left: 500px;top:-355px;">
			<h3>Add Category</h3>
			<form action="<?php $_SERVER['PHP_SELF']?>" method="POST">
			Category:<input type="text" name="cat_title"><br><br>
				    <input type="submit" name="Addcat">
				
			</form>
		</div>
		
	</div>

</body>
</html>


