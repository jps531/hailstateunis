<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Taylorsville Football Uniform History</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/taylorsville.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

  <!-- Body/Filters/Table -->
  <body>
    <div class="container">

    <!-- Title -->
    <div class="row titleTop">
      <div class="col-md text-center">
        <img src="https://i.imgur.com/d507Qrp.png" alt="Taylorsville Football Uniform History" class="titleImage" width="750">
      </div>
    </div>
    <div class="row titleBottom">
      <div class="col-md text-center">
        <?php include "components/taylorsvilleTable/taylorsvilleAboutModal.php"; ?>
      </div>
    </div>

    <!-- Filter Collapse Button -->
    <div class="row" id="filterCollapse">
      <div class="col-sm-9">
        <button class="btn btn-block" type="button" data-toggle="collapse" data-target="#filters" aria-expanded="false" aria-controls="collapseExample" 
                style="background-color: #068b48; color: white;">
          Filter
        </button>
      </div>
    </div>

    <!-- Filters -->
    <div class="container collapse" id="filters">
      <div class="row" id="filtersSubrowA">
        <div class="col-xs-3 text-center" id="seasons">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleSeasonSelect.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="opponents">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleOpponentSelect.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowB">
        <div class="col-xs-3 text-center" id="uniformA">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleUniformA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformB">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleUniformB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="uniformC">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleUniformC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersSubrowC">
        <div class="col-xs-3 text-center" id="gameA">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleGameA.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameB">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleGameB.php"; ?>
        </div>
        <div class="col-xs-3 text-center" id="gameC">
          <?php include "components/taylorsvilleTable/filters/taylorsvilleGameC.php"; ?>
        </div>
      </div>
      <div class="row" id="filtersRowTwo">
        <div class="col-xs-3 text-center" id="search">
          <?php include "components/taylorsvilleTable/filters/searchTaylorsvilleTable.php"; ?>
        </div>
      </div>
    </div>

    <!-- Clear Filters Button -->
    <div class="row" id="filtersClear">
      <div class="col-sm-9" id="filterClearBtn">
        <a href="" id="ttClearFilters" class="badge badge-light">Clear All Filters</a>
      </div>
    </div>

    <!-- Table -->
    <div class="row" id="table">
      <div class="col-xs-12">
        <?php include "components/taylorsvilleTable/taylorsvilleTable.php"; ?>
      </div>
    </div>
  </div>

  <!-- Javascript -->
  <script type="module" src="components/js/taylorsvilleFilters/ttSznOppFilters.js"></script>
  <script type="module" src="components/js/taylorsvilleFilters/ttUniformFiltersApp.js"></script>
  <script type="module" src="components/js/taylorsvilleFilters/ttUniformFilters.js"></script>
  <script type="module" src="components/js/taylorsvilleFilters/ttGameFiltersApp.js"></script>
  <script type="module" src="components/js/taylorsvilleFilters/ttGameFilters.js"></script>
  <script type="module" src="components/js/ttBuildTable.js"></script>
  </body>
</html>