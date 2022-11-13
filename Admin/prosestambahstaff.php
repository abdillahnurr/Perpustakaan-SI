<?php 
	
if(isset($_POST['tambah'])){
	
	
	include('../baru/koneksi.php');
    $idlogin = $_POST['idlogin'];
    $nama = $_POST['depan']." ".$_POST['belakang'];
    $email =$_POST['email'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    $gender = $_POST['gender'];
	
	$input = mysqli_query($connection,"INSERT INTO akun VALUES ('$idlogin','$nama','$email', '$password', '$role', '$gender')") or die(mysqli_error($connection));
	
	if($input){
		
		echo "<script>
                    alert('Data berhasil ditambahkan');
                    window.location.href='datastaff.php';
                    </script>";
		
	}else{
		
		echo "<script>
                    alert('Data gagal ditambahkan');
                    window.location.href='tambahstaff.php';
                    </script>";
		
	}

}else{	

	
	echo '<script>window.history.back()</script>';

}
?>