<?php
@ob_start();
if(session_status()!=PHP_SESSION_ACTIVE) session_start();
include("../connection.php");
$email=$_POST['email'];
$password=$_POST['password'];


$sql="SELECT * from admin_hotel where email='$email' and password='$password'";
$res=mysqli_query($conn,$sql);
$num_rows=mysqli_num_rows($res);
$row = mysqli_fetch_array($res);
$hotel_name = $row['hotel_name'];


if($num_rows!=0)

{
	   header("location:main.php");
		$_SESSION['hotel_name']=$hotel_name;
	
}
else
{
	header("location:index.php");
}
?>