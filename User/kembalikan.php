<?php 

    if(isset($_GET['idpinjam'])){
	
	
        include '../baru/koneksi.php';
        
        
        $kembali = (int)$_GET['idpinjam'];
        
        
        $cek = mysqli_query($connection,"SELECT idpinjam FROM peminjaman WHERE idpinjam=$kembali") or die(mysqli_error($connection));
        
        
        if(mysqli_num_rows($cek) == 0){
            
            
            echo '<script>window.history.back()</script>';
        
        }else{
            
            
            $update = mysqli_query($connection,"UPDATE peminjaman SET status = 'dikembalikan' WHERE idpinjam = $kembali");
            
            
            if($update){
                
                echo "<script>
                    alert('Buku berhasil dikembalikan');
                    window.location.href='datapinjam.php';
                    </script>";
                
            }else{
                
                echo "<script>
                    alert('Gagal mengembalikan buku');
                    window.location.href='datapinjam.php';
                    </script>";
            
            }
            
        }
        
    }else{
        
        
        echo '<script>window.history.back()</script>';
        
    }
?>