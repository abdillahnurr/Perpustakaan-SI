<?php 
	
if(isset($_POST['tambah'])){
	
	
	include('koneksi.php');
    $idlogin = $_POST['idlogin'];
    $nama = $_POST['depan']." ".$_POST['belakang'];
    $email =$_POST['email'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    $gender = $_POST['gender'];
	
	$input = mysqli_query($connection,"INSERT INTO akun VALUES ('$idlogin','$nama','$email', '$password', '$role', '$gender')") or die(mysqli_error($connection));
	
	if($input){
		
		echo "<script>
			alert('Pendaftaran berhasil dilakukan');
			window.location.href='index.php';
			</script>";
		
		
	}else{
		
		echo "<script>
			alert('Pendaftaran berhasil dilakukan');
			window.location.href='register.php';
			</script>";
		
	}

}else{	

	
	echo '<script>window.history.back()</script>';

}
?>