<?php 
@ob_start();
if(session_status()!=PHP_SESSION_ACTIVE) session_start();

ini_set('error_log', 'ussd-app-error.log');

 include("../connection.php");

    //echo $email.$password;

    //file_put_contents('a.txt',$email.$password);
     if(isset($_POST['email'])){
     //session_start();
	$email=$_POST['email'];
	$password=$_POST['password'];
	file_put_contents('b.txt', $email.$password);

	 $sql="Select * from user where user_email='$email' and user_password='$password'";

	 $res=mysqli_query($conn,$sql);  
	 $row=mysqli_fetch_array($res);
	 

	 $num_rows=mysqli_num_rows($res);
	 $mail_confirm = $row['mail_confirm'];
	 
	 if($num_rows==0)
	 {
      
	 	echo "not_ok";
	 }
	 else{
	     if($mail_confirm==1){
	 	$id=$row['id'];
	 	//file_put_contents('b.txt',$id);
	 	$_SESSION['id']=$id;
     //  $_SESSION['id']=$id;
	 echo "ok";
	     }
	     else{
	         echo "mail_not";
	     }
	 
	 
	 }
}

 

?>


