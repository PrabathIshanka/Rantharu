<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$name=$POST['name'];
$email=$POST['email'];
$subject=$POST['subject'];
$ph=$POST['ph'];
$message=$POST['message'];

$conn= new mysqli('localhost','rantharu','root','');
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
</body>
</html>
