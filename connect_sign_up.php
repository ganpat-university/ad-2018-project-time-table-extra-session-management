<?php
$username = filter_input(INPUT_POST, 'username');
$password = filter_input(INPUT_POST, 'password');

if(!empty($username)) {
	if(!empty($password)) {
		$host = "localhost";
		$uname = "";
		$dbusername = "";
		$dbpassword = "";
		$dbname = "g3";
		
		//create connection
		$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
		
		if(mysqli_connect_error()) {
			die('Connect error('.mysqli_connect_errno().')'
			.mysqli_connect_error());
		}
		else {
			$sql = "SELECT username,password from login_page 
			where username = '$dbusername' AND password = '$dbpassword'";
			if($conn->query($sql)) {
				echo "Your Credentials are matched";
			}
			else {
				echo "Error :".$sql ."<br>".$conn->error;
			}
			$conn->close();
		}
	}
	else {
		echo "Password should not be empty";
	}
}
else {
	echo "Username should not be empty";
	die();
}
?>