<?php 
	
if(isset($_POST['tambah'])){
	
	
	include('../baru/koneksi.php');
	
	$kode_buku	= $_POST['kode_buku'];
	$judul		= $_POST['judul'];
	$kategori	= $_POST['kategori'];
	$penulis	= $_POST['penulis'];
	$penerbit	= $_POST['penerbit'];
	$tahun		= $_POST['tahun'];
	
	
	$input = mysqli_query($connection,"INSERT INTO buku VALUES('$kode_buku', '$judul', '$kategori', '$penulis', '$penerbit' ,'$tahun')") or die(mysqli_error($connection));
	
	
	if($input){
		
		echo "<script>
                    alert('Data berhasil ditambahkan');
                    window.location.href='databuku.php';
                    </script>";
		
	}else{
		
		echo "<script>
                    alert('Data gagal ditambahkan');
                    window.location.href='formtambah.php';
                    </script>";
	}
}else{
	
	echo '<script>window.history.back()</script>';

}
?>