<?php 

if(isset($_POST['kode_buku'])){
	
	
	include '../baru/koneksi.php';
	
	
	$kode_buku			= $_POST['kode_buku'];	
	$judul				= $_POST['judul'];
	$kategori			= $_POST['kategori'];
	$penulis			= $_POST['penulis'];
	$penerbit			= $_POST['penerbit'];
	$tahun				= $_POST['tahun'];
	
	
	$update = mysqli_query($connection,"UPDATE buku SET kode_buku ='$kode_buku', judul='$judul', kategori='$kategori', penulis='$penulis', penerbit='$penerbit', tahun='$tahun' WHERE buku.kode_buku='$kode_buku'") or die(mysqli_error($connection));
	
	
	if($update){
		
		echo "<script>
                    alert('Buku berhasil diupdate');
                    window.location.href='home.php';
                    </script>";
		
	}else{
		
		echo "<script>
                    alert('Buku gagal diupdate');
                    window.location.href='home.php';
                    </script>";
	}

}else{	
	echo '<script>window.history.back()</script>';

}
?>