<!--<?php
session_start();
require_once 'db.php';
if(isset($_SESSION["uid"])){
	header("");
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
	<p>ghjklrthyjuklghjklthyjklgvbnm,tyjukl




gviulhbuonoihn

	</p>
</body>
</html>-->
<!DOCTYPE html>
<html>
<head>
	<title>admin</title>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jQuery2.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Jfood Admin</a>
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

	<div class="container" style="padding-top: 80px;">
		<table class="table table-bordered table-stripped">
			<thead>
				<td>Fistname</td>
				<td>Lastname</td>
				<td>Email</td>
				<td>Phonenumber</td>
				<td>Order_id</td>
				<td>product_id</td>
				<td>quantity</td>
				<td>product_title</td>
				<td>Total price</td>
				<td>Trx_id</td>
				<td>P_status</td>
			</thead>
			<tbody>
	<?php
       require_once 'db.php';
      
       $id = $_GET['id'];

       $sql = "SELECT first_name,last_name,email,mobile,order_id,qty,trx_id,p_status,product_price,product_title,orders.product_id FROM user_info,orders,products WHERE user_info.user_id = $id and orders.product_id = products.product_id and orders.user_id = $id order by order_id asc";
      /* $pricequery = "SELECT product_price,product_title FROM user_info, products LEFT JOIN orders ON orders.product_id = products.product_id WHERE user_info.user_id = orders.user_id";
       $presult = mysqli_query($con,$pricequery) or die("Error");
       $prow = mysqli_fetch_array($presult);*/

       $result = $con->query($sql)  or die("Error");;

        if($result -> num_rows > 0 ){
       	while($row =  $result->fetch_assoc()){?>
				<tr>
					<td><?php echo $row['first_name'];?></td>
					<td><?php echo $row['last_name'];?></td>
					<td><?php echo $row['email'];?></td>
					<td><?php echo $row['mobile'];?></td>
					<td><?php echo $row['order_id'];?></td>
					<td><?php echo $row['product_id'];?></td>
					<td><?php echo $row['qty'];?></td>
					<td><?php echo $row['product_title'];?></td>
					<td><?php echo $row['product_price'] * $row['qty']; ?></td>
					<td><?php echo $row['trx_id'];?></td>

					<td><?php echo $row['p_status']?></td>
				</tr> 
			<?php }

		   }
		
		?>
			</tbody>
			
		</table>
	</div>

</body>
</html>


