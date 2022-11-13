<?php 

if(isset($_POST['ubah'])){
	
	
	include '../baru/koneksi.php';
	
	$idlogin			= $_POST['idlogin'];	
	$nama				= $_POST['nama'];	
	$email				= $_POST['email'];
	$password			= $_POST['password'];
	$role				= $_POST['role'];
	$gender				= $_POST['gender'];
	
	

	$update = mysqli_query($connection,"UPDATE akun SET nama='$nama', email='$email', password='$password', role='$role', gender='$gender' WHERE idlogin='$idlogin'") or die(mysqli_error($connection));
	
	
	if($update){
		
		echo "<script>
                    alert('Data berhasil diupdate');
                    window.location.href='datastaff.php';
                    </script>";
	}else{
		
		echo "<script>
                    alert('Data gagal diupdate');
                    window.location.href='datastaff.php';
                    </script>";
	}

}else{	
	echo '<script>window.history.back()</script>';

}
?>