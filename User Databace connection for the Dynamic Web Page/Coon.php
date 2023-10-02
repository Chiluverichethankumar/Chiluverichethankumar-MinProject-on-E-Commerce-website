<?php
if(isset($_POST['firstName']) ) {

	$con = new mysqli('localhost','root','','miniproject');


    $firstName = $_POST['firstName'];
	$secondName = $_POST['secondName'];
	$gender = $_POST['gender'];
	$phonenumber = $_POST['phonenumber'];
	$email = $_POST['email'];
	$password = $_POST['password'];
    $confirmPassword = $_POST['confirmPassword'];


	$sql = "INSERT INTO `users` (`Id`,`firstName`, `secondName`, `gender`, `phonenumber`, `email`, `password`, `confirmPassword`) VALUES ('0', '$firstName', '$secondName', '$gender', '$phonenumber', '$email', '$password', '$confirmPassword')";
	$rs = mysqli_query($con,$sql);

if($rs)
{
	echo "Contact Records Inserted";
    header("Location:successfully.html");
}
}
else
{
	echo "Are you a genuine visitor?";
	
}

    
?>