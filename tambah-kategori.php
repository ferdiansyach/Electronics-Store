<?php
session_start();
include 'db.php';
if ($_SESSION['status_login'] != true) {
  echo '<script>window.location="login.php"</script>';
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bukawarung</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
  <!-- Header -->
  <header>
    <div class="container">
      <h1><a href="dashboard.php">Bukawarung</a></h1>
      <ul>
        <li><a href="dashboard.php">Dashboard</a></li>
        <li><a href="profil.php">Profil</a></li>
        <li><a href="data-kategori.php">Data Katagori</a></li>
        <li><a href="data-produk.php">Data Produk</a></li>
        <li><a href="keluar.php">Logout</a></li>
      </ul>
    </div>
  </header>

  <!--- Konten --->

  <div class="section">
    <div class="container">
      <h3>Tambah Data Kategori</h3>
      <div class="box">
        <form action="" method="POST">
          <input type="text" name="nama" placeholder="Nama Kategori" class="input-control" required>
          <input type="submit" name="submit" value="Submit" class="btn">
        </form>
        <?php
        if (isset($_POST['submit'])) {
          $nama = ucwords($_POST['nama']);
          $insert = mysqli_query($conn, "INSERT INTO tb_category VALUE(null,'" . $nama . "')");
          if ($insert) {
            echo '<script>alert("Tambah Data Berhasil")</script>';
            echo '<script>window.location="data-kategori.php"</script>';
          } else {
            echo 'gagal' . mysqli_error($conn);
          }
        }
        ?>
      </div>
    </div>
  </div>

  <!--- Footer --->
  <footer>
    <div class="container">
      <small>Copyright &copy; 2023 - Bukawarung</small>
    </div>
  </footer>
</body>

</html>