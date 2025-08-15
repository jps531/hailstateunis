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
    <div class="row titleTop">
      <div class="col-md text-center">
        <img src="https://i.imgur.com/qUZfWfd.png" alt="Mississippi State Women's Basketball Uniform History" class="titleImage" width="600">
      </div>
    </div>
    <div class="row titleBottom">
      <div class="col-md text-center">
        <?php include "components/wbkTable/wbkAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filter Collapse Button -->
    <div class="row" id="filterCollapse">
      <div class="col-sm-8">
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
          <?php include "components/wbkTable/filters/wbkSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/wbkTable/filters/wbkOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <select class="selectpicker" data-live-search="true" id="wbkUniformA" title="Uniform A">
            <?php include "components/wbkTable/filters/wbkUniform.html"; ?>
          </select>
          <button class="btn clear" id="wbkUniformAClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <select class="selectpicker" data-live-search="true" id="wbkUniformB" title="Uniform B">
            <?php include "components/wbkTable/filters/wbkUniform.html"; ?>
          </select>
          <button class="btn clear" id="wbkUniformBClear"><i class="fas fa-times-circle"></i></button>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <select class="selectpicker" data-live-search="true" id="wbkGameA" title="Game A">
            <?php include "components/wbkTable/filters/wbkGame.html"; ?>
          </select>
          <button class="btn clear" id="wbkGameAClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <select class="selectpicker" data-live-search="true" id="wbkGameB" title="Game B">
            <?php include "components/wbkTable/filters/wbkGame.html"; ?>
          </select>
          <button class="btn clear" id="wbkGameBClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <select class="selectpicker" data-live-search="true" id="wbkGameC" title="Game C">
            <?php include "components/wbkTable/filters/wbkGame.html"; ?>
          </select>
          <button class="btn clear" id="wbkGameCClear"><i class="fas fa-times-circle"></i></button>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/wbkTable/filters/searchWbkTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Clear Filters Button -->
    <div class="row" id="filtersClear">
      <div class="col-sm-9" id="filterClearBtn">
        <a href="" id="wbkClearFilters" class="badge badge-light">Clear All Filters</a>
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
  <script type="module" src="components/js/wbkFilters/wbkUniformFiltersApp.js"></script>
  <script type="module" src="components/js/wbkFilters/wbkUniformFilters.js"></script>
  <script type="module" src="components/js/wbkFilters/wbkGameFiltersApp.js"></script>
  <script type="module" src="components/js/wbkFilters/wbkGameFilters.js"></script>
  <script type="module" src="components/js/wbkBuildTable.js"></script> 
  </body>
</html>
