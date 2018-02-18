<?php 
include "includes/connect.php";
session_start();
$user_id = $_SESSION['user_id'];

?>	
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <link rel="stylesheet" href="home.css">
</head>
<body>

<div class="header">
            <?php include "includes/header1.php"?>   
        </div>  
<div class="container">
        <div class="content">
            <div class="disp">
                    <h2>Shopping</h2>
                    <ul class="recipes-ul">
                    <?php 
                    $qry = "select * from tbl_cloth where `user_id`='$user_id'"; // make select query to get all rows from recipe table
                    $sql = mysqli_query($conn,$qry) or die("error: ".$qry); // execute the quert
                    if(mysqli_num_rows($sql)>0) { // if query returned some rows
                        while($row=mysqli_fetch_assoc($sql)/*your code here*/) { // keep fetching rows using mysqli_fetch_assoc method
                           $imagepath = "uploads/".$row['photo'];//get imagepath from $row associative array
                           $recipelink = "view.php?rid=".$row['recipe_id']; // learn how we are doing this
                           $name = $row['name'];//get the recipe name
                           $description =  $row['description'];//get the description of recipe
                           $request_id = $row['request_id'];
                           echo "<li>";
                           echo "<img src='$imagepath'>";
                           echo "<h3><a href='$recipelink'>$name</a></h3>";
                           echo "<p>$description</p>";
                           echo "</li>";

                        } 
                    } else { 
                        echo "<li>No Recipes</li>";
}

?>
                    </ul>
            </div> 
          
    </div>
</div>

</body>
</html>
