<?php 

    if(isset($_GET['status'])){
	
	
        include '../baru/koneksi.php';
        
        
        $status = "dipinjam";
        date_default_timezone_set("asia/makassar");
		$min = date("Y-m-d");
        
        $cek = mysqli_query($connection,"SELECT status,tgl_balik FROM peminjaman WHERE status= '$status' AND tgl_balik <= '$min'") or die(mysqli_error($connection));
        
        
        if(mysqli_num_rows($cek) == 0){
            
            
            echo '<script>window.history.back()</script>';
        
        }else{
            
            
            $update = mysqli_query($connection,"UPDATE peminjaman SET status = 'dikembalikan' WHERE status= '$status' AND tgl_balik <= '$min'");
            
            
            if($update){
                
                echo "<script>
                    alert('Data berhasil direfresh');
                    window.location.href='tabel.php';
                    </script>";
                
            }else{
                
                echo "<script>
                    alert('Data gagal direfresh');
                    window.location.href='tabel.php';
                    </script>";
            }
            
        }
        
    }else{
        
        
        echo '<script>window.history.back()</script>';
        
    }
?>