<?php
	if (isset($_POST["submit"])) {
	$purpose = $_POST["purpose"];
	$office = $_POST["office"];
	$activityDate = $_POST["activitydate"];
	$expense = $_POST["expense"];
	$amount = $_POST["amount"];
	$remarks = $_POST["remarks"];
	
	require_once 'dbconnect.php';
	require_once 'functions.req.php';	
	
	
	
	if(emptyInputTicket($purpose,$office,$activityDate, $expense, $amount, $remarks) !== false){
		header("location: createTicket.html?error=emptyinput");
		exit();
	}
	
	createTicket($conn,$purpose,$office,$activityDate, $expense, $amount, $remarks);
}
else {
	header("location: userpanel.html");
	exit();
}
?>