<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Men's Basketball Uniform History</title>
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
        <img src="https://i.imgur.com/zczfEPV.png" alt="Mississippi State Men's Basketball Uniform History" class="titleImage" width="600">
      </div>
    </div>
    <div class="row titleBottom">
      <div class="col-md text-center">
        <?php include "components/mbkTable/mbkAboutModal.php"; ?>
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
          <?php include "components/mbkTable/filters/mbkSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/mbkTable/filters/mbkOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <select class="selectpicker" data-live-search="true" id="mbkUniformA" title="Uniform A">
            <?php include "components/mbkTable/filters/mbkUniform.html"; ?>
          </select>
          <button class="btn clear" id="mbkUniformAClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <select class="selectpicker" data-live-search="true" id="mbkUniformB" title="Uniform B">
            <?php include "components/mbkTable/filters/mbkUniform.html"; ?>
          </select>
          <button class="btn clear" id="mbkUniformAClear"><i class="fas fa-times-circle"></i></button>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <select class="selectpicker" data-live-search="true" id="mbkGameA" title="Game A">
            <?php include "components/mbkTable/filters/mbkGame.html"; ?>
          </select>
          <button class="btn clear" id="mbkGameAClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <select class="selectpicker" data-live-search="true" id="mbkGameB" title="Game B">
            <?php include "components/mbkTable/filters/mbkGame.html"; ?>
          </select>
          <button class="btn clear" id="mbkGameBClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <select class="selectpicker" data-live-search="true" id="mbkGameC" title="Game C">
            <?php include "components/mbkTable/filters/mbkGame.html"; ?>
          </select>
          <button class="btn clear" id="mbkGameCClear"><i class="fas fa-times-circle"></i></button>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/mbkTable/filters/searchMbkTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Clear Filters Button -->
    <div class="row" id="filtersClear">
      <div class="col-sm-9" id="filterClearBtn">
        <a href="" id="mbkClearFilters" class="badge badge-light">Clear All Filters</a>
      </div>
    </div>

    <!-- Table -->
    <div class="row" id="table">
      <div class="col-xs-12">
        <?php include "components/mbkTable/mbkTable.php"; ?>
      </div>
    </div>
  </div>

  <!-- Javascript -->
  <script type="module" src="components/js/mbkFilters/mbkSznOppFilters.js"></script>
  <script type="module" src="components/js/mbkFilters/mbkUniformFiltersApp.js"></script>
  <script type="module" src="components/js/mbkFilters/mbkUniformFilters.js"></script>
  <script type="module" src="components/js/mbkFilters/mbkGameFiltersApp.js"></script>
  <script type="module" src="components/js/mbkFilters/mbkGameFilters.js"></script>
  <script type="module" src="components/js/mbkBuildTable.js"></script> 
  </body>
</html>
