

<?php
include("connection.php");

include("page_content/header.php");
error_reporting(E_ALL ^ E_WARNING); 
$place_id=$_REQUEST['id'];

$sql="Select * from place where id=$place_id";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_array($res);

$place_name=$row['place_name'];
$travel_path=$row['travel_path'];



$sql3="Select * from place_review where place_id=$place_id";
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


// if($row3==NULL)
// {
// 	$rating=0;
// }
$five=($five/$num_of_review)*100;
$four=($four/$num_of_review)*100;
$three=($three/$num_of_review)*100;
$two=($two/$num_of_review)*100;
$one=($one/$num_of_review)*100;

$sql_hospital="Select * from hospital where place_name='$place_name'";
$res_hospital=mysqli_query($conn,$sql_hospital);


$sql_police="Select * from police_station where place_name='$place_name'";
$res_police=mysqli_query($conn,$sql_police);


$sql_gallery="Select * from place_gallery where place_name='$place_name'";
$res_gallery=mysqli_query($conn,$sql_gallery);






?>
		<!-- ======================= End Navigation ===================== -->
		
		<!-- ======================= Start Banner ===================== -->

			
		<section class="page-title-banner" style="background-image:url(<?php echo $row['place_image'] ?>);">
			<div class="container">
				<div class="row">
					<div class="tr-list-detail">
						<div class="tr-list-detail">
							
						</div>
						<div class="tr-list-info">
							<h4><?php echo $place_name ?></h4>
							
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
								<li role="presentation" class="active"><a href="place.php?id=<?php echo $place_id?>" ><i class="ti-user"></i>Overview</a></li>
								
								<li role="presentation"><a href="review.php?id=<?php echo $place_id?>" >Review</a></li>

								<li ><a href="res.php?id=<?php echo $place_id ?>" aria-controls="messages">Restaurant</a></li>

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
		<!-- ======================= End Detail Header ===================== -->
		
		<!-- ======================= Start Detail ===================== -->
	
		<section class="tr-single-detail gray-bg">
			<div class="container">
				<div class="row">
				
					<div class="col-md-12 col-sm-12">
						<div class="tab-content tabs">
							
							<div role="tabpanel" class="tab-pane fade in active" id="Overview">
								<div class="col-md-8 col-sm-12">
								<!-- Overview -->
								<div class="row">
									<div class="tr-single-box">
										<div class="tr-single-header">
											<h4><i class="fa fa-star-o"></i>Overview</h4>
										</div>
										<div class="tr-single-body">
											<div class="row">
											
												<div class="col-md-6 col-sm-6">
													<div class="list-thumb-box">
														<img src="<?php echo $row['place_image']?>" width="100%" height="100%"   alt="" />
														
														
													</div>
												</div>
												
												<div class="col-md-6 col-sm-6">
													<div class="list-overview-detail">
														<h5><?php echo $row['place_name'] ?></h5>
														<ul class="extra-service">
															<li>
																<div class="icon-box-icon-block">
																	<a href="#">
																		<div class="icon-box-round">
																			<i class=" ti-location-pin"></i>
																		</div>
																		<div class="icon-box-text">
																			
																			<?php echo $row['place_name'].','.$row['place_category'] ?>
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
																		<?php echo $num_of_review ?> reviews
																		</div>
																	</a>
																</div>
															</li>
															
														</ul>
													</div>
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
											<h4><i class="ti-files"></i>Description</h4>
										</div>
										<div class="tr-single-body">
											<p>
												<?php echo $row['place_des'] ?>
											</p>
										</div>
									</div>
								</div>
								
								<!-- Amenities -->
								
								
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
							
							<!-- ============ Features =================== -->
							<div role="tabpanel" class="tab-pane fade in" id="Features">
								
								<!-- About Features -->
								<div class="row">
									<div class="tr-single-box">
										<div class="tr-single-header">
											<h4><i class="ti-files"></i>About Features</h4>
										</div>
										<div class="tr-single-body">
											<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
										</div>
									</div>
								</div>
								
								<!-- Extra features -->
								<div class="row">
									<div class="tr-single-box">
										<div class="tr-single-header">
											<h4><i class="ti-thumb-up"></i>Extra Features</h4>
										</div>
										<div class="tr-single-body">
											
											<ul class="simple-features-list">
												<li>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</li>
												<li>Minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</li>
												<li>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain.</li>
												<li>Pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes.</li>
												<li>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</li>
												<li>Minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</li>
												<li>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain.</li>
												<li>Pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes.</li>
											</ul>
											
										</div>
									</div>
								</div>
								
							</div>



                               <div role="tabpanel" class="tab-pane fade in" id="Restaurant">
								
								<!-- Review -->
								<div class="row">
									<div class="tr-single-box">
										<div class="tr-single-header">
											<h4><i class="ti-write"></i>All Review</h4>
										</div>
										<div class="tr-single-body">
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													<img src="assets/img/user-1.jpg" class="img-responsive img-circle" alt="" />
												</div>
												
												<div class="review-box-content">
													<div class="reviewer-rate">
														<p><i class="fa fa-star cl-warning"></i>4.7/<span>5</span></p>
													</div>
													<div class="review-user-info">
														<h4>Daniel Dicoss</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													<div class="review-lc text-right">
														<a href="#"><i class="ti-heart"></i>87</a>
														<a href="#"><i class="ti-comment"></i>52</a>
													</div>
												</div>
												
											</div>
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													<img src="assets/img/user-2.jpg" class="img-responsive img-circle" alt="" />
												</div>
												
												<div class="review-box-content">
													<div class="reviewer-rate">
														<p><i class="fa fa-star cl-warning"></i>4.4/<span>5</span></p>
													</div>
													<div class="review-user-info">
														<h4>Archita Singh</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													<div class="review-lc text-right">
														<a href="#"><i class="ti-heart"></i>65</a>
														<a href="#"><i class="ti-comment"></i>78</a>
													</div>
												</div>
												
											</div>
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													<img src="assets/img/user-3.jpg" class="img-responsive img-circle" alt="" />
												</div>
												
												<div class="review-box-content">
													<div class="reviewer-rate">
														<p><i class="fa fa-star cl-warning"></i>5.0/<span>5</span></p>
													</div>
													<div class="review-user-info">
														<h4>Devesh Patri</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													<div class="review-lc text-right">
														<a href="#"><i class="ti-heart"></i>110</a>
														<a href="#"><i class="ti-comment"></i>47</a>
													</div>
												</div>
												
											</div>
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													<img src="assets/img/user-4.jpg" class="img-responsive img-circle" alt="" />
												</div>
												
												<div class="review-box-content">
													<div class="reviewer-rate">
														<p><i class="fa fa-star cl-warning"></i>4.9/<span>5</span></p>
													</div>
													<div class="review-user-info">
														<h4>Ruchi Sethi</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													<div class="review-lc text-right">
														<a href="#"><i class="ti-heart"></i>120</a>
														<a href="#"><i class="ti-comment"></i>36</a>
													</div>
												</div>
												
											</div>
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													<img src="assets/img/user-5.jpg" class="img-responsive img-circle" alt="" />
												</div>
												
												<div class="review-box-content">
													<div class="reviewer-rate">
														<p><i class="fa fa-star cl-warning"></i>4.8/<span>5</span></p>
													</div>
													<div class="review-user-info">
														<h4>Duke Divalkis</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													<div class="review-lc text-right">
														<a href="#"><i class="ti-heart"></i>80</a>
														<a href="#"><i class="ti-comment"></i>70</a>
													</div>
												</div>
												
											</div>
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													<img src="assets/img/user-6.jpg" class="img-responsive img-circle" alt="" />
												</div>
												
												<div class="review-box-content">
													<div class="reviewer-rate">
														<p><i class="fa fa-star cl-warning"></i>4.7/<span>5</span></p>
													</div>
													<div class="review-user-info">
														<h4>Shilka Rai</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													<div class="review-lc text-right">
														<a href="#"><i class="ti-heart"></i>120</a>
														<a href="#"><i class="ti-comment"></i>140</a>
													</div>
												</div>
												
											</div>
											
										</div>
									</div>
								
								</div>
								
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




							
							<!-- ============ Review =================== -->
							<div role="tabpanel" class="tab-pane fade in" id="Review">
								
								<!-- Review -->
								<div class="row">
									<div class="tr-single-box">
										<div class="tr-single-header">
											<h4><i class="ti-write"></i>All Review <span style="float:right;"><i class="ti-write"></i> <a style="color:blue;" href="#write_review" aria-controls="messages" role="tab" data-toggle="tab" >Write Review</a></span></h4>

										</div>
										<div class="tr-single-body">
											
											<!-- Single Review -->
											<div class="review-box">
												<div class="review-thumb">
													
												</div>
												
												<div class="review-box-content">
													
													<div class="review-user-info">
														<h4>Daniel Dicoss</h4>
														<p>Et Harum Quidem Rerum Facilis Est Et Expedita Distinctio. Nam Libero Tempore, Cum Soluta Nobis Est Eligendi Optio Cumque Nihil Impedit Quo Minus Id Quod Maxime Placeat Facere Possimus</p>
													</div>
													
												</div>
												
											</div>
										
											<!-- Single Review -->
											
											
										</div>
									</div>
								
								</div>
								
							</div>


                          
                          	<div role="tab" class="tab-pane fade in" id="write_review">
								
								<!-- Review -->
								<div class="row">
									<div class="tr-single-box">
										
										<div class="tr-single-body">
											
											<!-- Single Review -->
											<div class="review-box">
												<form method="post" action="">

                                <div id="result1"> </div>
								<div class="form-group">
									<label>Rating</label>
									<input type="number" name="rating" class="form-control form-control-sm" required>
								</div>

								<div class="form-group">
									<label for="exampleFormControlTextarea2">Write Your Review</label>
                               <textarea class="form-control rounded-0" name="review" id="exampleFormControlTextarea2" rows="3" required ></textarea>
								</div>

								
								<div class="form-group text-center">
									<button type="submit" name="review_submit"  aria-controls="messages" role="tab" data-toggle="tab" class="btn theme-btn full-width btn-m">Done </button>
								</div>

							</form>
											</div>
										
											<!-- Single Review -->
											
											
										</div>
									</div>
								
								</div>
								
							</div>






							
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
		<?php
          include("page_content/footer.php");
		?>
		
		<!-- Sign Up Window Code -->
	  	<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
		<?php include("page_content/login_window.php"); ?>
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