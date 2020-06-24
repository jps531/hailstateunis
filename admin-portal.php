<?php include "components/admin/sessionCheck.php"; ?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Admin Portal</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/landingPage.scss">
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

        <!-- Log Out -->
        <div class="row" id="title">
            <div class="col-md" id="titleLogin">
              <a type="button" class="btn btn-outline-secondary btn-sm" href="components/admin/logout.php">Log Out</a>
            </div>
        </div>
    </div>
</body>
</html>