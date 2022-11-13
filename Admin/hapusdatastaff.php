<?php 
	
if(isset($_GET['idlogin'])){
	
	
	include '../baru/koneksi.php';
	
	
	$idlogin = $_GET['idlogin'];
	
	
	$cek = mysqli_query($connection,"SELECT idlogin FROM akun WHERE idlogin='$idlogin'") or die(mysqli_error($connection));
	
	
	if(mysqli_num_rows($cek) == 0){
		
		
		echo '<script>window.history.back()</script>';
	
	}else{
		
		
		$del = mysqli_query($connection,"DELETE FROM akun WHERE idlogin = '$idlogin'");
		
		
		if($del){
			
			echo "<script>
                    alert('Data berhasil dihapus');
                    window.location.href='datastaff.php';
                    </script>";
		}else{
			
			echo "<script>
                    alert('Data gagal dihapus');
                    window.location.href='datastaff.php';
                    </script>";
		}
		
	}
	
}else{
	
	
	echo '<script>window.history.back()</script>';
	
}
?>