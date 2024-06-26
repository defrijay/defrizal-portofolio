<?php
include("function.php");
$listBahan = readBahan();

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>mamEmam</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center" style="background-color: #00235B">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="index.php" class="logo d-flex align-items-center me-auto me-lg-0">
        <img src="assets/img/logo.png" alt="">
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.php">Home</a></li>
          <li><a href="admin.php#bahan">Bahan Bahan</a></li>
          <li><a href="admin.php#menu">List Menu</a></li>
          <li><a href="admin.php#chefs">Chefs</a></li>
        </ul>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  <main id="main">
    <!-- ======= Form Add Section ======= -->
    <section id="add-menu" class="about">

      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <br>
          <p>Tambah<span> Bahan </span>Baru</p>
        </div>
        <div class="gradient-custom-1 h-100">
          <div class="mask d-flex align-items-center h-100">
            <div class="container">
              <form action="#" method="POST" id="form-add" enctype="multipart/form-data">
                <input type="hidden" name="id_bahan" id="id_bahan">
                <div class="mb-3">
                  <label for="nama_bahan" class="form-label">Nama Bahan</label>
                  <input type="text" class="form-control" id="nama_bahan" name="nama_bahan" required>
                </div>
                <div class="mb-3">
                  <label for="stok_bahan" class="form-label">Stok Bahan</label>
                  <input type="text" class="form-control" id="stok_bahan" name="stok_bahan" required>
                </div>
                <div class="mb-3">
                  <label for="harga_bahan" class="form-label">Harga</label>
                  <input type="text" class="form-control" id="harga_bahan" name="harga_bahan" required>
                </div>
                <a href="admin.php"><button type="button" class="btn btn-secondary"
                    data-bs-dismiss="modal">Cancel</button></a>
                <button type="submit" class="btn btn-info text-white" name="add-bahan" id="add-bahan"
                  form="form-add">Tambahkan Bahan</button>
              </form>

            </div>
          </div>
        </div>
      </div>
      </div>
    </section><!-- End Form Add Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-3">
        <div class="col-lg-3 col-md-6 d-flex">
          <i class="bi bi-geo-alt icon"></i>
          <div>
            <h4>Alamat</h4>
            <p>
              Gegerkalong Girang No 1313 <br>
              Bandung, Indonesia<br>
            </p>
          </div>

        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-telephone icon"></i>
          <div>
            <h4>Kontak Kami</h4>
            <p>
              <strong>Phone:</strong> 0813 1313 1313<br>
              <strong>Email:</strong> mamemam@umkm.id<br>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-clock icon"></i>
          <div>
            <h4>Jam Buka</h4>
            <p>
              <strong>Senin - Sabtu 11.00</strong> - 22.00<br>
              Minggu kita tutup
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://twitter.com/PiTheciasss" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="https://www.facebook.com/rafiarsalan.rafiarsalan/" class="facebook"><i
                class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/raparsalan/" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/in/raparsalan/" class="linkedin"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>mamEmam</span></strong>. All Rights Reserved
      </div>
      <div class="credits">Designed help with <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer><!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>