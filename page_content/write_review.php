<?php
 include("connection.php");

    //echo $email.$password;

//  file_put_contents('a.txt',$email.$password);
 
  if(isset($_POST['review_submit']))
  {

  	$rating=$_POST['rating'];
  	$review=$_POST['review'];

  	$sql="INSERT INTO place_review(place_id,user_id,review,rating) VALUES ($place_id,$user_id,'$review',$rating) "
  }




?>


<div class="modal-dialog">
	<div class="modal-content" id="myModalLabel1">
		<div class="modal-body">
			<div class="text-center"><img src="assets/img/logo.png" class="img-responsive" alt=""></div>

			<!-- Nav tabs -->
			
					<!-- Nav tabs -->

					<!-- Tab panels -->
					<div class="tab-content">
						
						<!-- Employer Panel 1-->
						<div class="tab-pane fade in show active" id="employer" role="tabpanel">
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
									<button type="submit" name="review_submit" class="btn theme-btn full-width btn-m">Done </button>
								</div>

							</form>





						</div>
						<!--/.Panel 1-->

						<!-- Candidate Panel 2-->
					
						<!--/.Panel 2-->

					</div>
					<!-- Tab panels -->
				</div>
			</div>

		</div>

