<?php



$con = mysqli_connect('localhost','root','','rantharu');

$name=$_POST["name"];

$email=$_POST["email"];
$subject=$_POST["subject"];
$ph=$_POST["ph"];
$massge=$_POST["message"];


if(!$con){
	
	echo"Database Not connected..!";

}else{

	$sql ="INSERT INTO feedback (name,email,subject,ph,message) VALUES('$name',$email,'$subject','$ph','$message')";

	if(mysqli_query($con,$sql))
	{
		echo"<script>alert('data inserted..!');</script>";
		header("Location:/register/registration.html");
	}
	else
	{
	  echo"Error".mysqli_error($con);
	}

}
	

?>