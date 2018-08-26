<?php

$servername = "localhost";
$username = "liquorst_root";
$password = "105199748217062";
$db = "liquorst_ecom";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


