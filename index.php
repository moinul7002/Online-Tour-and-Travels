<?php

include("connection.php");

include("page_content/header.php");
error_reporting(E_ALL ^ E_WARNING);
$sql="Select * from place where id<=12";
$res=mysqli_query($conn,$sql);




?>
<!-- ======================= End Navigation ===================== -->

<!-- ======================= Start Banner ===================== -->
     <div class="container-fluidd"> 
	<div class="row">
		<div class='col-md-12'>
			<div class="cover" >
				<img class="pic1" src="image/1.jpg" alt="Snow" style="opacity:6;" >
				
				<img class="pic1" src="image/2.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/3.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/4.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/5.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/6.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/7.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/8.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/9.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/10.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/coxs11.jpg" alt="Snow" style="opacity:6;" >
				<img class="pic1" src="image/coxs12.jpg" alt="Snow" style="opacity:6;" >
      
      

         <script type="text/javascript" src="assets/js/slider.js"></script>

        
				
			<div class="centered text-center cl-white">
				<h2>Beautiful Bangladesh</h2>
				<p><b>Expolore The Nature</b></p>


			<form action="main_page.php" method="post">
				<fieldset class="home-form-1">

					<div class="col-md-3 col-sm-3 padd-0">

					</div>



					<div class="col-md-2 col-sm-2 padd-0">
						<div class="sl-box">
							<select class="wide form-control br-1" name="district" required>
<option value="">District</option>
<option value="Any">Any</option>
<option value="Chittagong">Chittagong</option>
<option value="Sylhet">Sylhet</option>
<option value="Khulna">Khulna</option>
<option value="Dhaka">Dhaka</option>
<option value="Comilla">Comilla</option>
<option value="Rangpur">Rangpur</option>
<option value="Dinajpur">Dinajpur</option>
<option value="Rajshahi">Rajshahi</option>
<option value="Bagura">Bagura</option>

</select>
						</div>
					</div>

					<div class="col-md-2 col-sm-2 padd-0">
						<div class="sl-box">
							<select class="wide form-control br-1" name="view" required>
<option value="" "">View</option>
<option value="Any">Any</option>
<option value="Sea">Sea</option>
<option value="Waterfall">Waterfall</option>
<option value="Hill">Hill</option>
<option value="Historical">Historical</option>
<option value="Lake">Lake</option>
<option value="Nature">Nature</option>
<option value="Museum">Museum</option>
<option value="Park">Park</option>

<option value="river">River</option <option value="mosque">Mosque</option>
</select>
						</div>
					</div>


					<div class="col-md-2 col-sm-2 padd-0">
						<button type="submit" name="find_place"class="btn theme-btn cl-white seub-btn">FIND</button>
					</div>

				</fieldset>
			</form>


              
				<p><b>or</b></p>
			


               <form action="main_page2.php" method="post">
				<fieldset class="home-form-1">

					<div class="col-md-3 col-sm-3 padd-0">

					</div>


 
					<div class="col-md-2 col-sm-2 padd-0">
						<div class="sl-box">
							<input type="text" name="budget" class="form-control br-1" placeholder="Enter Total Budget" required>
						</div>
					</div>

					<div class="col-md-2 col-sm-2 padd-0">
						<div class="sl-box">
							<select style= "height:100px" class="form-control br-1" name="district" required>
								<option value="">From</option>
								
								<option value="Chittagong">Chittagong</option>
								<option value="Sylhet">Sylhet</option>
								<option value="Khulna">Khulna</option>
								<option value="Dhaka">Dhaka</option>
							</select>
						</div>
					</div>


					

					<div class="col-md-2 col-sm-2 padd-0">
						<input type="submit" name="budget_post" value="find" placeholder="Enter Budget" class="btn theme-btn cl-white seub-btn" required>
					</div>

				</fieldset>
			</form>

			</div>



      

			
			</div>
		</div>
   </div>
 </div>
	
<!-- ======================= End Banner ===================== -->
<div class="clearfix"></div>




<!-- ====================== Popular Tour ================= -->
<section class="gray-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="heading">

					<h1>Popular Place Of The Month</h1>
				</div>
			</div>
		</div>



		<div class="row">

			<!-- Single Destination -->

			<?php

			while($row=mysqli_fetch_array($res))
			{

				$place_id=$row['id'];

				$sql3="Select * from place_review where place_id=$place_id";
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
				<div class="col-md-4 col-sm-6">
					<article class="destination-box style-1">

						<div class="destination-box-image">
							<figure>
								<a href="place.php?id=<?php echo $row['id']  ?>">
									<img src="<?php echo $row['place_image']  ?>" class="img-responsive listing-box-img" alt="" />
									<div class="list-overlay"></div>
								</a>

								<h4 class="destination-place">
									<a href="#"><?php echo $row['district'] ?></a>
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
								<h4 class="entry-location">
									<a href="place.php?id=<?php echo $row['id']  ?>"><?php echo $row['place_category'].','.$row['place_name'] ?> </a>
								</h4>
								<div class="price-box">
									<div class="destination-price fl-right">
										<a href="place.php?id=<?php echo $row['id']  ?>"><i class="theme-cl ti-arrow-right"></i></a>
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

		</div>
	</div>
	</section>

	<div class="clearfix"></div>



	




	<!-- ================= footer start ========================= -->
	<?php  
	include("page_content/footer.php");

	?>

	<!-- Sign Up Window Code -->
	<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
		<?php include("page_content/login_window.php"); ?>
	</div>   
	<!-- End Sign Up Window -->


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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Dashboard Js -->
	<script src="assets/plugins/js/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/js/jquery.metisMenu.js"></script>
	<script src="assets/plugins/js/jquery.easing.min.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom.js"></script>
	<script type="text/javascript" src="assets/js/sweetalert.min.js"></script>

	<script>
		$(function() {

			$('input[name="book-date"]').daterangepicker({
				autoUpdateInput: false,
				locale: {
					cancelLabel: 'Clear'
				}
			});

			$('input[name="book-date"]').on('apply.daterangepicker', function(ev, picker) {
				$(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
			});

			$('input[name="book-date"]').on('cancel.daterangepicker', function(ev, picker) {
				$(this).val('');
			});

		});
	</script>

	<script src="assets/js/jQuery.style.switcher.js"></script>
	<script>
		function openRightMenu() {
			document.getElementById("rightMenu").style.display = "block";
		}
		function closeRightMenu() {
			document.getElementById("rightMenu").style.display = "none";
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#styleOptions').styleSwitcher();
		});
	</script>
	
</body>

</html>