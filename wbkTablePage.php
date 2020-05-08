<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Women's Basketball Uniform History</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/tablePages.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

<!-- Body/Filters/Table -->
<body>
    <div class="container">

    <!-- Title -->
    <div class="row" id="title">
      <div class="col-md text-center">
        <h1>Mississippi State Women's Basketball Uniform History</h1>
        <?php include "components/wbkTable/wbkAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filters -->
    <div class="row" id="filters">
      <div class="col-xs-3 text-center" id="seasons">
        <?php include "components/wbkTable/filters/wbkSeasonSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="opponents">
        <?php include "components/wbkTable/filters/wbkOpponentSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="situationA">
        <?php include "components/wbkTable/filters/wbkSituationA.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="situationB">
        <?php include "components/wbkTable/filters/wbkSituationB.php"; ?>
      </div>
    </div>
    <div class="row" id="filtersRowTwo">
      <div class="col-xs-3 text-center" id="search">
        <?php include "components/wbkTable/filters/searchWbkTable.php"; ?>
      </div>
    </div>

    <!-- Table -->
    <div class="row" id="table">
      <div class="col-xs-12">
        <?php include "components/wbkTable/wbkTable.php"; ?>
      </div>
    </div>
  </div>

  <!-- Javascript -->
  <script type="text/javascript" src="components/js/wbkBuildTable.js"></script> 
  </body>
</html>