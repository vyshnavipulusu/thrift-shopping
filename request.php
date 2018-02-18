<?php 
include "includes/connect.php";
session_start();
if(!isset($_SESSION['email'])) 
		header('location:login.php');
	$user_id = $_SESSION['user_id'];
	if(isset($_POST['submit'])) {
		$type=$_GET['type'];
		$size=$_GET['size'];
		$user_id = $_SESSION['user_id'];
		$qry2 = "select * from tbl_cloth where `name`='$type' and `directions`='$size' and `request_id`=0";
		mysqli_query($conn,$qry2);
	}
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
            <div class="disp">
                <h2>Request</h2>
                <form method="post" id="frm">
                    Type of Dress<select id="type" name="type">
                    <option value="Anarkali">Anarkali</option>
                    <option value="zeans">zeans</option>
                    <option value="choli">choli</option>
                    <option value="chudidhar">chudidhar</option>
                    <option value="shirts">shirts</option>
                    <option value="tops">tops</option>
                    <option value="frock">frock</option>
                    <option value="sari">sari</option>
                    </select></br>
                    sizes<select id="size" name="size">
                    <option value="Small">Small</option>
                    <option value="Medium">Medium</option>
                    <option value="Large">Large</option>
                    <option value="ExtraLarge">ExtraLarge</option>
                    <option value="XXL">XXL</option>
                    </select>
                    <input type="button"  value="Submit" name="submit" onclick="showRequest();">
                </form>
                <div id="request" class="request">
               </div>
				<script>
				document.getElementById("type").selectedIndex = -1;
                document.getElementById("size").selectedIndex = -1;
			function showRequest() {
				document.getElementById("request").innerHTML=" ";
				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						document.getElementById("request").innerHTML += this.responseText;
					}
				};
				var type=document.getElementById("type").value;
				var size=document.getElementById("size").value;
				document.getElementById("frm").reset();
				document.getElementById("type").selectedIndex = -1;
                document.getElementById("size").selectedIndex = -1;
				xhttp.open("GET","showRequest.php?rid=<?php echo $user_id;?>&type="+type+"&size="+size, true);
				xhttp.send();
			}
		</script>
                </div>
            </div>
        </div>  
    </body>
</html>