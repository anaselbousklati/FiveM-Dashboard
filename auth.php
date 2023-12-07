<?php 
session_start();
include 'db_conn.php';

if (isset($_POST['email']) && isset($_POST['password'])) {
	
	$email = $_POST['email'];
	$password = $_POST['password'];

	if (empty($email)) {
		header("Location: login.php?error=Email is vereist!");
	}else if (empty($password)){
		header("Location: login.php?error=Wachtwoord is vereist!&email=$email");
	}else {
		$stmt = $conn->prepare("SELECT * FROM webusers WHERE email=?");
		$stmt->execute([$email]);

		if ($stmt->rowCount() === 1) {
			$user = $stmt->fetch();

			$user_id = $user['id'];
			$user_email = $user['email'];
			$user_password = $user['password'];
			$user_full_name = $user['full_name'];
			$user_identifier = $user['identifier'];
			$user_subusers = $user['subusers'];

			if ($email === $user_email) {
				if (password_verify($password, $user_password)) {
					$_SESSION['user_id'] = $user_id;
					$_SESSION['user_email'] = $user_email;
					$_SESSION['user_full_name'] = $user_full_name;
					$_SESSION['user_identifier'] = $user_identifier;
					$_SESSION['user_subusers'] = $user_subusers;
					header("Location: index.php");

				}else {
					header("Location: login.php?error=Verkeerde email of wachtwoord&email=$email");
				}
			}else {
				header("Location: login.php?error=Verkeerde email of wachtwoord&email=$email");
			}
		}else {
			header("Location: login.php?error=Verkeerde email of wachtwoord&email=$email");
		}
	}
}
