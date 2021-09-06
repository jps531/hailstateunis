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
    <div class="row titleTop">
      <div class="col-md text-center">
        <img src="https://i.imgur.com/bKBuKPZ.png" alt="Mississippi State Baseball Uniform History" class="titleImage" width="500">
      </div>
    </div>
    <div class="row titleBottom">
      <div class="col-md text-center">
        <?php include "components/baseballTable/baseballAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filter Collapse Button -->
    <div class="row" id="filterCollapse">
      <div class="col-sm-9">
        <button class="btn btn-block" type="button" data-toggle="collapse" data-target="#filters" aria-expanded="false" aria-controls="collapseExample" 
                style="background-color: #431724; color: white;">
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
          <?php include "components/baseballTable/filters/baseballUniformA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <?php include "components/baseballTable/filters/baseballUniformB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformC">
          <?php include "components/baseballTable/filters/baseballUniformC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <?php include "components/baseballTable/filters/baseballGameA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <?php include "components/baseballTable/filters/baseballGameB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <?php include "components/baseballTable/filters/baseballGameC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/baseballTable/filters/searchBaseballTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Clear Filters Button -->
    <div class="row" id="filtersClear">
      <div class="col-sm-9" id="filterClearBtn">
        <a href="" id="bbClearFilters" class="badge badge-light">Clear All Filters</a>
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
  <script type="module" src="components/js/baseballFilters/bbSznOppFilters.js"></script>
  <script type="module" src="components/js/baseballFilters/bbUniformFiltersApp.js"></script>
  <script type="module" src="components/js/baseballFilters/bbUniformFilters.js"></script>
  <script type="module" src="components/js/baseballFilters/bbGameFiltersApp.js"></script>
  <script type="module" src="components/js/baseballFilters/bbGameFilters.js"></script>
  <script type="module" src="components/js/bbBuildTable.js"></script> 
  </body>
</html>
