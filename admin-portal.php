<?php include "components/admin/sessionCheck.php"; ?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Admin Portal</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/nonTablePages.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

<!-- Body -->
<body>
    <div class="container">
    
        <!-- Title -->
        <div class="row" id="title">
          <div class="col-md text-center">
            <h1>Admin Portal</h1>
          </div>
        </div>

        <!-- Admin Page Links -->
        <div class="row pageLinks">
          <div class="col-md-3 just-center-10-pad">
            <a type="button" id="footballBtn" class="btn btn-lg btn-block standardBtn" href="admin-football.php">Football</a>
          </div>
          <div class="col-md-3 just-center-10-pad">
            <a type="button" id="baseballBtn" class="btn btn-lg btn-block standardBtn" href="admin-baseball.php">Baseball</a>
          </div>
        </div>
        <div class="row pageLinks">
          <div class="col-md-3 just-center-10-pad">
            <a type="button" id="mbkBtn" class="btn btn-lg btn-block standardBtn" href="admin-mbasketball.php">Men's Basketball</a>
          </div>
          <div class="col-md-3 just-center-10-pad">
            <a type="button" id="wbkBtn" class="btn btn-lg btn-block standardBtn" href="admin-wbasketball.php">Women's Basketball</a>
          </div>
        </div>

        <!-- Log Out -->
        <div class="row" id="logout">
          <div class="col-md just-center-10-pad">
            <a type="button" class="btn btn-outline-secondary btn-sm" href="components/admin/logout.php">Log Out</a>
          </div>
        </div>
    </div>
</body>
</html>