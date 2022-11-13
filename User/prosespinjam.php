<?php 
	
if(isset($_POST['pinjam'])){
	
	
	include '../baru/koneksi.php';
	
	$idlogin	=$_POST['idlogin'];
	$kode_buku	= $_POST['kode_buku'];
	$judul		= $_POST['judul'];
	$tgl_pinjam	= $_POST['tgl_pinjam'];
	$tgl_balik	= $_POST['tgl_balik'];
	$status = "dipinjam";
	
	$input = mysqli_query($connection,"INSERT INTO peminjaman VALUES(NULL, '$idlogin', '$kode_buku','$judul', '$tgl_pinjam', '$tgl_balik', '$status')") or die(mysqli_error($connection));
	
	
	if($input){
		echo "<script>
			alert('Peminjaman berhasil dilakukan');
			window.location.href='datapinjam.php';
			</script>";
		
			
		}else{
			
			echo "<script>
				alert('Gagal meminjam');
				window.location.href='datapinjam.php';
				</script>";
			
		}
	
	}else{	
	
		
		echo '<script>window.history.back()</script>';
	
	}
	?>