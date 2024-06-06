<?php
require('../../database/db.php');
session_start();
if (!isset($_SESSION['konselor'])) {
  echo "<script>window.location = '../../login.php'</script>";
}
?>
<img src="" alt="">
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>E-Konseling | Konselor</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../vendors/feather/feather.css">
  <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="../js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../images/favicon.png" />
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

    * {
      font-family: 'Poppins', sans-serif;
    }
  </style>
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background-color: rgba(255,245,0,1); border-bottom: solid grey">

        <h3 style="color:rgba(2,11,133,1);">Konselor</h3>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end" style="background-color: rgba(2,11,133,1);">

        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile" style="color: white;"><?php echo $_SESSION['konselor']['nama'] ?></li>
          <li class="nav-item nav-profile"><a href="logout.php" style="color: rgba(241,255,25,1)">Logout</a></li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas" id="sidebarToggle" href="#!">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a href="index.php" class="nav-link">Pengajuan</a>
          </li>
          <li class="nav-item">
            <a href="sesi-berlangsung.php" class="nav-link">Sesi Berlangsung</a>
          </li>
          <li class="nav-item">
            <a href="riwayat-konsultasi.php" class="nav-link" style="color:yellow; background-color:#4B49AC;">Riwayat Konsultasi</a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Upload Bukti Konsultasi</h4>
                  <?php
                        $no = 1;
                        $id_konsultasi = $_GET['id_konsultasi'];
                        $konsultasi = mysqli_query($conn, "SELECT * FROM konsultasi WHERE id = '$id_konsultasi'");
                         $row = mysqli_fetch_array($konsultasi);
                      ?>
                      <form action="" method="post" enctype="multipart/form-data">
                        <input type="file" name="foto" class="form-control">
                        <input type="submit" class="btn btn-sm btn-success mt-4" name="upload" value="upload">
                      </form>
                      <?php
            if (isset($_POST['upload'])) {
               $filename1 = $_FILES['foto']['name'];
               $tmp_name1 = $_FILES['foto']['tmp_name'];
               $ukuran1 = $_FILES['foto']['size'];
                 $type1 = explode('.', $filename1);
                 $type2 = $type1[1];
                 $newname1 = 'dd' . time() . '.' . $type2;
                 $tipe_diizinkan = array('jpg', 'jpeg', 'png', '');

                 $dest = "./foto/" . $_FILES['foto']['name'];
                 move_uploaded_file($tmp_name1, './foto/' . $newname1);
                 $update = mysqli_query($conn, "UPDATE konsultasi SET
                           bukti_konsul = '$newname1'
                           WHERE id = '$id_konsultasi'");
             if ($update) {
               echo
               '<script>
               window.location="riwayat-konsultasi.php";
               alert("data berhasil di tambah");
               </script>';
             } else {
               echo 'gagal ' . mysqli_error($conn);
             }
           }
              ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <!-- <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021. Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span> -->
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="../vendors/chart.js/Chart.min.js"></script>
  <script src="../vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="../vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="../js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="../js/off-canvas.js"></script>
  <script src="../js/hoverable-collapse.js"></script>
  <script src="../js/template.js"></script>
  <script src="../js/settings.js"></script>
  <script src="../js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="../js/dashboard.js"></script>
  <script src="../js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->
</body>

</html>