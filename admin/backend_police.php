<?php
ini_set('error_log', 'ussd-app-error.log');
include("../connection.php");
extract($_POST);

if(isset($_POST['readrecords'])){

	$data =  '<table class="table table-bordered table-striped ">
						<tr class="bg-dark text-white">
							<th>No.</th>
							<th>Place Name</th>
							<th>Police Station Name</th>
							
							<th>Address</th> 
							<th>Contact</th>
							<th>Delete Action</th>
						</tr>'; 

	$displayquery = " SELECT * FROM police_station"; 
	$result = mysqli_query($conn,$displayquery);

	if(mysqli_num_rows($result) > 0){

		$number = 1;
		while ($row = mysqli_fetch_array($result)) {

			
			
			$data .= '<tr>  
				<td>'.$number.'</td>
				<td>'.$row['place_name'].'</td>
				<td>'.$row['police_station_name'].'</td>
				

			

				
				
				<td> '.$row['address'].' </td>
				<td> '.$row['contact_no'].' </td>
				
				<td>
					<button onclick="DeleteUser('.$row['id'].')" class="btn btn-danger">Delete</button>
				</td>
    		</tr>';
    		$number++;

		}
	} 
	 $data .= '</table>';
    	echo $data;

}

//adding records in database
// if(isset($_POST['district']) &&  isset($_POST['view']) && isset($_POST['travel_path']) && isset($_POST['place_name']) && isset($_POST['place_description']) )

if(isset($_POST['place_name'])  )
	{
	 $place_name =  $_POST['place_name'];
	

    $police_station_name =  $_POST['police_station_name'];

    $address =  $_POST['address'];
    $contact_no =  $_POST['contact_no'];
	
      // file_put_contents("a.txt", "hello");


   $query  = "Insert into police_station(place_name,police_station_name,address,contact_no) VALUES ('$place_name','$police_station_name','$address','$contact_no')";
		
		// $query = "Insert int"
		if($result = mysqli_query($conn,$query)){
			exit(mysqli_error());
		}else{
			echo "1 record added";
		}


	}
	// pass id on modal
if(isset($_POST['id']) && isset($_POST['id']) != "")
{
    $user_id = $_POST['id'];
    $query = "SELECT * FROM police_station WHERE id = '$user_id'";
    if (!$result = mysqli_query($conn,$query)) {
        exit(mysqli_error());
    }
    
    $response = array();

    if(mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
       
            $response = $row;
        }
    }
  //  // agar ek bhi value nai milta hai tho data not found no. of rows 0 hai tho
    else
    {
        $response['status'] = 200;
        $response['message'] = "Data not found!";
    }
   //     PHP has some built-in functions to handle JSON.
// Objects in PHP can be converted into JSON by using the PHP function json_encode(): 

    echo json_encode($response);
}
// ye top wala id jo humhe mil raha hai uska hai jaha wo id check karega sahi hai ya nai agar nai tho invalid req boldega...
else
{
    $response['status'] = 200;
    $response['message'] = "Invalid Request!";
}
//////////////// update table//////////////


/////////////Delete user record /////////

if(isset($_POST['deleteid']))
{

	$user_id = $_POST['deleteid']; 

	$deletequery = " delete from police_station where id ='$user_id' ";
	if (!$result = mysqli_query($conn,$deletequery)) {
        exit(mysqli_error());

}

}

?>














