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
    <div class="row titleTop">
      <div class="col-md text-center">
        <img src="https://i.imgur.com/S2GmKX1.png" alt="Mississippi State Football Uniform History" class="titleImage" width="550">
      </div>
    </div>
    <div class="row titleBottom">
      <div class="col-md text-center">
        <?php include "components/footballTable/footballAboutModal.php"; ?>
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
          <?php include "components/footballTable/filters/footballSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/footballTable/filters/footballOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <select class="selectpicker" data-live-search="true" id="fbUniformA" title="Uniform A">
            <?php include "footballTable/filters/footballUniform.html"; ?>
          </select>
          <button class="btn clear" id="fbUniformAClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <select class="selectpicker" data-live-search="true" id="fbUniformB" title="Uniform B">
            <?php include "footballTable/filters/footballUniform.html"; ?>
          </select>
          <button class="btn clear" id="fbUniformBClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="uniformC">
          <select class="selectpicker" data-live-search="true" id="fbUniformC" title="Uniform C">
            <?php include "footballTable/filters/footballUniform.html"; ?>
          </select>
          <button class="btn clear" id="fbUniformCClear"><i class="fas fa-times-circle"></i></button>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <select class="selectpicker" data-live-search="true" id="fbGameA" title="Game A">
            <?php include "footballTable/filters/footballGame.html"; ?>
          </select>
          <button class="btn clear" id="fbGameAClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <select class="selectpicker" data-live-search="true" id="fbGameB" title="Game B">
            <?php include "footballTable/filters/footballGame.html"; ?>
          </select>
          <button class="btn clear" id="fbGameBClear"><i class="fas fa-times-circle"></i></button>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <select class="selectpicker" data-live-search="true" id="fbGameC" title="Game C">
            <?php include "footballTable/filters/footballGame.html"; ?>
          </select>
          <button class="btn clear" id="fbGameCClear"><i class="fas fa-times-circle"></i></button>
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
