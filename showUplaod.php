<?php
include "includes/connect.php";
session_start();
$user_id=$_SESSION['user_id'];
$request = $_GET['request'];
$rid=$_GET['rid'];
$qry1 = "UPDATE tbl_cloth SET `request_id`=1  WHERE `recipe_id`='$rid';";
echo $rid;
$sql=mysqli_query($conn,$qry1);
if ($conn->query($qry1)==TRUE){
echo $rid;
echo "Request for rent is guranted";
}
else echo"errror";
?>