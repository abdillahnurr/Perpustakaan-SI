<?php

session_start();
include('koneksi.php');

$idlogin = $_POST['idlogin'];
$password = $_POST['password'];

$query  = "SELECT * FROM akun WHERE idlogin='$idlogin' AND password='$password'";
$result     = mysqli_query($connection, $query);
$num_row     = mysqli_num_rows($result);
$row         = mysqli_fetch_array($result);

if($num_row >=1 AND $row['role'] == "user") {
    $_SESSION['idlogin'] = $row['idlogin'];
    $_SESSION['email']       = $row['email'];
    $_SESSION['nama'] = $row['nama'];
    $_SESSION['username']       = $row['username'];
    header('location:../User/home.php');
}if ($num_row >=1 AND $row['role'] == "staff") {

    $_SESSION['email']       = $row['email'];
    $_SESSION['nama'] = $row['nama'];
    $_SESSION['username']       = $row['username'];
    header('location:../Staff/home.php');
}
if ($num_row >=1 AND $row['role'] == "admin") {

    $_SESSION['email']       = $row['email'];
    $_SESSION['nama'] = $row['nama'];
    $_SESSION['username']       = $row['username'];
    header('location:../Admin/home.php');
}

else {
    echo "<script> ";
    echo " alert('Email atau Password tidak cocok'); ";
    echo "window.location = 'index.php';";
    echo "</script>";
}

?>

