<?php
use PHPMailer\PHPMailer\PHPMailer;
    		
include ("PHPMailer/PHPMailer.php");
include("../connection.php");

    //echo $email.$password;

    //file_put_contents('a.txt',$email.$password);
if(isset($_POST['email'])){
	$email=$_POST['email'];
	$name=$_POST['name'];
	$password=$_POST['password'];
	$r_password=$_POST['password_confirmation'];
	
	
/*	  $mail = new PHPMailer();
                $mail->setFrom('abcd@gmail.com');
                $mail->addAddress($email,$name);
                $mail->Subject = "Please verify email!";
                $mail->isHTML(true);
                $mail->Body = "
                Please Click On The Verify<br><br>
                
                <a href='http://www.fff-bd.com/travelstock/confirmation.php?email=$email'> Verify </a>";

                if ($mail->send())
                    $msg = "You have been registered! Please verify your email!";
                else
                    $msg = "Something wrong happened! Please try again!";
*/	
	
	
	
	
	//file_put_contents('a.txt', $email.$password);
	$sql2="SELECT * FROM user where user_email='$email'";
	$res2=mysqli_query($conn,$sql2);
	$num_rows=mysqli_num_rows($res2);

	if($num_rows==0){

		if($password==$r_password){

			$sql="INSERT INTO user(user_name,user_email,user_password) VALUES ('$name','$email','$password')";
			$res=mysqli_query($conn,$sql);  
			if($res)
			{
				echo "Success";
			}
		}
		else{
			echo "Password don't match";
		}
	}
	else{
		echo "Email Already Used";
	}
}



?>