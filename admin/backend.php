<?php
ini_set('error_log', 'ussd-app-error.log');
include("../connection.php");
extract($_POST);

if(isset($_POST['readrecords'])){

	$data =  '<table class="table table-bordered table-striped ">
						<tr class="bg-dark text-white">
							<th>No.</th>
							<th>District</th>
							<th>Place Category</th>
							<th>Place Name</th>
						    <th>Image</th>
							<th>Travel Path </th> 
							<th>Description</th> 
							
							<th>Delete Action</th>
						</tr>'; 

	$displayquery = " SELECT * FROM place"; 
	$result = mysqli_query($conn,$displayquery);

	if(mysqli_num_rows($result) > 0){

		$number = 1;
		while ($row = mysqli_fetch_array($result)) {

			$image = "../".$row['place_image'];
			
			$data .= '<tr>  
				<td>'.$number.'</td>
				<td>'.$row['district'].'</td>
				<td>'.$row['place_category'].'</td>
				<td>'.$row['place_name'].'</td>

				<td><img src ='.$image.'></td>
				
				<td> '.$row['travel_path'].' </td>
				<td> '.$row['place_des'].' </td>
				
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

if(isset($_POST['district'])  )
	{
		$district = $_POST['district'];
		$view = $_POST['view'];
		$travel_path = $_POST['travel_path'];
		$place_name = $_POST['place_name'];
		$place_description = $_POST['place_description'];
		 $name    = $_FILES['file']['name'];

		//$fnm= $_FILES["image"]["name"];

		// $file = $_FILES["pimage"]["tmp_name"];
	$dst="image/".$name;
	// $dst1="image/".$fnm;
	 move_uploaded_file($_FILES["image"]["tmp_name"],$dst);

		//file_put_contents("a.txt", $name);

   $query  = "Insert into place_jayed (district,place_category,place_name,travel_path,place_des,place_image) VALUES ('$district','$view','$place_name','$travel_path','$place_description','$dst')";
		
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
    $query = "SELECT * FROM place_jayed WHERE id = '$user_id'";
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

if(isset($_POST['hidden_user_id']))
{
    // get values
   $district = $_POST['district'];
		$view = $_POST['view'];
		$travel_path = $_POST['travel_path'];
		$place_name = $_POST['place_name'];
		$place_description = $_POST['place_description'];
		file_put_contents("a.txt", $district." " .$view." ". $travel_path." ". $place_name." " .$place_description);

    // $query = "UPDATE user SET firstname = '$firstname', lastname = '$lastname', email = '$email', mobile = '$mobile'  WHERE id = '$hidden_user_id'";
    // if (!$result = mysqli_query($conn,$query)) {
    //     exit(mysqli_error());
    // }
}
/////////////Delete user record /////////

if(isset($_POST['deleteid']))
{

	$user_id = $_POST['deleteid']; 

	$deletequery = " delete from place where id ='$user_id' ";
	if (!$result = mysqli_query($conn,$deletequery)) {
        exit(mysqli_error());

}

}

?>














