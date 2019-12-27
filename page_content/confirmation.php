<?php
include("connection.php");
$user_email=$_REQUEST['email'];
file_put_contents("email.txt",$user_email);
$sql="Update user set mail_confirm=true where user_email='$user_email'";
$res=mysqli_query($con,$sql);
if($res)
{
    echo "Congratulation! Your Email is Verified";
}




?>