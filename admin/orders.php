<!DOCTYPE html>
<html>
<head>
	<title>orders</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
</head>
<body>
<div class="container" >	
<table class="table table-bordered table-stripped" style="margin: 5px;">
			<thead style="font-weight: bold;">
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
       require_once '../db.php';
      


       $sql = "SELECT first_name,last_name,email,mobile,order_id,qty,trx_id,p_status,product_price,product_title,orders.product_id FROM user_info,orders,products WHERE user_info.user_id = orders.user_id and orders.product_id = products.product_id order by order_id asc";
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
</body>
</div>
</html>