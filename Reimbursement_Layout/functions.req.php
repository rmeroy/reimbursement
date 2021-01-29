<?php
include "dbconnect.php";
function userExists($conn, $username) {
		$sql = "SELECT * FROM users WHERE usersEmail = ?;";
		$stmt = mysqli_stmt_init($conn);
		
		if(!mysqli_stmt_prepare($stmt,$sql)) {
			header("location: login.html?error=stmtfailed");
			exit();
		}
		
		mysqli_stmt_bind_param($stmt,"s", $username);
		mysqli_stmt_execute($stmt);
		
		$resultData = mysqli_stmt_get_result($stmt);
		
		if($row = mysqli_fetch_assoc($resultData)) {
			return $row;
		}
		else {
			$result = false;
			return $result;
		}
		
		mysqli_stmt_close($stmt);
	}
	
function createUser($conn,$username,$email,$password) {
		$sql = "INSERT INTO users (usersName, usersEmail, usersPass) VALUES (?,?,?);";
		$stmt = mysqli_stmt_init($conn);
		
		if(!mysqli_stmt_prepare($stmt,$sql)) {
			header("location: register.html?error=stmtfailed");
			exit();
		}
		
		$hashedPwd = password_hash($password, PASSWORD_DEFAULT);
		
		mysqli_stmt_bind_param($stmt,"sss", $username, $email, $hashedPwd);
		mysqli_stmt_execute($stmt);
		mysqli_stmt_close($stmt);	
		header("location: login.html?error=none");
		exit();
	}
	
function loginUser ($conn, $username, $password) {
	$userExists = userExists($conn,$username);
	
	if($userExists === false){
		header("location: login.html?error=wronglogin");
		exit();
	}
	
	$pwdHashed = $userExists["usersPass"];
	// $typeHashed = $userExists["userType"];
	$checkPwd = password_verify($password, $pwdHashed);
	if ($checkPwd === false){
		header("location: login.html?error=wrongpassword");
		exit();
	}else if($checkPwd === true){
		
		session_start();
		$_SESSION["userid"] = $userExists["usersId"];
		$_SESSION["username"] = $userExists["usersEmail"];
		$_SESSION["usertype"] = $userExists["userType"];
		header("Location: adminpanel.html");
		exit();
		
		// ONLY ADMIN LOGIN FOR NOW
		
		/* if ($typeHashed == 0){
			header("Location:adminpanel.html");
			exit();
		}else if ($typeHashed == 1){
			header("Location:userpanel.html");
			exit();
		} */
		
	}
	
}
