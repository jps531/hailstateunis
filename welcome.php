<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>HailStateUnis Tables</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/landingPage.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

  <!-- Body/Filters/Table -->
  <body>
    <div class="container">

        <!-- Title -->
        <div class="row" id="title">
        <div class="col-md text-center">
            <h1>Welcome!</h1>
        </div>
        </div>

        <!-- Report Issue Button -->
        <a type="button" class="btn btn-outline-secondary btn-sm" href="reportIssue.php">Report an Issue</a>

        <div class="row" id="filtersSubrow" style="justify-content: center;">
          <div class="col-xs-3 text-center" id="situationA" style="margin-bottom: 20px;">
            <select class="selectpicker" data-live-search="true" id="cloneTestA" title="SEC A"> 
              <optgroup label="SEC West">
                <option>Alabama</option>
                <option>Arkansas</option>
                <option>Auburn</option>
                <option>LSU</option>
                <option>Ole Miss</option>
                <option>Texas A&M</option>
              </optgroup>
              <optgroup label="SEC East">
                <option>Florida</option>
                <option>Georgia</option>
                <option>Kentucky</option>
                <option>Missouri</option>
                <option>South Carolina</option>
                <option>Tennessee</option>
                <option>Vanderbilt</option>
              </optgroup>
              <optgroup label="Other">
                <option>Oklahoma State</option>
                <option>NC State</option>
              </optgroup>
            </select>
            <button class="btn clear" id="cloneTestClearA"><i class="fas fa-times-circle"></i></button>
          </div>
          <div class="col-xs-3 text-center" id="situationB" style="margin-bottom: 20px; display: none;">
            <select class="selectpicker" data-live-search="true" id="cloneTestB" title="SEC B"> 
              <optgroup label="SEC West">
                <option>Alabama</option>
                <option>Arkansas</option>
                <option>Auburn</option>
                <option>LSU</option>
                <option>Ole Miss</option>
                <option>Texas A&M</option>
              </optgroup>
              <optgroup label="SEC East">
                <option>Florida</option>
                <option>Georgia</option>
                <option>Kentucky</option>
                <option>Missouri</option>
                <option>South Carolina</option>
                <option>Tennessee</option>
                <option>Vanderbilt</option>
              </optgroup>
              <optgroup label="Other">
                <option>Oklahoma State</option>
                <option>NC State</option>
              </optgroup>
            </select>
            <button class="btn clear" id="cloneTestClearB"><i class="fas fa-times-circle"></i></button>
          </div>
          <div class="col-xs-3 text-center" id="situationC" style="margin-bottom: 20px; display: none;">
            <select class="selectpicker" data-live-search="true" id="cloneTestC" title="SEC C"> 
              <optgroup label="SEC West">
                <option>Alabama</option>
                <option>Arkansas</option>
                <option>Auburn</option>
                <option>LSU</option>
                <option>Ole Miss</option>
                <option>Texas A&M</option>
              </optgroup>
              <optgroup label="SEC East">
                <option>Florida</option>
                <option>Georgia</option>
                <option>Kentucky</option>
                <option>Missouri</option>
                <option>South Carolina</option>
                <option>Tennessee</option>
                <option>Vanderbilt</option>
              </optgroup>
              <optgroup label="Other">
                <option>Oklahoma State</option>
                <option>NC State</option>
              </optgroup>
            </select>
            <button class="btn clear" id="cloneTestClearC"><i class="fas fa-times-circle"></i></button>
          </div>
        </div>
        <script type="module" src="components/js/clone.js"></script> 

    </div>
  </body>
</html>