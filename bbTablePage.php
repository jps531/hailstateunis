<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Baseball Uniform History</title>
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
        <h1>Mississippi State Baseball Uniform History</h1>
        <?php include "components/baseballTable/baseballAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filter Collapse Button -->
    <div class="row" id="filterCollapse">
      <div class="col-sm-9">
        <button class="btn btn-block" type="button" data-toggle="collapse" data-target="#filters" aria-expanded="false" aria-controls="collapseExample" 
                style="background-color: #3b0811; color: white;">
          Filter
        </button>
      </div>
    </div>

    <!-- Filters -->
    <div class="container collapse" id="filters">
      <div class="row" id="filtersSubrowA">
        <div class="col-xs-3 text-center" id="seasons">
          <?php include "components/baseballTable/filters/baseballSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/baseballTable/filters/baseballOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <?php include "components/baseballTable/filters/baseballSituationA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <?php include "components/baseballTable/filters/baseballSituationA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformC">
          <?php include "components/baseballTable/filters/baseballSituationA.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <?php include "components/baseballTable/filters/baseballSituationB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <?php include "components/baseballTable/filters/baseballSituationB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <?php include "components/baseballTable/filters/baseballSituationB.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/baseballTable/filters/searchBaseballTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Table -->
    <div class="row" id="table">
      <div class="col-xs-12">
        <?php include "components/baseballTable/baseballTable.php"; ?>
      </div>
    </div>
  </div>

  <!-- Javascript -->
  <script type="text/javascript" src="components/js/bbBuildTable.js"></script> 
  </body>
</html>