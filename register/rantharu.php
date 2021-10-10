<?php
$name=$POST['name'];
$email=$POST['email'];
$subject=$POST['subject'];
$ph=$POST['ph'];
$message=$POST['message'];

$conn= new mysqli('localhost','root','');
if($conn->connect_error){
	die('Connection Faild : '.$conn->connect_error);
}
else{
	 $stmt= $conn->prepare("insert into feedback(name,email,subject,ph,message) values(?,?,?,?,?)");
	 $stmt->bind_param("sssis",$name,$email,$subject,$ph,$message);
	 $stmt->execute();
	 echo "Successfully Aded Feedback...";
	 $stmt->close();
	 $conn->close();
	}




?>