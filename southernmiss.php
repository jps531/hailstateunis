<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Southern Miss Football Uniform History</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/southernmiss.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

  <!-- Body/Filters/Table -->
  <body>
    <div class="container">

    <!-- Title -->
    <div class="row titleTop">
      <div class="col-md text-center">
        <img src="https://i.imgur.com/cNaeENd.png" alt="Southern Miss Football Uniform History" class="titleImage" width="600">
      </div>
    </div>
    <div class="row titleBottom">
      <div class="col-md text-center">
        <?php include "components/southernmissTable/southernmissAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filter Collapse Button -->
    <div class="row" id="filterCollapse">
      <div class="col-sm-9">
        <button class="btn btn-block" type="button" data-toggle="collapse" data-target="#filters" aria-expanded="false" aria-controls="collapseExample" 
                style="background-color: #ffc209; color: black;">
          Filter
        </button>
      </div>
    </div>

    <!-- Filters -->
    <div class="container collapse" id="filters">
      <div class="row" id="filtersSubrowA">
        <div class="col-xs-3 text-center" id="seasons">
          <?php include "components/southernmissTable/filters/southernmissSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/southernmissTable/filters/southernmissOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <?php include "components/southernmissTable/filters/southernmissUniformA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <?php include "components/southernmissTable/filters/southernmissUniformB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformC">
          <?php include "components/southernmissTable/filters/southernmissUniformC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <?php include "components/southernmissTable/filters/southernmissGameA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <?php include "components/southernmissTable/filters/southernmissGameB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <?php include "components/southernmissTable/filters/southernmissGameC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/southernmissTable/filters/searchSouthernmissTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Clear Filters Button -->
    <div class="row" id="filtersClear">
      <div class="col-sm-9" id="filterClearBtn">
        <a href="" id="usmClearFilters" class="badge badge-light">Clear All Filters</a>
      </div>
    </div>

    <!-- Table -->
    <div class="row" id="table">
      <div class="col-xs-12">
        <?php include "components/southernmissTable/southernmissTable.php"; ?>
      </div>
    </div>
  </div>

  <!-- Javascript -->
  <script type="module" src="components/js/southernmissFilters/usmSznOppFilters.js"></script>
  <script type="module" src="components/js/southernmissFilters/usmUniformFiltersApp.js"></script>
  <script type="module" src="components/js/southernmissFilters/usmUniformFilters.js"></script>
  <script type="module" src="components/js/southernmissFilters/usmGameFiltersApp.js"></script>
  <script type="module" src="components/js/southernmissFilters/usmGameFilters.js"></script>
  <script type="module" src="components/js/usmBuildTable.js"></script>
  </body>
</html>
