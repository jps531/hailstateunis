<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Football Uniform History</title>
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
        <h1>Mississippi State Football Uniform History</h1>
        <?php include "components/footballTable/footballAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filters -->
    <div class="row" id="filters">
      <div class="col-xs-3 text-center" id="seasons">
        <?php include "components/footballTable/filters/footballSeasonSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="opponents">
        <?php include "components/footballTable/filters/footballOpponentSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="situationA">
      <?php include "components/footballTable/filters/footballSituationA.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="situationB">
      <?php include "components/footballTable/filters/footballSituationB.php"; ?>
      </div>
    </div>
    <div class="row" id="filtersRowTwo">
      <div class="col-xs-3 text-center" id="search">
      <?php include "components/footballTable/filters/searchFootballTable.php"; ?>
      </div>
    </div>

    <!-- Table -->
    <div class="row" id="table">
      <div class="col-xs-12">
        <?php include "components/footballTable/footballTable.php"; ?>
      </div>
    </div>
  </div>

  <!-- Javascript -->
  <script type="text/javascript" src="components/js/fbBuildTable.js"></script> 
  </body>
</html>