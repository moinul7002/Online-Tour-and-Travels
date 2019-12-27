<?php
@ob_start();
if(session_status()!=PHP_SESSION_ACTIVE) session_start();
ini_set('error_log', 'ussd-app-error.log');
include("../connection.php");
$hotel_name = $_SESSION['hotel_name'];
$place_name = $_SESSION['place_name'];
extract($_POST);

if(isset($_POST['readrecords'])){

	$data =  '<table class="table table-bordered table-striped ">
						<tr class="bg-dark text-white">
							<th>No.</th>
							<th>Place Name</th>
							<th>Hotel Name</th>
							
						    <th>Image</th>
							<th>Price</th> 
							<th>Address</th> 
							<th>Contact</th>
							<th>Delete Action</th>
						</tr>'; 

	$displayquery = " SELECT * FROM hotel_jayed where hotel_name = '$hotel_name'"; 
	$result = mysqli_query($conn,$displayquery);

	if(mysqli_num_rows($result) > 0){

		$number = 1;
		while ($row = mysqli_fetch_array($result)) {

			$image = "../".$row['hotel_image'];
			
			$data .= '<tr>  
				<td>'.$number.'</td>
				<td>'.$row['place_name'].'</td>
				<td>'.$row['hotel_name'].'</td>
				

				<td><img src ='.$image.'></td>

				<td>'.$row['price'].'</td>
				
				<td> '.$row['hotel_address'].' </td>
				<td> '.$row['hotel_contact'].' </td>
				
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

if(isset($_POST['price'])  )
	{
	 
    $price =  $_POST['price'];
    $hotel_address =  $_POST['hotel_address'];
    $hotel_contact =  $_POST['hotel_contact'];
		 $name    = $_FILES['file']['name'];

		//$fnm= $_FILES["image"]["name"];

		// $file = $_FILES["pimage"]["tmp_name"];
	$dst="image/".$name;
	// $dst1="image/".$fnm;
	 move_uploaded_file($_FILES["image"]["tmp_name"],$dst);
      // file_put_contents("a.txt", "hello");


   $query  = "Insert into hotel_jayed (place_name,hotel_name,price,hotel_address,hotel_contact,hotel_image) VALUES ('$place_name','$hotel_name','$price','$hotel_address','$hotel_contact','$dst')";
		
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
    $query = "SELECT * FROM hotel_jayed WHERE id = '$user_id'";
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

	$deletequery = " delete from hotel_jayed where id ='$user_id' ";
	if (!$result = mysqli_query($conn,$deletequery)) {
        exit(mysqli_error());

}

}

?>














