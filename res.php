<?php



$place_id=$_REQUEST['id'];
include("connection.php");
$sql="SELECT * from place where id=$place_id";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_array($res);
error_reporting(E_ALL ^ E_WARNING);

$place_name=$row['place_name'];

$travel_path=$row['travel_path'];
if(isset($_POST['res_list']))

{
	$item=$_POST['item'];
	$budget=$_POST['budget'];

	$sql2="Select * from res where place_name='$place_name' and $item <= $budget";
	$res2=mysqli_query($conn,$sql2);

}
else{
	$sql2="Select * from res where place_name='$place_name'";
	$res2=mysqli_query($conn,$sql2);
}

$sql_hospital="Select * from hospital where place_name='$place_name'";
$res_hospital=mysqli_query($conn,$sql_hospital);


$sql_police="Select * from police_station where place_name='$place_name'";
$res_police=mysqli_query($conn,$sql_police);


$sql_gallery="Select * from place_gallery where place_name='$place_name'";
$res_gallery=mysqli_query($conn,$sql_gallery);

include("page_content/header.php");

?>



<!-- ======================= End Navigation ===================== -->

<!-- ======================= Start Page Title ===================== -->


<section class="page-title-banner" style="background-image:url(<?php echo $row['place_image'] ?>);">
	<div class="container">
		<div class="row">
			<div class="tr-list-detail">
				<div class="tr-list-detail">

				</div>
				<div class="tr-list-info">
					<h4><?php echo $row['place_name'] ?></h4>

				</div>
			</div>
		</div>
	</div>
</section>


<!-- ======================= End Page Title ===================== -->


<section class="profile-header-nav padd-0 bb-1">
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
				<div class="tab" role="tabpanel">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" ><a href="place.php?id=<?php echo $place_id?>" ><i class="ti-user"></i>Overview</a></li>

						<li role="presentation"><a href="review.php?id=<?php echo $place_id?>" >Review</a></li>

						<li role="presentation" class="active"><a href="res.php?id=<?php echo $place_id ?>" >Restaurant</a></li>

						<li role="presentation"><a href="hotel.php?id=<?php echo $place_id ?>" >Hotel</a></li>

						<?php 
						include("page_content/place_section.php");

						?> 
					</ul>
					<!-- Tab panes -->
				</div>
			</div>



		</div>
	</div>
</section>


<!-- =========== Start All Hotel In Grid View =================== -->
<section class="gray-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">

				<div class="tab-content tabs">
					<div role="tabpanel" class="tab-pane fade in active" id="Overview">
						<!-- Filter Sidebar -->
						<div class="col-md-4 col-sm-12">
							
							<div class="tr-single-box">
								<div class="tr-single-header">
									<h4>Filter</h4>
									<span class="pull-right clickables" data-toggle="collapse" data-target="#filter"><i class="ti-align-left"></i></span>
								</div>

								<form action="" method="post">
									<div id="filter" class="collapse in">

										<!-- Input Box Search -->
										<div class="tr-single-body">
											<div class="sidebar-input">

												<select class="wide form-control br-1" name='item'>
													<option data-display="Item">Item</option>
													<option value="Snacks">Snacks</option>
													<option value="Lunch">Lunch</option>
													<option value="Dinner">Dinner</option>

												</select>

											</div>


										</div>


										<div class="tr-single-body">
											<div class="sidebar-input">
												<input type="text" name='budget'class="form-control" placeholder="Enter your maximum Budget(1 person)">
											</div>


										</div>

										<div class="tr-single-body">
											<div class="sidebar-input">
												<input type='submit' class="form-control" value="Apply" name="res_list">
											</div>


										</div>




									</div>

								</form>
							</div>
							
						</div>
						
						<!-- All Item -->
						<div class="col-md-8 col-sm-12">
							
							<!-- Row -->
							
							<!-- /Row -->
							
							<!-- Row -->
							<div class="row">
								<?php
								while($row2=mysqli_fetch_array($res2)){
									$res_id=$row2['id'];

									$sql3="Select * from res_review where res_id=$res_id";
									$res3=mysqli_query($conn,$sql3);
									$rating=0;
									$num_of_review=mysqli_num_rows($res3);


									while($row3=mysqli_fetch_array($res3))

									{
										$rating=$rating+$row3['rating'];



									}
									if($num_of_review==0)
									{
										$num_of_review=1;
									}

									if($rating==0)
									{
										$rating=0;
									}

									$rating=floor($rating/$num_of_review);

									?>
									<!-- Single Destination -->
									<div class="col-md-6 col-sm-6">
										<article class="destination-box style-1">

											<div class="destination-box-image">
												<figure>
													<a href="res_detail.php?id=<?php echo $row2['id'] ?>">
														<img src='<?php echo $row2['res_image']?>' class="img-responsive listing-box-img" alt="" />
														<div class="list-overlay"></div>
													</a>

													<h4 class="destination-place">
														<a href="#"><?php echo $row2['res_name']?></a>
													</h4>

												</figure>
											</div>

											<div class="entry-meta">
												<div class="meta-item meta-rating">

													<?php 
													if ($rating < 1) {
														?>
														<p style="margin:0px;font-size:10px;" >No Ratings</p>
														<?php
													}else {
														for($i=0;$i<$rating;$i++) 
														{
															?>

															<i class="fa fa-star"></i>
															<?php
														}
													}
													?>
												</div>

											</div>

											<div class="inner-box">
												<div class="box-inner-ellipsis">

													<div class="price-box">
														<div class="destination-price fl-right">

														</div>
													</div>
												</div>
											</div>

										</article>
									</div>
									<?php
								}

								?>
								
								<!-- Single Destination -->

								
								<!-- Single Destination -->
								
								
								<!-- Single Destination -->
								
								
								
								
								
								
								
								
								
								<!-- /Row -->

						<!-- <div class="row"> 
							<ul class="pagination">
								<li class="page-item">
								  <a class="page-link" href="#" aria-label="Previous">
									<span class="ti-arrow-left"></span>
									<span class="sr-only">Previous</span>
								  </a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item active"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item">
								  <a class="page-link" href="#" aria-label="Next">
									<span class="ti-arrow-right"></span>
									<span class="sr-only">Next</span>
								  </a>
								</li>
							</ul>
						</div>
						
					-->



				</div>

			</div>
		</div>


		<div role="tabpanel" class="tab-pane fade in" id="Travel">

			<!-- Review -->
			<div class="row">
				<div class="tr-single-box">
					<div class="tr-single-header">
						<h4><i class="ti-write"></i>Travel Path</h4>

					</div>
					<div class="tr-single-body">

						<!-- Single Review -->
						<div class="review-box">


							<div class="review-box-content">

								<div class="review-user-info">
									<h4><?php echo $place_name ?></h4>

									<p>
										<div class="icon-box-icon-block">
											<a href="#">
												<div class="icon-box-round">
													<i class=" ti-location-pin"></i>
												</div>
												<div class="icon-box-text">
													<?php echo $travel_path ?>
												</div>
											</a>
										</div>
									</p>







								</div>

							</div>

						</div>



						<!-- Single Review -->



					</div>
				</div>

			</div>

		</div>





		<div role="tabpanel" class="tab-pane fade in" id="Photos">
			<section class="gray-bg">
				<div class="container">

					<div class="row">

						<!-- Single Destination -->

						<?php 
						while($row_gallery=mysqli_fetch_array($res_gallery))
						{
							
							?>
							<div class="col-md-4 col-sm-6">
								<article class="destination-box style-1">

									<div class="destination-box-image">
										<figure>
											<a data-fancybox="gallery" href="<?php echo $row_gallery['image']  ?>">
												<img src="<?php echo $row_gallery['image']  ?>" class="img-responsive listing-box-img" alt="" />
												<div class="list-overlay"></div>
											</a>


										</figure>
									</div>

									


								</article>
							</div>


							<?php
						}

						?>

						<!-- Single Destination -->

					</div>
				</div>
			</section>
		</div>



		<div role="tabpanel" class="tab-pane fade in" id="Police">
			
			<!-- Review -->
			<div class="row">
				<div class="tr-single-box">
					<div class="tr-single-header">
						<h4><i class="ti-write"></i>Police Station List</h4>

					</div>
					<div class="tr-single-body">
						<?php while($row_police=mysqli_fetch_array($res_police))
						{ 


							?>
							<!-- Single Review -->
							<div class="review-box">
								
								
								<div class="review-box-content">
									
									<div class="review-user-info">
										<h4><?php echo $row_police['police_station_name'] ?></h4>
										
										<p>
											<div class="icon-box-icon-block">
												<a href="#">
													<div class="icon-box-round">
														<i class=" ti-location-pin"></i>
													</div>
													<div class="icon-box-text">
														<?php echo $row_police['address'] ?>
													</div>
												</a>
											</div>
										</p>


										<p>
											<div class="icon-box-icon-block">
												<a href="#">
													<div class="icon-box-round">
														<i class=" ti-mobile"></i>
													</div>
													<div class="icon-box-text">
														<?php echo $row_police["contact_no"] ?>
													</div>
												</a>
											</div>
										</p>





									</div>
									
								</div>
								
							</div>


							<?php

						}

						?>
						
						<!-- Single Review -->

						
						
					</div>
				</div>
				
			</div>
			
		</div>




		<div role="tabpanel" class="tab-pane fade in" id="Hospital">
			
			<!-- Review -->
			<div class="row">
				<div class="tr-single-box">
					<div class="tr-single-header">
						<h4><i class="ti-write"></i>Hospital List</h4>

					</div>
					<div class="tr-single-body">
						<?php while($row_hos=mysqli_fetch_array($res_hospital))
						{ 


							?>
							<!-- Single Review -->
							<div class="review-box">
								
								
								<div class="review-box-content">
									
									<div class="review-user-info">
										<h4><?php echo $row_hos['hospital_name'] ?></h4>
										
										<p>
											<div class="icon-box-icon-block">
												<a href="#">
													<div class="icon-box-round">
														<i class=" ti-location-pin"></i>
													</div>
													<div class="icon-box-text">
														<?php echo $row_hos['address'] ?>
													</div>
												</a>
											</div>
										</p>


										<p>
											<div class="icon-box-icon-block">
												<a href="#">
													<div class="icon-box-round">
														<i class=" ti-mobile"></i>
													</div>
													<div class="icon-box-text">
														<?php echo $row_hos["contact_no"] ?>
													</div>
												</a>
											</div>
										</p>





									</div>
									
								</div>
								
							</div>


							<?php

						}

						?>
						
						<!-- Single Review -->

						
						
					</div>
				</div>
				
			</div>
			
		</div>









	</div>
</div>
</div>
</section>


<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<?php include("page_content/login_window.php"); ?>
</div>


<!-- =========== End All Hotel In Grid View =================== -->

<!-- ============== Before Footer ====================== -->

<!-- =================== Before Footer ====================== -->

<!-- ================= footer start ========================= -->


<!-- Sign Up Window Code -->
<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" id="myModalLabel1">
			<div class="modal-body">
				<div class="text-center"><img src="assets/img/logo.png" class="img-responsive" alt=""></div>

				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav-advance theme-bg" role="tablist">
					<li class="nav-item active">
						<a class="nav-link" data-toggle="tab" href="#employer" role="tab">
							<i class="ti-user"></i> Employer</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#candidate" role="tab">
								<i class="ti-user"></i> Candidate</a>
							</li>
						</ul>
						<!-- Nav tabs -->

						<!-- Tab panels -->
						<div class="tab-content">

							<!-- Employer Panel 1-->
							<div class="tab-pane fade in show active" id="employer" role="tabpanel">
								<form>
									
									<div class="form-group">
										<label>User Name</label>
										<input type="text" class="form-control" placeholder="User Name">
									</div>
									
									<div class="form-group">
										<label>Password</label>
										<input type="password" class="form-control" placeholder="*********">
									</div>
									
									<div class="form-group">
										<span class="custom-checkbox">
											<input type="checkbox" id="45">
											<label for="45"></label>Remember me
										</span>
										<a href="#" title="Forget" class="fl-right">Forgot Password?</a>
									</div>
									<div class="form-group text-center">
										<button type="button" class="btn theme-btn full-width btn-m">LogIn </button>
									</div>
									
								</form>
								
								<div class="log-option"><span>OR</span></div>
								
								<div class="row mrg-bot-20">
									<div class="col-md-6">
										<a href="#" title="" class="fb-log-btn log-btn"><i class="fa fa-facebook"></i>Sign In With Facebook</a>
									</div>
									<div class="col-md-6">
										<a href="#" title="" class="gplus-log-btn log-btn"><i class="fa fa-google-plus"></i>Sign In With Google+</a>
									</div>
								</div>

							</div>
							<!--/.Panel 1-->
							
							<!-- Candidate Panel 2-->
							<div class="tab-pane fade" id="candidate" role="tabpanel">
								<form>
									
									<div class="form-group">
										<label>User Name</label>
										<input type="text" class="form-control" placeholder="User Name">
									</div>
									
									<div class="form-group">
										<label>Password</label>
										<input type="password" class="form-control" placeholder="*********">
									</div>
									
									<div class="form-group">
										<span class="custom-checkbox">
											<input type="checkbox" id="44">
											<label for="44"></label>Remember me
										</span>
										<a href="#" title="Forget" class="fl-right">Forgot Password?</a>
									</div>
									<div class="form-group text-center">
										<button type="button" class="btn theme-btn full-width btn-m">LogIn </button>
									</div>
									
								</form>
								
								<div class="log-option"><span>OR</span></div>
								
								<div class="row mrg-bot-20">
									<div class="col-md-6">
										<a href="#" title="" class="fb-log-btn log-btn"><i class="fa fa-facebook"></i>Sign In With Facebook</a>
									</div>
									<div class="col-md-6">
										<a href="#" title="" class="gplus-log-btn log-btn"><i class="fa fa-google-plus"></i>Sign In With Google+</a>
									</div>
								</div>
								
							</div>
							<!--/.Panel 2-->
							
						</div>
						<!-- Tab panels -->
					</div>
				</div>
			</div>
		</div>   
		<!-- End Sign Up Window -->
		
		<!-- Switcher -->
		
		<!-- /Switcher -->

		<!-- =================== START JAVASCRIPT ================== -->
		<script src="assets/plugins/js/jquery.min.js"></script>
		<script src="assets/plugins/js/bootstrap.min.js"></script>
		<script src="assets/plugins/js/viewportchecker.js"></script>
		<script src="assets/plugins/js/bootsnav.js"></script>
		<script src="assets/plugins/js/slick.min.js"></script>
		<script src="assets/plugins/js/jquery.nice-select.min.js"></script>
		<script src="assets/plugins/js/jquery.fancybox.min.js"></script>
		<script src="assets/plugins/js/jquery.downCount.js"></script>
		<script src="assets/plugins/js/freshslider.1.0.0.js"></script>
		<script src="assets/plugins/js/moment.min.js"></script>
		<script src="assets/plugins/js/daterangepicker.js"></script>
		<script src="assets/plugins/js/wysihtml5-0.3.0.js"></script>
		<script src="assets/plugins/js/bootstrap-wysihtml5.js"></script>
		
		<!-- Dashboard Js -->
		<script src="assets/plugins/js/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/js/jquery.metisMenu.js"></script>
		<script src="assets/plugins/js/jquery.easing.min.js"></script>

		<!-- Custom Js -->
		<script src="assets/js/custom.js"></script>

		



		<script type="text/javascript">
			$(document).ready(function() {
				$('#styleOptions').styleSwitcher();
			});
		</script>

	</body>
	</html>