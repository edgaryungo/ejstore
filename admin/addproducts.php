<!DOCTYPE html>
<html>
<head>
    <title>Add products</title>
</head>
<body>
    <?php

require("../db.php");
header("admin.php");

 if(isset($_POST['submit'])){
    $cat = $_POST['product_cat'];
    $title = $_POST['product_title'];
    $price = $_POST['product_price'];
    $desc = $_POST['product_desc'];
    $image = $_POST['product_image'];
    $keyword =$_POST['product_keywords'];
 
       
    $sql = "INSERT INTO products(`product_id`,`product_cat`,`product_title`,`product_price`,`product_desc`,`product_image`,`product_keywords`)VALUES(NULL,'$cat','$title','$price','$desc','$image','$keyword')";
    
    $result = mysqli_query($con,$sql);

    if($result){
 echo "product added succefffully";
    }
    else{
        echo "Connection error:";
    }

   
        }
?>

</body>
</html>