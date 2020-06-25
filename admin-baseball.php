<?php include "components/admin/sessionCheck.php"; ?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Baseball Admin Page</title>
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
            <h1>Baseball Admin Page</h1>
          </div>
        </div>

        <!-- Log Out -->
        <div class="row" id="logout">
          <div class="col-md" id="titleLogout">
            <a type="button" class="btn btn-outline-secondary btn-sm" href="admin-portal.php" id="smBtn">Back to Portal</a>
            <a type="button" class="btn btn-outline-secondary btn-sm" href="components/admin/logout.php" id="smBtn">Log Out</a>
          </div>
        </div>
    </div>
</body>
</html>