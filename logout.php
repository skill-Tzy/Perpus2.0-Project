<?php
session_start();
session_destroy();	

    echo "<script>alert('Anda telah berhasil keluar.'); window.location = 'www.php'</script>";
?>