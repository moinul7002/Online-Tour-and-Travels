<?php
include("connection.php");
$user_email=$_REQUEST['email'];
file_put_contents("email.txt",$user_email);
$sql="Update user_jayed set mail_confirm = 1 where user_email ='$user_email'";
$res=mysqli_query($conn,$sql);
if($res)
{
    echo "Congratulation! Your Email is Verified. Go to <a href='http://www.fff-bd.com/travelstock/index.php'>Travelstock</a>";
}




?>