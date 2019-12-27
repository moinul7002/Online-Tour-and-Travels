<?php
 include("../connection.php");
$sql = "SELECT * from place_jayed";
$res = mysqli_query($conn,$sql);
$place = array();
while($row = mysqli_fetch_array($res))
{      if(!in_array($row['place_name'], $place)){
     $place[] = $row['place_name'];
   }
}
$place=array_unique($place);

?>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from www.urbanui.com/melody/template/pages/tables/js-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 Sep 2018 06:08:41 GMT -->
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Travel Stock</title>
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
  <link rel="shortcut icon" href="images/favicon.png" />
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
          <label>  Place Name </label>
          <select class="wide form-control br-1" name="place_name" id="place_name" required>
<option value="">Place Name</option>
<?php 
for($i=0;$i<count($place);$i++){  
     $place_name = $place[$i];
 ?>

<option value="<?php echo $place_name ?>"><?php echo $place_name ?></option>
<?php
}
?>

</select>
        </div>

        


        <div class="form-group">
          <label>  Restaurant Name </label>
          <input type="text" name="Restaurant_name" id="Restaurant_name"  placeholder="Restaurant Name" class="form-control">
        </div>
     
     


          <div class="form-group">
          <label for="file"> Image </label>
          <input type="file" name="pimage" id="file"   class="form-control">
        </div>
 

         <div class="form-group">
          <label> Restaurant Address </label>
          <input type="text" name="Restaurant_address" id="Restaurant_address"  placeholder="Restaurant Address" class="form-control">
        </div>


        <div class="form-group">
          <label> Restaurant Contact </label>
          <input type="text" name="Restaurant_contact" id="Restaurant_contact"  placeholder="Restaurant_contact" class="form-control">
        </div>

        <div class="form-group">
          <label> Min Snacks Price </label>
          <input type="number" name="snacks" id="snacks"  placeholder="Snacks" class="form-control">
        </div>


        <div class="form-group">
          <label> Min Lunch Price </label>
          <input type="number" name="lunch" id="lunch"  placeholder="Lunch" class="form-control">
        </div>

        <div class="form-group">
          <label> Min Dinner Price </label>
          <input type="number" name="dinner" id="dinner"  placeholder="Dinner" class="form-control">
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

    var place_name =  $("#place_name").val();
    var Restaurant_name =  $("#Restaurant_name").val();
   
    var Restaurant_address =  $("#Restaurant_address").val();
    var Restaurant_contact =  $("#Restaurant_contact").val();
        var snacks =  $("#snacks").val();
            var lunch =  $("#lunch").val();
                var dinner =  $("#dinner").val();
    //var pimage = $("#file").prop("files")[0];
    

   
var formData= new FormData();
formData.append("snacks",snacks);
formData.append("lunch",lunch);
formData.append("dinner",dinner);

 formData.append("place_name",place_name);
  formData.append("res_name", Restaurant_name);

    formData.append("res_address", Restaurant_address);
     formData.append("res_contact", Restaurant_contact);
     formData.append('file',$('#file')[0].files[0]);



    $.ajax({
      processData: false,
        contentType: false,
      url:"backend_res.php",
      type:'POST',
      data: formData,
      success:function(data, status){
        alert("Data added successfully");
        readRecords();

      },

    });

  }

//////////////////Display Records
  function readRecords(){
    
    var readrecords = "readrecords";
    $.ajax({
      url:"backend_res.php",
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
    url:"backend_res.php",
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
    $.post("backend_res.php", {
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
    $.post("backend_res.php", {
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
  <script src="js/js-grid-Restaurant.js"></script>
  <script src="js/db.js"></script>
  <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.urbanui.com/melody/template/pages/tables/js-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 Sep 2018 06:08:42 GMT -->
</html>
