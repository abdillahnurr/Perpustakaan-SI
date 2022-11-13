<?php 
	
if(isset($_GET['kode_buku'])){
	
	
	include '../baru/koneksi.php';
	
	
	$kode_buku = $_GET['kode_buku'];
	
	
	$cek = mysqli_query($connection,"SELECT kode_buku FROM buku WHERE kode_buku='$kode_buku'") or die(mysqli_error($connection));
	
	
	if(mysqli_num_rows($cek) == 0){
		
		
		echo '<script>window.history.back()</script>';
	
	}else{
		
		
		$del = mysqli_query($connection,"DELETE FROM buku WHERE kode_buku='$kode_buku'");
		
		
		if($del){
			
			echo "<script>
                    alert('Data berhasil dihapus');
                    window.location.href='databuku.php';
                    </script>";
		}else{
			
			echo "<script>
                    alert('Data gagal dihapus');
                    window.location.href='databuku.php';
                    </script>";
		
		}
		
	}
	
}else{
	
	
	echo '<script>window.history.back()</script>';
	
}
?>