<?php

ini_set('error_log', 'ussd-app-error.log');
?>

<!DOCTYPE html>
<html lang="en">


<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Tourism Helper</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/font-awesome/css/all.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="http://www.urbanui.com/" />
</head>
<body>
  <?php include("page_content/header_sidebar.php") ?>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            
            <nav aria-label="breadcrumb">
              
            </nav>
          </div>
          <div class="row grid-margin">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                 
<div class="container">
  
  
  <div class="d-flex flex-row justify-content-end ">
    <button type="button" class="btn btn-warning text-white" data-toggle="modal" data-target="#myModal">
     Click To Insert
    </button>
  </div>

  <div >
    <h2 style="color: #062f4f; font-family: 'Cormorant Unicase', serif;" class="font-weight-bold mb-4"> All Records </h2>
    <div id="records_content">  </div>
  </div>
  

</div>

<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add Data</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       
        <div class="form-group">
          <label>  District </label>
          <select class="wide form-control br-1" name="district" id="district" required>
<option value="">District</option>

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

        <div class="form-group">
          <label>  Place Category </label>
         <select class="wide form-control br-1" name="view" id ="view" required>
<option value="" "">View</option>

<option value="Sea">Sea</option>
<option value="Waterfall">Waterfall</option>
<option value="Hill">Hill</option>
<option value="Historical">Historical</option>
<option value="Lake">Lake</option>
<option value="Nature">Nature</option>
<option value="Museum">Museum</option>
<option value="Park">Park</option>

<option value="river">River</option>
 <option value="mosque">Mosque</option>
</select>
        </div>


        <div class="form-group">
          <label>  Place Name </label>
          <input type="text" name="place_name" id="place_name"  placeholder="Place Name" class="form-control">
        </div>
     
      <div class="form-group">
          <label>  Travel Path </label>
          <input type="text" name="travel_path" id="travel_path"  placeholder="Travel Path" class="form-control">
        </div>

          <div class="form-group">
          <label for="file"> Image </label>
          <input type="file" name="pimage" id="file"   class="form-control">
        </div>
 

         <div class="form-group">
          <label> Place Description </label>
          <input type="text" name="place_description" id="place_description"  placeholder="Place Description" class="form-control">
        </div>



        <!-- <div class="form-group">
          <label> Last Name </label>
          <input type="text" name="lastname" id="lastname" placeholder="Last Name" class="form-control">
        </div> -->

        
     


      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="addRecord()">Save</button>

         <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>



    </div>
  </div>
</div>


<!-- //////////////// after update ////////////////// -->




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<script>
  
$(document).ready(function () {
    readRecords(); 
  });

  function addRecord(){

    var district =  $("#district").val();
    var view =  $("#view").val();
    var place_name =  $("#place_name").val();
    var travel_path =  $("#travel_path").val();
    var place_description =  $("#place_description").val();
    //var pimage = $("#file").prop("files")[0];
    

   
var formData= new FormData();
  formData.append("image", file);
 formData.append("district",district);
  formData.append("view", view);
   formData.append("place_name", place_name);
    formData.append("travel_path", travel_path);
     formData.append("place_description", place_description);
     formData.append('file',$('#file')[0].files[0]);



    $.ajax({
      processData: false,
        contentType: false,
      url:"backend.php",
      type:'POST',
      data: formData,
      success:function(data, status){
        readRecords();
      },

    });

  }

//////////////////Display Records
  function readRecords(){
    
    var readrecords = "readrecords";
    $.ajax({
      url:"backend.php",
      type:"POST",
      data:{readrecords:readrecords},
      success:function(data,status){
        $('#records_content').html(data);
      },

    });
  }


/////////////delete userdetails ////////////
function DeleteUser(deleteid){

  var conf = confirm("are u sure");
  if(conf == true) {
  $.ajax({
    url:"backend.php",
    type:'POST',
    data: {  deleteid : deleteid},

    success:function(data, status){
      readRecords();
    }
  });
  }
}



function GetUserDetails(id){
    $("#hidden_user_id").val(id);
    $.post("backend.php", {
            id: id
        },
        function (data, status) {
            alert(data);
            //JSON.parse() parses a string, written in JSON format, and returns a JavaScript object.
            var user = JSON.parse(data);
            alert(user);

     $("#updated_place_name").val() ;
// $("#updated_travel_path").val();
//    $("#updated_place_description").val();
        }
    );
    $("#update_user_modal").modal("show");
}




function UpdateUserDetails() {
   var district =  $("#updated_district").val();
    var view =  $("#updated_view").val();
    var place_name =  $("#updated_place_name").val();
    var travel_path =  $("#updated_travel_path").val();
    var place_description =  $("#updated_place_description").val();
    $.post("backend.php", {
            hidden_user_id: hidden_user_id,
           district:district,
        view:view,
        place_name:place_name,
        travel_path:travel_path,
        place_description:place_description,
        },
        function (data, status) {
            $("#update_user_modal").modal("hide");
            readRecords();
        }
    );
}

</script>
                  
                </div>
              </div>
            </div>
          </div>
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
       
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/misc.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/js-grid.js"></script>
  <script src="js/db.js"></script>
  <!-- End custom js for this page-->
</body>


</html>
