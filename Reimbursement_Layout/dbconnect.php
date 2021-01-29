<?php
	// $serverName = "localhost";
	// $dbUsername = "root";
	// $dbPassword = "";
	// $dbName = "med_reimbursement";
	// $conn = mysqli_connect($serverName, $dbUsername, $dbPassword, $dbName);
	$conn = mysqli_connect("localhost","root","","med_reimbursement");

if (!$conn) {
	die("Connection Failed: " . mysqli_connect_error());
}