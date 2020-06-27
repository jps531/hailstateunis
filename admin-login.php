<?php
session_start();
?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Admin Login</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/nonTablePages.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

<!-- Body -->
<body>
    <div class="container">

      <!-- Login Form -->
      <div class="row" id="title">
          <div class="col-md just-center-10-pad">
            <?php include "components/admin/loginForm.php"; ?>
          </div>
      </div>
    </div>
</body>
</html>