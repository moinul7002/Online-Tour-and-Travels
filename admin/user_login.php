<?php

include("../connection.php");
$email=$_POST['email'];
$password=$_POST['password'];


$sql="SELECT * from admin where email='$email' and password='$password'";
$res=mysqli_query($conn,$sql);
$num_rows=mysqli_num_rows($res);



if($num_rows!=0)

{
	   header("location:main.php");
	
	
}
else
{
	header("location:main.php");
}
?>