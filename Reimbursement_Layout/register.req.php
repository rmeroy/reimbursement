<?php
	if (isset($_POST["submit"])) {
	$username = $_POST["name"];
	$email = $_POST["email"];
	$password = $_POST["password"];
	
	require_once 'dbconnect.php';
	require_once 'functions.req.php';	
	
	createUser($conn,$username,$email,$password);
}
else {
	header("location: register.html");
	exit();
}
?>