<?php
include("connection.php");
$hotel_id=$_REQUEST['id'];
error_reporting(E_ALL ^ E_WARNING);

$sql="SELECT * from hotel where id=$hotel_id";
$res=mysqli_query($conn,$sql);

$row=mysqli_fetch_array($res);

$hotel_name=$row['hotel_name'];

$sql3="Select * from hotel_review where hotel_id=$hotel_id";
$res3=mysqli_query($conn,$sql3);
$rating=0;
$five=0;
$four=0;
$three=0;
$two=0;
$one=0;
$num_of_review=mysqli_num_rows($res3);
while($row3=mysqli_fetch_array($res3))

{
	$rating=$rating+$row3['rating'];
	if($row3['rating']==5)
	{
		$five=$five+1;
	}

	else if($row3['rating']==4)
	{
		$four=$four+1;
	}

	else if($row3['rating']==3)
	{
		$three=$three+1;
	}

	else if($row3['rating']==2)
	{
		$two=$two+1;
	}

	else if($row3['rating']==1)
	{
		$one=$one+1;
	}

}

if($num_of_review!=0){
	$rating=$rating/$num_of_review;
$rating=round($rating,1);
}
$five=($five/$num_of_review)*100;
$four=($four/$num_of_review)*100;
$three=($three/$num_of_review)*100;
$two=($two/$num_of_review)*100;
$one=($one/$num_of_review)*100;

$sql_gallery="Select * from hotel_gallery where hotel_name='$hotel_name'";
$res_gallery=mysqli_query($conn,$sql_gallery);

include("page_content/header.php");

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
						<li role="presentation" class="active" ><a href="hotel_detail.php?id=<?php echo $hotel_id?>" ><i class="ti-user"></i>Overview</a></li>
						
						<li role="presentation"><a href='hotel_review.php?id=<?php echo $row['id']?>' >Review</a></li>

						
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
						
						<!-- Overview -->
						<div class="row">


							<div class="tr-single-box">
								<div class="tr-single-header">
									<h4><i class="fa fa-star-o"></i>Overview</h4>
								</div>
								<div class="tr-single-body">
									<div class="row">
										
										<div class="col-md-8 col-sm-12">
											
											<div class="col-md-12 col-sm-12">
												<div class="list-overview-detail">
													<h5><?php echo $row['hotel_name'] ?></h5>
													<ul class="extra-service">
														<li>
															<div class="icon-box-icon-block">
																<a href="#">
																	<div class="icon-box-round">
																		<i class=" ti-location-pin"></i>
																	</div>
																	<div class="icon-box-text">
																		<?php echo $row['hotel_address'] ?>
																	</div>
																</a>
															</div>
														</li>
														
														
														<li>

															<div class="icon-box-icon-block">
																<a href="#">
																	<div class="icon-box-round">
																		<i class=" ti-mobile"></i>
																	</div>
																	<div class="icon-box-text">
																		<?php echo $row['hotel_contact'] ?>
																	</div>
																</a>
															</div>
														</li>
														
														
														
														
														<li>
															<div class="icon-box-icon-block">
																<a href="#">
																	<div class="icon-box-round">
																		<i class="ti-comment-alt"></i>
																	</div>
																	<div class="icon-box-text">
																		<?php echo $num_of_review ?> Reviews
																	</div>
																</a>
															</div>
														</li>
														
														


														
													</ul>
												</div>
											</div>
										</div>
										<div class="col-md-4 col-sm-12">
											
											
											<div class="tr-single-box">
												<div class="tr-single-header">
													
													<h4><i class="fa fa-star-o"></i>Ratting</h4>
													
												</div>
												
												<div class="tr-single-body">
													
													<div class="row">
														<div class="col-sm-12 col-md-12">
															<div id="review_summary">
																<strong><?php echo $rating ?></strong>
																
																<small>Based on <?php echo $num_of_review ?> reviews</small>
															</div>
														</div>
													</div>


												</div>
												
											</div>
											
											<!-- overview & booking Form -->
											<div class="tr-single-box">
												<div class="tr-single-header">

												</div>


												<div class="tr-single-body">

													<div class="row">
														<div class="col-sm-12 col-md-12">
															<div class="row">
																<div class="col-lg-10 col-9">
																	<div class="progress">
																		<div class="progress-bar progress-bar-success" role="progressbar" style="width: <?php echo $five?>%" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-lg-2 col-3"><small><strong>5</strong></small></div>
															</div>
															<!-- /row -->
															<div class="row">
																<div class="col-lg-10 col-9">
																	<div class="progress">
																		<div class="progress-bar progress-bar-warning" role="progressbar" style="width: <?php echo $four?>%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-lg-2 col-3"><small><strong>4</strong></small></div>
															</div>
															<!-- /row -->
															<div class="row">
																<div class="col-lg-10 col-9">
																	<div class="progress">
																		<div class="progress-bar progress-bar-primary" role="progressbar" style="width: <?php echo $three?>%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-lg-2 col-3"><small><strong>3</strong></small></div>
															</div>
															<!-- /row -->
															<div class="row">
																<div class="col-lg-10 col-9">
																	<div class="progress">
																		<div class="progress-bar progress-bar-danger" role="progressbar" style="width: <?php echo $two?>%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-lg-2 col-3"><small><strong>2</strong></small></div>
															</div>
															<!-- /row -->
															<div class="row">
																<div class="col-lg-10 col-9">
																	<div class="progress">
																		<div class="progress-bar" role="progressbar" style="width: <?php echo $one?>%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-lg-2 col-3"><small><strong>1</strong></small></div>
															</div>
															<!-- /row -->	
														</div>
														
													</div>
												</div>

											</div>
											
											<!-- Share this -->
											
											
											<!-- Share this -->
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<!-- Overview -->
						
						
						<!-- Description -->
						<div class="row">
							<div class="tr-single-box">
								<div class="tr-single-header">
									<h4><i class="ti-location-pin"></i>Location</h4>
								</div>


								<div class="height-350" id="singleMap" data-latitude="40.712776" data-longitude="-74.005974" data-mapTitle="Our Location"></div>	

								<script>

									function initMap()
									{

										var location= {lat:-25.363, lng:131.044};
										var map=new google.maps.Map(document.getElementById("singlemap"),{
											zoom:4,
											center:location
										}

										);



									}
								</script>

								<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJjm88GF1sxHWQuSScWVpDmdNP0c-QPSc&callback=initMap">


								</script>
								
							</div>
						</div>
						
						<!-- Amenities -->
						
						
						
						
					</div>
					
					<!-- ============ Features =================== -->
					



					



					
					<!-- ============ Review =================== -->
					
					
					<!-- ============ Photos =================== -->
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
					
				</div>
			</div>
			
			<!-- Sidebar Start -->
			
			<!-- /col-md-4 -->
		</div>

		

	</div>
</section>
<!-- ======================= End Detail ===================== -->	

<!-- ============== Before Footer ====================== -->

<!-- =================== Before Footer ====================== -->

<!-- ================= footer start ========================= -->
<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<?php include("page_content/login_window.php"); ?>
</div>

<!-- Sign Up Window Code -->

<!-- End Sign Up Window -->

<!-- Switcher -->

<?php include("page_content/footer.php") ?>
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
<script>
	function myMap() {
		var mapProp= {
			center:new google.maps.LatLng(51.508742,-0.120850),
			zoom:5,
		};
		var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
	}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJjm88GF1sxHWQuSScWVpDmdNP0c-QPSc & callback=myMap"></script>



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