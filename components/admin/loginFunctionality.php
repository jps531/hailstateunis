<?php

// Connect to Database
include "data/fbDatabaseConnection.php";

// Define variables and set to empty values
$username = $password = "";
$usernameErr = $passwordErr = "";

// Action on submit
if($_SERVER["REQUEST_METHOD"] == "POST"){

	// Get data from forms
	if(empty($_POST['username']))
		$usernameErr = "<div class='alert alert-danger errorAlert'>Please enter a username.</div>";
				
	else{
		$username = $_POST['username'];
	}
	if(empty($_POST['password']))
		$passwordErr = "<div class='alert alert-danger errorAlert'>Please enter a password.</div>";
				
	else{
		$password = $_POST['password'];
		$safePassword = safety($password);
	}
	
	// Action if forms are not empty
	if(empty($usernameErr) && empty($passwordErr)){

		// Search database for matching user
		$sql = "SELECT username, password FROM admin WHERE username = '$username'";
		$result = $conn->query($sql);

		// Error trigger for invalid SQL query
		if (!$result){
    		trigger_error('Invalid query: ' . $conn->error);
		}

		// If username is in database,
		// Parse through rows
		// Otherise show error
		if ($result->num_rows > 0){

    		// Output data of each row
			while($row = $result->fetch_assoc()){
				$usernameDB = $row['username'];
				$passwordDB = $row['password'];
			}
			
			// If username and password match,
			// Create session and redirect to admin portal
			// Otherwise show error
			if($safePassword === $passwordDB) {
				$_SESSION['userID'] = $usernameDB;
				header("Location: admin-portal.php");
			}
			else{
				$passwordErr = "<div class='alert alert-danger errorAlert'>Invalid password.</div>";
			}
		}
		else{
			$usernameErr = "<div class='alert alert-danger errorAlert'>No account with that username currently exists.</div>";
		}
	}
}

// Function: safety
// Purpose: To salt password for security
// Input(s): $var: string; un-salted password
// Output(s): $token: string: salted password
function safety($var){
	$salt1 = "ja*jrif*&S^alsf";
	$salt2 = "gjlkajherhg7%$&";
	$token = hash('ripemd128', "$salt1$var$salt2");
	return $token;
}

?>