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

        <!-- Football Action Type -->
        <div class="row" id="pageLinks">
          <div class="btn-group btn-group-toggle" data-toggle="buttons" id="action">
            <label class="btn active standardBtn">
              <input class="standardBtn" type="radio" name="action" value="add" autocomplete="off" checked> Add
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="action" value="edit" autocomplete="off"> Edit
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="action" value="delete" autocomplete="off"> Delete
            </label>
          </div>
        </div>

        <!-- Football DB Table -->
        <div class="row" data-toggle="buttons" id="dbTable">
          <div class="col-md-6 btn-group btn-group-toggle" id="dbTableRows">
            <label class="btn standardBtn active">
              <input class="standardBtn" type="radio" name="dbTable" value="game" autocomplete="off" checked> Game
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="dbTable" value="opponent" autocomplete="off"> Opponent
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="dbTable" value="season" autocomplete="off"> Season
            </label>
          </div>
          <div class="col-md-6 btn-group btn-group-toggle" id="dbTableRows">
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="dbTable" value="combination" autocomplete="off"> Combination
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="dbTable" value="helmet" autocomplete="off"> Helmet
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="dbTable" value="jersey" autocomplete="off"> Jersey
            </label>
            <label class="btn standardBtn">
              <input class="standardBtn" type="radio" name="dbTable" value="pants" autocomplete="off"> Pants
            </label>
          </div>
        </div>

        <!-- Go -->
        <div class="row">
          <div class="col-md" id="go">
            <button type="button" class="btn btn-block btn-outline-secondary" href="admin-portal.php">Go</button>
          </div>
        </div>

        <!-- Log Out -->
        <div class="row" id="logout">
          <div class="col-md" id="titleLogout">
            <a type="button" class="btn btn-outline-secondary btn-sm" href="admin-portal.php" id="smBtn">Back to Portal</a>
            <a type="button" class="btn btn-outline-secondary btn-sm" href="components/admin/logout.php" id="smBtn">Log Out</a>
          </div>
        </div>
    </div>
</body>
</html>

<script>

$(function() {
  $('#go').click(function() {
    var action = $('input[name=action]:checked').val();
    var dbTable = $('input[name=dbTable]:checked').val();
    var newURL = "admin-football/"
    newURL = newURL.concat(action);
    newURL = newURL.concat("-");
    newURL = newURL.concat(dbTable);
    newURL = newURL.concat(".php");
    window.location.href = newURL;
  });
});

var test = $('input[name=action]:checked').val();
  //console.log(test);

  $('#go').click(function() {
    var test = $('input[name=action]:checked').val();
    //console.log(test);
  });

  var test = $('input[name=dbTable]:checked').val();
  //console.log(test);

  $('#dbTable').change(function() {
    var test = $('input[name=dbTable]:checked').val();
    //console.log(test);
  });
</script>