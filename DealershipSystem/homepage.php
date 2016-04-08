<?php
	include_once 'C:\wamp\www\DealershipSystem\includes\db_connect.php';
	include_once 'C:\wamp\www\DealershipSystem\includes\functions.php';
	//include_once 'C:\wamp\www\DealershipSystem\homepage.php';
	sec_session_start();
 
	if (login_check($mysqli) == true) {
		$logged = 'in';
	} else {
		$logged = 'out';
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome to Dealership A!</title>
		<link rel="stylesheet" href="styles/welcome.css" />
	</head>
	<body>
		<br>
		<h1>Take a look around!<h1>
	</body>
</html>