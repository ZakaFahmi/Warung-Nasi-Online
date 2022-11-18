
<?php
include "../conn.php";

$id = $_GET['id'];
$cek = mysqli_query($koneksi, "SELECT * FROM produk WHERE id=$id");
if (mysqli_num_rows($cek) == 0){
    // echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data tidak ditemukan.</div>';
    echo '<script>
        window.alert("Data tidak ditemukan");
        window.location.replace("produk.php");
    </script>';
} else {
    $delete = mysqli_query($koneksi, "DELETE FROM produk WHERE id=$id");
    if($delete){
        // echo '<div class="alert alert-primary alert-dismissable">
        // <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data berhasil dihapus.
        // </div>';
        echo '<script>
            window.alert("Data berhasil dihapus");
            window.location.replace("produk.php");
        </script>';
    }else{
        // echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data gagal dihapus.</div>';
        echo '<script>
            window.alert("Data gagal dihapus");
            window.location.replace("produk.php");    
        </script>';
    }
}
?>