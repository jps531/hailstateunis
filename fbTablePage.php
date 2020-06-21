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
          <?php include "components/footballTable/filters/footballSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/footballTable/filters/footballOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <?php include "components/footballTable/filters/footballUniformA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <?php include "components/footballTable/filters/footballUniformB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformC">
          <?php include "components/footballTable/filters/footballUniformC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <?php include "components/footballTable/filters/footballGameA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <?php include "components/footballTable/filters/footballGameB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <?php include "components/footballTable/filters/footballGameC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/footballTable/filters/searchFootballTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Clear Filters Button -->
    <div class="row" id="filtersClear">
      <div class="col-sm-9" id="filterClearBtn">
        <a href="" id="fbClearFilters" class="badge badge-light">Clear All Filters</a>
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
  <script type="module" src="components/js/footballFilters/fbSznOppFilters.js"></script>
  <script type="module" src="components/js/footballFilters/fbUniformFiltersApp.js"></script>
  <script type="module" src="components/js/footballFilters/fbUniformFilters.js"></script>
  <script type="module" src="components/js/footballFilters/fbGameFiltersApp.js"></script>
  <script type="module" src="components/js/footballFilters/fbGameFilters.js"></script>
  <script type="module" src="components/js/fbBuildTable.js"></script>
  </body>
</html>