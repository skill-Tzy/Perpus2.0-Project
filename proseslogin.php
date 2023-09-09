<?php

include('conn.php');

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysql_real_escape_string($_POST['username']);
    $password = mysql_real_escape_string($_POST['password']);

    $query = "SELECT * FROM admin WHERE username = '$username' AND password = '$password'";
    $queryDB = mysql_query($query);
    $check = mysql_num_rows($queryDB);
    $row = mysql_fetch_array ($queryDB);

    if ($check > 0) {
        // ambil data users
        $getData = mysql_fetch_array($queryDB);
        // set session 
        $_SESSION['username'] = $getData;
        $_SESSION['is_login']  = true;
        $_SESSION['user_id'] = $row['user_id'];
	    $_SESSION['username'] = $username;
	    $_SESSION['fullname'] = $row['fullname'];
        $_SESSION['gambar'] = $row['gambar'];
        	
        header("location:admin/index.php");
    } else {
        echo "<script>alert('Username atau Password yang anda masukkan salah!');
        window.location='www.php';
        </script>";
    }
} else {
    return "Anda tidak di ijinkan";
}
?>