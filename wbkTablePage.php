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
          <?php include "components/wbkTable/filters/wbkSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/wbkTable/filters/wbkOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <?php include "components/wbkTable/filters/wbkUniformA.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <?php include "components/wbkTable/filters/wbkGameA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <?php include "components/wbkTable/filters/wbkGameB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <?php include "components/wbkTable/filters/wbkGameC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/wbkTable/filters/searchWbkTable.php"; ?>
        </div>
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
  <script type="module" src="components/js/wbkFilters/wbkSznOppFilters.js"></script>
  <script type="module" src="components/js/wbkFilters/wbkUniformFilter.js"></script>
  <script type="module" src="components/js/wbkFilters/wbkGameFiltersApp.js"></script>
  <script type="module" src="components/js/wbkFilters/wbkGameFilters.js"></script>
  <script type="module" src="components/js/wbkBuildTable.js"></script> 
  </body>
</html>