<?php



$con = mysqli_connect('localhost','root','','rantharu');

$fname=$_GET["fname"];
$cid=$_GET["cid"];
$addr=$_GET["addr"];
$email=$_GET["email"];
$tp=$_GET["tp"];
$type=$_GET["type"];
$service=$_GET["service"];
$date=$_GET["date"];

if(!$con){
	
	echo"Database Not connected..!";

}else{

	$sql ="INSERT INTO registation(fname,cid,addr,email,tp,type,service,date) VALUES('$fname','$cid',$addr,$email,$tp,$type,$service,$date)";

	if(mysqli_query($con,$sql))
	{
		echo"<script>alert('data inserted..!');</script>";
		header("Location:index.html");
	}
	else
	{
	  echo"Error".mysqli_error($con);
	}

}
	

?>