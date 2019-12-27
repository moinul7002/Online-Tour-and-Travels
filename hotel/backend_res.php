<?php
ini_set('error_log', 'ussd-app-error.log');
include("../connection.php");
extract($_POST);

if(isset($_POST['readrecords'])){

	$data =  '<table class="table table-bordered table-striped ">
						<tr class="bg-dark text-white">
							<th>No.</th>
							<th>Place Name</th>
							<th>Restaurant Name</th>
							
						    <th>Image</th>
						    <th>Snacks</th>
						    <th>Lunch</th>
						    <th>Dinner</th>
							<th>Address</th> 
							<th>Contact</th>
							<th>Delete Action</th>
						</tr>'; 

	$displayquery = " SELECT * FROM res"; 
	$result = mysqli_query($conn,$displayquery);

	if(mysqli_num_rows($result) > 0){

		$number = 1;
		while ($row = mysqli_fetch_array($result)) {

			$image = "../".$row['res_image'];
			
			$data .= '<tr>  
				<td>'.$number.'</td>
				<td>'.$row['place_name'].'</td>
				<td>'.$row['res_name'].'</td>
				

				<td><img src ='.$image.'></td>

				<td>'.$row['Snacks'].'</td>
				<td>'.$row['Lunch'].'</td>
				<td>'.$row['Dinner'].'</td>
				
				<td> '.$row['res_address'].' </td>
				<td> '.$row['res_contact'].' </td>
				
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
	 $snacks = $_POST['snacks'];
	 $lunch = $_POST['lunch'];
	 $dinner = $_POST['dinner'];

    $Restaurant_name =  $_POST['res_name'];
    $price =  $_POST['price'];
    $Restaurant_address =  $_POST['res_address'];
    $Restaurant_contact =  $_POST['res_contact'];
		 $name    = $_FILES['file']['name'];

		//$fnm= $_FILES["image"]["name"];

		// $file = $_FILES["pimage"]["tmp_name"];
	$dst="image/".$name;
	// $dst1="image/".$fnm;
	 move_uploaded_file($_FILES["image"]["tmp_name"],$dst);
      // file_put_contents("a.txt", "hello");


   $query  = "Insert into res(place_name,res_name,Snacks,Lunch,Dinner,res_address,res_contact,res_image) VALUES ('$place_name','$Restaurant_name','$snacks','$lunch','$dinner','$Restaurant_address','$Restaurant_contact','$dst')";
		
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
    $query = "SELECT * FROM res WHERE id = '$user_id'";
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

	$deletequery = " delete from res where id ='$user_id' ";
	if (!$result = mysqli_query($conn,$deletequery)) {
        exit(mysqli_error());

}

}

?>














