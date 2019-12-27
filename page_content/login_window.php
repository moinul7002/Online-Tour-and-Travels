<?php
// include("connection.php");

//     //echo $email.$password;

//     //file_put_contents('a.txt',$email.$password);
// if(isset($_POST['sign_up']))
// {
// 	$email=$_POST['email'];
// 	$password=$_POST['password'];
// 	$sql="INSERT INTO user(user_email,user_password) VALUES ('$email','$password')";
// 	$res=mysqli_query($conn,$sql);  
// }





?>


<div class="modal-dialog">
	<div class="modal-content" id="myModalLabel1">
		<div class="modal-body">
			<div class="text-center"><img src="assets/img/logo.png" class="img-responsive" alt=""></div>

			<!-- Nav tabs -->
			<ul class="nav nav-tabs nav-advance theme-bg" id="nav_bar" role="tablist">
				<li class="nav-item active">
					<a class="nav-link" data-toggle="tab" href="#employer" role="tab">
						<i class="ti-user"></i> Login</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#candidate" role="tab">
							<i class="ti-user"></i>Sign Up</a>
						</li>
					</ul>
					<!-- Nav tabs -->

					<!-- Tab panels -->
					<div class="tab-content">
						
						<!-- Employer Panel 1-->
						<div class="tab-pane fade in show active" id="employer" role="tabpanel">
							<form class="login">
                                <p id="result1" style="color: red;"></p>
								<div class="form-group">
									<label>Email</label>
									<input type="text" name="email" class="form-control" placeholder="User Name">
								</div>

								<div class="form-group">
									<label>Password</label>
									<input type="password" name="password" class="form-control" placeholder="*********">
								</div>

								<div class="form-group">
									
								
								</div>
								<div class="form-group text-center">
									<button type="submit" class="btn theme-btn full-width btn-m">LogIn </button>
								</div>

							</form>





						</div>
						<!--/.Panel 1-->

						<!-- Candidate Panel 2-->
						<div class="tab-pane fade" id="candidate" role="tabpanel">
								


							<form class="sign_up">
								<p  id="result" style="color: red;"> </p>

							
								
                                <div class="form-group">
									<label>Name</label>
									<input type="text" name="name" id="name" class="form-control" placeholder="Enter Your Name" required>
								</div>


								<div class="form-group">
									<label>Email</label>
									<input type="email" name="email" id="email" class="form-control" placeholder="Enter Your Email" required>
								</div>

								<div class="form-group">
									<label>Password</label>
									<input type="password" name="password" id="password" class="form-control" placeholder="Enter Password"  required>
								</div>

								<div class="form-group">
									<label>Repeat Password</label>
									<input type="password" name="password_confirmation" id="r_password" class="form-control" placeholder="Repeat Password"  required>
								</div>


								<div class="form-group text-center">
									<button type="submit" id="submit" class="btn theme-btn full-width btn-m">Sign Up</button>
								</div>

							</form>
							<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

							<script>

								$(function () {

									$('.sign_up').on('submit', function (e) {
                                       e.preventDefault();
										

										$.ajax({
											type: 'post',
											url: 'page_content/sign_up.php',
											data: $('.sign_up').serialize(),
											success: function (html) {
                                                   var msg=$.trim(html);
                                                   if(msg=="Success")
                                                   {
                                                     
                                                     alert("Sign Up Successful.")
                                                     	window.location.reload();
                                                    
                                                   }
                                                   else{

												$('#result').html(html);
											}
											}
										});

									});

                              	$('.login').on('submit', function (e) {

										e.preventDefault();
                                        	

										$.ajax({
											type: 'post',
											url: 'page_content/login.php',
											data: $('.login').serialize(),
											success: function (a) {
                                                       
                                                    var msg2=$.trim(a);
                                                        
                                                      if(msg2=="not_ok"){
                                                       	$('#result1').html("Email and Password not match");
                                                       }
                                                       else if(msg2=="mail_not"){
                                                       	$('#result1').html("Please confirm your email");
                                                       }
                                                       else{

                                                       	window.location.reload();
                                                       }

                                                      
                                                     
                                                       

                                                     
                                                  
												
											}
										});

									});




								});									

							</script>




						</div>
						<!--/.Panel 2-->

					</div>
					<!-- Tab panels -->
				</div>
			</div>

		</div>

