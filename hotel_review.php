
<?php
include("connection.php");

include("page_content/header.php");
$hotel_id=$_REQUEST['id'];

$sql="Select * from hotel where id=$hotel_id";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_array($res);
$hotel_name=$row['hotel_name'];


if(isset($_POST['review_submit']))
{

	$rating=floor($_POST['rating']);
	$review=$_POST['review'];
	$fnm= $_FILES["pimage"]["name"];
	$dst="image/".$fnm;
	$dst1="image/".$fnm;
	move_uploaded_file($_FILES["pimage"]["tmp_name"],$dst);

	$sql_gallery2="Insert into hotel_gallery(hotel_name,image) VALUES('$hotel_name','$dst')";
	$res_gallery2=mysqli_query($conn,$sql_gallery2);

	if($rating>5)
	{
		$rating=5;
	}


	$sql2="INSERT INTO hotel_review(hotel_id,user_id,review,rating,image) VALUES ($hotel_id,$user_id,'$review',$rating,'$dst') ";
	$res2=mysqli_query($conn,$sql2);
	if($res2)
	{
		header("location:hotel_review.php?id=$hotel_id"); 
	}
}

$sql3="SELECT * FROM hotel_review where hotel_id=$hotel_id";
$res3=mysqli_query($conn,$sql3);

$sql4="SELECT * FROM user where id=$user_id";
$res4=mysqli_query($conn,$sql4);

$row4=mysqli_fetch_array($res4);

$sql_gallery="Select * from hotel_gallery where hotel_name='$hotel_name'";
$res_gallery=mysqli_query($conn,$sql_gallery);

?>
<!-- ======================= End Navigation ===================== -->

<!-- ======================= Start Banner ===================== -->


<section class="page-title-banner" style="background-image:url(<?php echo $row['hotel_image'] ?>);">
	<div class="container">
		<div class="row">
			<div class="tr-list-detail">
				<div class="tr-list-detail">

				</div>
				<div class="tr-list-info">
					<h4><?php echo $row['hotel_name'] ?></h4>

				</div>
			</div>
		</div>
	</div>
</section>
<!-- ======================= End Banner ===================== -->

<!-- ======================= Start Detail Header ===================== -->

<section class="profile-header-nav padd-0 bb-1">
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
				<div class="tab" role="tabpanel">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" ><a href="hotel_detail.php?id=<?php echo $hotel_id?>" ><i class="ti-user"></i>Overview</a></li>

						<li role="presentation" class="active" ><a href="hotel_review.php?id=<?php echo $hotel_id?>" >Review</a></li>



						<li role="presentation"><a href="#Photos" aria-controls="messages" role="tab" data-toggle="tab">Photos</a></li>
					</ul>
					<!-- Tab panes -->
				</div>
			</div>



		</div>
	</div>
</section>


<!-- ======================= End Detail Header ===================== -->

<!-- ======================= Start Detail ===================== -->

<section class="tr-single-detail gray-bg">
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
				<div class="tab-content tabs">

					<div role="tabpanel" class="tab-pane fade in active" id="Overview">

						<div class="row">
							<div class="col-md-8 col-sm-12">

								<div class="tr-single-box">
									<div class="tr-single-header">
										<h4><i class="ti-write"></i>All Review</h4>


									</div>
									<div class="tr-single-body">
										<?php

										while($row3=mysqli_fetch_array($res3))
										{
											$id=$row3['user_id'];

											$sql4="SELECT * FROM user_jayed where id=$id";
											$res4=mysqli_query($conn,$sql4);

											$row4=mysqli_fetch_array($res4);



											?>
											<!-- Single Review -->
												<div class="review-box">
												
                                              <div class = "row">
                                                 <div class = "col-md-6">
												<div class="review-box-content">
                                                  

													<div class="review-user-info">


														<h4><?php echo $row4['user_name'] ?></h4>
														<p><?php echo $row3['review'] ?></p>
														<?php
							
													 for($i=0;$i<$row3['rating'];$i++) 
					                                  {
													?>

													<i class="fa fa-star"></i>
													<?php
					                                  
					                              }?>

													</div>


                                                   </div>
                                               </div>


                                               
											
                                                 <div class= "col-md-4" style=" float: right;">

                                                 	<figure>
														<a data-fancybox="gallery" href="<?php echo $row3['image'] ?>">
															<img src="<?php echo $row3['image'] ?>" class="img-responsive listing-box-img" alt=""  width="50%" height="50%" />
															<div class="list-overlay"></div>
														</a>


													</figure>
                                                     
                                                     	
                                                   
												    
                                                	</div>

													


                                                  
                                              



                                           </div>

                                             	

											  </div>
											<!-- Single Review -->

											<?php
										}
										?>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-12">


								<div class="tr-single-box">
									<div class="tr-single-header">

										<h4><i class="ti-write"></i>Write Review</h4>

									</div>

									<div class="tr-single-body">

										<div class="row">
											<div class="col-sm-12 col-md-12">
												<form method="post" action="" name="sForm" enctype="multipart/form-data">

													<div id="result1"> </div>
													<div class="form-group">
														<label>Rating(Out of 5)</label>
														<input type="number" name="rating" class="form-control form-control-sm" required>
													</div>

													<div class="form-group">
														<label for="exampleFormControlTextarea2">Write Your Review </label>
														<textarea class="form-control rounded-0" name="review" id="exampleFormControlTextarea2" rows="3" required ></textarea>
													</div>
													<div class="form-group">
														<div class="custom-file">
															<input type="file"  name="pimage"">
															<label class="custom-file-label" for="customFile">Upload Photo(Optional)</label>
														</div>
													</div>
													<br>


													<div class="form-group text-center">
														<?php if($user_id!=NULL)
														{
															?>
															<button type="submit" name="review_submit" class="btn theme-btn full-width btn-m">Done </button>
															<?php
														}
														else{
															?>

															<button type="button" name="review_submit" class="btn theme-btn full-width btn-m" disabled>You need to login first </button>

															<?php
														}
														?>

													</div>

												</form>
											</div>
										</div>


									</div>

								</div>

								<!-- overview & booking Form -->

								<!-- /col-md-4 -->
							</div>

						</div>



					</div>









					<!-- ============ Review =================== -->





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




					<!-- ============ Photos =================== -->


				</div>
			</div>

			<!-- Sidebar Start -->




		</div>
	</section>


	<!-- ======================= End Detail ===================== -->	

	<!-- ============== Before Footer ====================== -->
	<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
		<?php include("page_content/login_window.php"); ?>
	</div>
	<!-- =================== Before Footer ====================== -->

	<!-- ================= footer start ========================= -->
	<?php
	include("page_content/footer.php");
	?>

	<!-- Sign Up Window Code -->

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
	<script src="http://maps.google.com/maps/api/js?key=AIzaSyCJjm88GF1sxHWQuSScWVpDmdNP0c-QPSc"></script>
	<script src="assets/plugins/js/markerclusterer.js"></script>
	<script src="assets/js/map.js"></script>

	<!-- Dashboard Js -->
	<script src="assets/plugins/js/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/js/jquery.metisMenu.js"></script>
	<script src="assets/plugins/js/jquery.easing.min.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom.js"></script>

	<script>
		$('#checkin').daterangepicker({
			"singleDatePicker": true,
			"timePicker": true,
			"startDate": "12/12/2018",
			"endDate": "12/14/2018"
		}, function(start, end, label) {
			console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
		});
	</script>

	<script>
		$('#checkout').daterangepicker({
			"singleDatePicker": true,
			"timePicker": true,
			"startDate": "12/18/2018",
			"endDate": "12/18/2018"
		}, function(start, end, label) {
			console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
		});
	</script>

	<script src="assets/js/jQuery.style.switcher.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#styleOptions').styleSwitcher();
		});
	</script>

</body>

</html>