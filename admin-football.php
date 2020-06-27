<?php include "components/admin/sessionCheck.php"; ?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Football Admin Page</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/nonTablePages.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

<!-- Body -->
<body>
    <div class="container">
    
        <!-- Title -->
        <div class="row" id="title">
          <div class="col-md text-center">
            <h1>Football Admin Page</h1>
          </div>
        </div>

        <div class="row just-center-10-pad">
          <!-- Action Select -->
          <div class="form-group col-lg-3 just-center">
            <select class="selectpicker" name="action" id="action" title="Action">
              <option value="add">Add</option>
              <option value="edit">Edit</option>
              <option value="delete">Delete</option>
            </select>
          </div>

          <!-- Database Table Select -->
          <div class="form-group col-lg-3 just-center">
            <select class="selectpicker" name="action" id="dbTable" title="Database Table">
              <option value="game">Game</option>
              <option value="opponent">Opponent</option>
              <option value="season">Season</option>
              <option value="game">Combination</option>
              <option value="opponent">Helmet</option>
              <option value="season">Jersey</option>
              <option value="game">Pants</option>
            </select>
          </div>
        </div>

        <!-- Go -->
        <div class="row just-center">
          <div class="col-sm-6" id="go">
            <button type="button" class="btn btn-block submitBtn" href="admin-portal.php">Go</button>
          </div>
        </div>

        <!-- Log Out -->
        <div class="row" id="logout">
          <div class="col-md just-center">
            <a type="button" class="btn btn-outline-secondary btn-sm" href="admin-portal.php">Back to Portal</a>
            <a type="button" class="btn btn-outline-secondary btn-sm" href="components/admin/logout.php">Log Out</a>
          </div>
        </div>
    </div>
</body>
</html>

<script>
$(function() {
  $('#go').click(function() {
    var action = $('#action').val();
    var dbTable = $('#dbTable').val();
    var newURL = "admin-football/"
    newURL = newURL.concat(action);
    newURL = newURL.concat("-");
    newURL = newURL.concat(dbTable);
    newURL = newURL.concat(".php");
    if (action != "" && dbTable != ""){
      window.location.href = newURL;
    }
  });
});
</script>