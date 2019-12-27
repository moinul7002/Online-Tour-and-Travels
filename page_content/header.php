<?php
@ob_start();

if(session_status()!=PHP_SESSION_ACTIVE) session_start();

ini_set('error_log', 'ussd-app-error.log');
error_reporting(E_ALL ^ E_WARNING);



if(isset($_SESSION['id']))
{
$user_id=$_SESSION['id'];
file_put_contents('a.txt',$user_id);
}
else
{
	$user_id=NULL;
}

if(isset($_GET['logout'])){
    // do something
    session_destroy();



}


  




?>

<!DOCTYPE html>
<html lang="en">
	
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title></title>

    <!-- Plugins CSS -->
	<link rel="stylesheet" href="assets/plugins/css/plugins.css">	
    
    <!-- Custom style -->
    <link href="assets/css/style.css" rel="stylesheet">
   
     <link href="assets/css/custom.css" rel="stylesheet">

	<link href="assets/css/responsiveness.css" rel="stylesheet"><link id="jssDefault" rel="stylesheet" href="assets/css/skins/default.css">
    
	</head>
	
	<body>
		
		<!-- ======================= Start Navigation ===================== -->
		<nav class="navbar navbar-default navbar-mobile navbar-fixed light bootsnav">
			<div class="container">
			
				<!-- Start Logo Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="index.php">
						<img src="assets/img/logo.png" class="logo logo-display" alt="">
						<img src="assets/img/logo.png" class="logo logo-scrolled" alt="">
					</a>

				</div>
				<!-- End Logo Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
				
					<ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">
					
						<li>
							<a href="index.php" >Home</a>
							
						</li>

                       	

						

						
					
					
						
						
						
						
						
						
				    </ul>
					<?php 
                    if($user_id==NULL){
					?>
					<ul class="nav navbar-nav navbar-right">
						<li class="br-right"><a href="#"  data-toggle="modal" data-target="#signin"><i class="login-icon ti-user"></i>Join</a></li>
						
					</ul>

					<?php
                  }
                  else{
					?>

					<ul class="nav navbar-nav navbar-right">
						<li class="br-right"><a href="page_content/logout.php" ><i class="login-icon ti-user"></i>Logout</a></li>
						
					</ul>
					<?php
                        }
					?>
						
				</div>
				<!-- /.navbar-collapse -->
			</div>  
		</nav>