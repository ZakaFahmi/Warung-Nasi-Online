<?php
include "../conn.php";
date_default_timezone_set('Asia/Jakarta');

session_start();

$username = $_POST['username'];
$input_password = $_POST['password'];
// $password = sha1($input_password);
$password = $input_password;

$username = mysqli_real_escape_string($koneksi, $username);
$password = mysqli_real_escape_string($koneksi, $password);

if (empty($username) && empty($password)) {
	header('location:../index.php?error=1');
	exit;
} 
if (empty($username)) {
	header('location:../index.php?error=2');
	exit;
}
if (empty($password)) {
	header('location:../index.php?error=3');
	exit;
}

$q = mysqli_query($koneksi, "SELECT * FROM admin WHERE username='$username' AND password='$password'");
$row = mysqli_fetch_array($q);
var_dump($row);

if (mysqli_num_rows($q) == 1) {
    $_SESSION['user_id'] = $row['id'];
	$_SESSION['username'] = $username;
	$_SESSION['fullname'] = $row['fullname'];
	$_SESSION['password'] = $input_password;
	$_SESSION['gambar'] = $row['gambar'];

	header('location:index.php');
	exit;
}

header('location:../index.php?error=4');
?>