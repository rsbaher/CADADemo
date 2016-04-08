<?php/*
	include_once 'C:\wamp\www\DealershipSystem\includes\db_connect.php';
	include_once 'C:\wamp\www\DealershipSystem\includes\functions.php';
	sec_session_start();
 
	if (login_check($mysqli) == true) {
		$logged = 'in';
	} else {
		$logged = 'out';
	}
	*/
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome to Dealership A!</title>
		<link rel="stylesheet" href="styles/welcome.css" />
	</head>
	<body>
		<h1>Welcome to Dealership A!</h1> <br>
		<h2>Please choose where you would like to go:</h2>
		<!-- 2 buttons side by side -->
		<style>
		#login-button{
			display: inline-block;
			 background-color: white;
			 border: 5px solid #008CBA; /* Blue */
			width:500px;
			height:500px;
			border-radius: 15px;
			font-size:24px;
			
			-webkit-transition-duration: 0.4s; /* Safari */
			transition-duration: 0.4s;
			cursor: pointer;
		}
		#login-button:hover {
			background-color: #008CBA; /* Blue */
			color: white;
		}
		#view-site-button{
			-webkit-appearance: button;
		-moz-appearance: button;
		appearance: button;
			display: inline-block;
			 background-color: white;
			 border: 5px solid #4CAF50; /* Green */
			width:500px;
			height:500px;
			font-size:24px;
			border-radius: 15px;
						
			-webkit-transition-duration: 0.4s; /* Safari */
			transition-duration: 0.4s;
			cursor: pointer;
		}
		#view-site-button:hover {
			background-color: #4CAF50; /* Green */
			color: white;
		}
		#container{
			text-align: center;
		}
		
		</style>
		<div id="container">
			<button type="login-button" id="login-button">Employee Login</button>
			<button type="view-site-button" id="view-site-button" href="homepage.php">View Site</button>
		</div>
	</body>
</html>