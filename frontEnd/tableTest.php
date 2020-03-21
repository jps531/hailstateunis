<?php ob_start(); ?>

<!doctype html>
<html lang="en">
  <head>
    <title>Football Uniform History</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/tableTest.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

  <body>
    <div class="container">
    <div class="row" id="title">
      <div class="col-md text-center">
        <h1>Mississippi State Football Uniform History</h1>
      </div>
    </div>
    <div class="row" id="filters">
      <div class="col-xs-3 text-center" id="seasons">
        <?php include "components/footballTable/filters/footballSeasonSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="situations">
        <?php include "components/footballTable/filters/footballSituationSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="opponents">
        <?php include "components/footballTable/filters/footballOpponentSelect.php"; ?>
      </div>
      <div class="col-xs-3 text-center" id="search">
        <?php include "components/footballTable/filters/searchFootballTable.php"; ?>
      </div>
    </div>
    <div class="row" id="table">
      <div class="col-md-12">
        <?php include "components/footballTable/footballTable.php"; ?>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="components/js/searchTable.js"></script> 
  </body>
</html>

<?php
file_put_contents('frontEnd/tableTest.html', ob_get_contents());
ob_end_clean();
?>