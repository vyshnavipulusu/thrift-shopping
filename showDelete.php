<?php
include "includes/connect.php";
session_start();
$user_id=$_SESSION['user_id'];
$rid = $_GET['rid'];
$qry1 = "DELETE FROM `tbl_cloth` where `recipe_id`='$rid' and `user_id`='$user_id';";
$sql=mysqli_query($conn,$qry1);
header('location:home.php');
?>