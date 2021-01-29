<?php
if (isset($_POST["submit"])) {
	$username = $_POST["email"];
	$password = $_POST["password"];
	
	require_once 'dbconnect.php';
	require_once 'functions.req.php';	
	
	loginUser($conn,$username,$password);
}
else {
	header("location: login.html");
	exit();
}