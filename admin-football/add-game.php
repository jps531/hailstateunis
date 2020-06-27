<?php

include "../components/admin/sessionCheck.php";
include "../data/fbDatabaseConnection.php";

// Define variables and set to empty values
$year = $date = $opp = $combo = $result = $pa = $pf = $location = $aHelmet = $hHelmet = $aTitle = $aLink = "";
$yearError = $dateError = $oppError = $comboError = $locationError = $aHelmetError = $hHelmetError = "";
$errorTotal = 0;

// Action on submit
if($_SERVER["REQUEST_METHOD"] == "POST") {

  // Get variable values
  $year = $_POST["year"];
  $date = $_POST["date"];
  $opp = $_POST["opp"];
  $combo = $_POST["comboID"];
  $result = $_POST["result"];
  $pf = $_POST["pf"];
  $pa = $_POST["pa"];
  $location = $_POST["location"];
  $aHelmet = $_POST["aHelmet"];
  $hHelmet = $_POST["hHelmet"];
  $aTitle = $_POST["aTitle"];
  $aLink = $_POST["aLink"];

  // Check for errors
  if (!$year) {
    $yearError = "year, ";
    $errorTotal += 1;
  }
  if (!$date) {
    $dateError = "date, ";
    $errorTotal += 1;
  }
  if (!$opp) {
    $oppError = "opponent, ";
    $errorTotal += 1;
  }
  if (!$combo) {
    $comboError = "comboID, ";
    $errorTotal += 1;
  }
  if (!$location) {
    $locationError = "locationError, ";
    $errorTotal += 1;
  }
  if (!$aHelmet) {
    $aHelmetError = "aHelmet, ";
    $errorTotal += 1;
  }
  if (!$hHelmet) {
    $hHelmetError = "hHelmet, ";
    $errorTotal += 1;
  }

  // If no errors, create SQL query
  if ($errorTotal == 0) {
    $sql = "INSERT INTO `game` VALUES (NULL, '" . $year . "', '" . $date . "', '" . $opp . "', '" . $result . "', '" . $pf . "', '" . $pa . "', '" . $location . "', '" . 
                                      $combo . "', '" . $aHelmet . "', '" . $hHelmet . "', '" . $aTitle . "', '" . $aLink . "') ";
    $result = $conn->query($sql);
    $sqlError = "Error description: " . $conn -> error;

    // If no SQL error, re-direct back to admin page
    if ($result){
      ob_start();
      header('Location: ../admin-football.php');
      ob_end_flush();
      die();
    }

    // If SQL error, display it and remain on the currrent page
    else{
      $errorTotal += 1;
      $errorMessage = $sqlError;
    }
  }

  // If errors, display them and remain on the current page
  else{
    $errorMessage = "ERROR: Missing " . $yearError . $dateError . $oppError . $comboError . $locationError . $aHelmetError . $hHelmetError;
    $errorMessage = rtrim($errorMessage, ", ");
  }
}
?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Add Football Game</title>
    <?php include "../components/headings/headDownstream.php"; ?>
    <link rel="stylesheet" href="../components/scss/nonTablePages.scss">
    <?php include "../components/headings/navbarDownstream.php"; ?>
  </head>

  <!-- Body -->
  <body>
    <div class="container">
    
        <!-- Title -->
        <div class="row" id="title">
          <div class="col-md text-center">
            <h1>Add Football Game</h1>
          </div>
        </div>

        <!-- Error Message -->
        <?php
          if ($errorTotal != 0) {
              echo "<div class='alert alert-danger' role='alert' id='errorAlert'>";
                echo $errorMessage;
              echo "</div>";
          }
        ?>

        <!-- Begin Form -->
        <form method="post">
          <div class="container" id="itemForm">

            <!-- Form Row 1 -->
            <div class="row inputRow">

              <!-- Year Select -->
              <div class="form-group col-xl-3 just-center">
                <select class="selectpicker" name="year" title="Select Year">
                  <?php
                    // Pull all the classes from the database
                    $sql = "SELECT `yr`, `head_coach` FROM `season` ORDER BY `season`.`yr` DESC";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                      while($row = $result->fetch_assoc()) {
                        ?>
                        <option value="<?php echo $row['yr'];?>" <?php echo (isset($_POST['year']) && $_POST['year'] === $row['yr']) ? 'selected' : ''; ?>>
                        <?php echo $row['yr'] . ' ' . $row['head_coach'];?></option>
                        <?php
                      }
                    }
                  ?>
                </select>
              </div>

              <!-- Date Picker -->
              <div class="form-group col-xl-3 just-center">
                <input data-date-format="yyyy-mm-dd" name="date" id="datepicker" class="form-control item"
                      value="<?php echo isset($_POST['date']) ? htmlspecialchars($_POST['date'], ENT_QUOTES) : ''; ?>">
              </div>

              <!-- Opponent Select -->
              <div class="form-group col-xl-3 just-center">
                <select class="selectpicker" name="opp" title="Select Opponent" data-live-search="true">
                  <?php
                    // Pull all the classes from the database
                    $sql = "SELECT `opponentName` FROM `opponent` ORDER BY `opponent`.`opponentName` ASC";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                      while($row = $result->fetch_assoc()) {
                        ?>
                        <option value="<?php echo $row['opponentName'];?>" <?php echo (isset($_POST['opp']) && $_POST['opp'] === $row['opponentName']) ? 'selected' : ''; ?>>
                        <?php echo $row['opponentName'];?></option>
                        <?php
                      }
                    }
                  ?>
                </select>
              </div>

              <!-- Combo ID -->
              <div class="form-group col-xl-3 just-center">
                <input name="comboID" class="form-control item" placeholder="comboID"
                      value="<?php echo isset($_POST['comboID']) ? htmlspecialchars($_POST['comboID'], ENT_QUOTES) : ''; ?>">
              </div>
            </div>

            <!-- Form Row 2 -->
            <div class="row inputRow">

              <!-- Result Select -->
              <div class="form-group col-lg-3 just-center">
                <select class="selectpicker" name="result" title="Result">
                  <option value="Win" <?php echo (isset($_POST['result']) && $_POST['result'] === 'Win') ? 'selected' : ''; ?>>Win</option>
                  <option value="Loss" <?php echo (isset($_POST['result']) && $_POST['result'] === 'Loss') ? 'selected' : ''; ?>>Loss</option>
                  <option value="TIE" <?php echo (isset($_POST['result']) && $_POST['result'] === 'Tie') ? 'selected' : ''; ?>>Tie</option>
                  <option value="" <?php echo (isset($_POST['result']) && $_POST['result'] === '') ? 'selected' : ''; ?>>N/A</option>
                </select>
              </div>

              <!-- Points For -->
              <div class="form-group col-lg-3 just-center">
                <input name="pf" class="form-control item" placeholder="Points For"
                      value="<?php echo isset($_POST['pf']) ? htmlspecialchars($_POST['pf'], ENT_QUOTES) : ''; ?>">
              </div>

              <!-- Points Against -->
              <div class="form-group col-lg-3 just-center">
                <input name="pa" class="form-control item" placeholder="Points Against"
                      value="<?php echo isset($_POST['pa']) ? htmlspecialchars($_POST['pa'], ENT_QUOTES) : ''; ?>">
              </div>

              <!-- Location -->
              <div class="form-group col-lg-3 just-center">
                <input name="location" class="form-control item" placeholder="Location"
                      value="<?php echo isset($_POST['location']) ? htmlspecialchars($_POST['location'], ENT_QUOTES) : ''; ?>">
              </div>
            </div>

            <!-- Form Row 3 -->
            <div class="row inputRow">

              <!-- Away Helmet -->
              <div class="form-group col-lg-3 just-center">
                <input name="aHelmet" class="form-control item" placeholder="Away Helmet"
                      value="<?php echo isset($_POST['aHelmet']) ? htmlspecialchars($_POST['aHelmet'], ENT_QUOTES) : ''; ?>">
              </div>

              <!-- Home Helmet -->
              <div class="form-group col-lg-3 just-center">
                <input name="hHelmet" class="form-control item" placeholder="Home Helmet"
                      value="<?php echo isset($_POST['hHelmet']) ? htmlspecialchars($_POST['hHelmet'], ENT_QUOTES) : ''; ?>">
              </div>

              <!-- Article Title -->
              <div class="form-group col-lg-3 just-center">
                <input name="aTitle" class="form-control item" placeholder="Article Title"
                      value="<?php echo isset($_POST['aTitle']) ? htmlspecialchars($_POST['aTitle'], ENT_QUOTES) : ''; ?>">
              </div>

              <!-- Article Link -->
              <div class="form-group col-lg-3 just-center">
                <input name="aLink" class="form-control item" placeholder="Article Link"
                      value="<?php echo isset($_POST['aLink']) ? htmlspecialchars($_POST['aLink'], ENT_QUOTES) : ''; ?>">
              </div>
            </div>
          </div>

          <!-- Go -->
          <div class="row just-center">
            <div class="col-sm-6" id="go">
              <button type="submit" class="btn btn-block submitBtn">Go</button>
            </div>
          </div>
        </form>

        <!-- Log Out -->
        <div class="row" id="logout">
          <div class="col-md just-center">
            <a type="button" class="btn btn-outline-secondary btn-sm" href="../admin-portal.php">Back to Portal</a>
            <a type="button" class="btn btn-outline-secondary btn-sm" href="../admin-football.php">Back to Football</a>
            <a type="button" class="btn btn-outline-secondary btn-sm" href="../components/admin/logout.php">Log Out</a>
          </div>
        </div>
    </div>
  </body>
</html>

<!-- JS for Datepicker -->
<script>
    $('#datepicker').datepicker({
        weekStart: 0,
        autoclose: true,
        todayHighlight: true,
    });
    if(!$('#datepicker').val()){
      $('#datepicker').datepicker("setDate", new Date());
    }
</script>