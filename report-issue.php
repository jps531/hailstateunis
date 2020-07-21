<?php

// Define variables and set to empty values
$page = $category = $message = "";
$pageError = $categoryError = $messageError = "";
$errorTotal = 0;

// Get previous URL
$prevURL = $_SERVER['HTTP_REFERER'];

// Sanatize URL after failed sumbit
if($_SERVER["REQUEST_METHOD"] == "POST"){
  $prevURL = strtolower($_POST["page"]);
  if ($prevURL == "welcome"){
    $prevURL = 'welcome.php';
  }
  else if ($prevURL == "football"){
    $prevURL = 'football.php';
  }
  else if ($prevURL == "baseball"){
    $prevURL = 'baseball.php';
  }
  else if ($prevURL == "men's basketball"){
    $prevURL = 'mbasketball.php';
  }
  else if ($prevURL == "women's basketball"){
    $prevURL = 'wbasketball.php';
  }
}

// Set category default and redirect URL
if (strpos($prevURL, 'football') !== false) {
  $categoryDefault = "Football";
  $redirect = $prevURL;
}
else if (strpos($prevURL, 'baseball') !== false) {
  $categoryDefault = "Baseball";
  $redirect = $prevURL;
}
else if (strpos($prevURL, 'mbasketball') !== false) {
  $categoryDefault = "Men's Basketball";
  $redirect = $prevURL;
}
else if (strpos($prevURL, 'wbasketball') !== false) {
  $categoryDefault = "Women's Basketball";
  $redirect = $prevURL;
}
else if (strpos($prevURL, 'welcome') !== false) {
  $categoryDefault = "Welcome";
  $redirect = $prevURL;
}
else{
  $categoryDefault = "";
  $redirect = "welcome.php";
}

// Action on submit
if($_SERVER["REQUEST_METHOD"] == "POST") {

  // Get variable values
  $page = $_POST["page"];
  $category = $_POST["category"];
  $topic = $page . " Issue Report: " . $category;
  $message = $_POST["message"];

  // Check for errors
  if (!$page) {
    $pageError = "EMPTY";
    $errorTotal += 1;
  }
  if (!$category) {
    $categoryError = "EMPTY";
    $errorTotal += 1;
  }
  if (!$message) {
    $messageError = "EMPTY";
    $errorTotal += 1;
  }

  // If no errors, send email and redirect URL
  if ($errorTotal == 0) {
    mail("hailstateunis@gmail.com", $topic, $message);
    ob_start();
    header('Location: ' . $redirect);
    ob_end_flush();
    die();
   }
}
?>

<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>Report an Issue</title>
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
        <h1>Report an Issue</h1>
      </div>
    </div>

    <!-- Form -->
    <div class="row">
        <div class="col-12">
          <form method="post">

            <!-- Page Select -->
            <div class="form-group">
              <?php
                if ($pageError === "EMPTY") {
                  echo "<label for='page' class='label' style='color: #b52f2f;'>On which page is the issue occuring?&nbsp;<i><small>This field is required.</small></i></label>";
                }
                else{
                  echo "<label for='page' class='label'>On which page is the issue occuring?</label>";
                }
              ?>
              <select class="selectpicker issue" name="page" id="page" title="Select Page">
                <option value="Welcome" <?php echo (isset($_POST['page']) && $_POST['page'] === 'Welcome') ? 'selected' : ''; ?>>Welcome</option>
                <option value="Football" <?php echo (isset($_POST['page']) && $_POST['page'] === 'Football') ? 'selected' : ''; ?>>Football</option>
                <option value="Baseball" <?php echo (isset($_POST['page']) && $_POST['page'] === 'Baseball') ? 'selected' : ''; ?>>Baseball</option>
                <option value="Men's Basketball" <?php echo (isset($_POST['page']) && $_POST['page'] === "Men's Basetball") ? 'selected' : ''; ?>>Men's Basketball</option>
                <option value="Women's Basketball" <?php echo (isset($_POST['page']) && $_POST['page'] === "Women's Basetball") ? 'selected' : ''; ?>>Women's Basketball</option>
              </select>
            </div>

            <!-- Category Select -->
            <div class="form-group">
              <?php
                if ($categoryError === "EMPTY") {
                  echo "<label for='category' class='label' style='color: #b52f2f;'>What type of issue are you reporting?&nbsp;<i><small>This field is required.</small></i></label>";
                }
                else{
                  echo "<label for='category' class='label'>What type of issue are you reporting?</label>";
                }
              ?>
              <select class="selectpicker issue" name="category" id="category" title="Select Category">
                <option value="Website Issue/Bug" <?php echo (isset($_POST['category']) && $_POST['category'] === 'Website Issue/Bug') ? 'selected' : ''; ?>>Website Issue/Bug</option>
                <option value="Incorrect/Missing Table Data" <?php echo (isset($_POST['category']) && $_POST['category'] === 'Incorrect/Missing Table Data') ? 'selected' : ''; ?>>Incorrect/Missing Table Data</option>
                <option value="Other" <?php echo (isset($_POST['category']) && $_POST['category'] === 'Other') ? 'selected' : ''; ?>>Other</option>
              </select>
            </div>

            <!-- Issue Message -->
            <div class="form-group">
              <?php
                if ($messageError === "EMPTY") {
                  echo "<label for='message' class='label' style='color: #b52f2f;'>Describe the issue:&nbsp;<i><small>This field is required.</small></i></label>";
                }
                else{
                  echo "<label for='message' class='label'>Describe the issue:</label>";
                }
              ?>
              <textarea name="message" id="message" class="form-control" placeholder="Issue"><?php echo isset($_POST['message']) 
              ? htmlspecialchars($_POST['message'], ENT_QUOTES) : ''; ?></textarea>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
              <button type="submit" class="btn submitBtn">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

<!-- Script to auto load page select -->
<script>
  var categoryDefault = "<?php echo $categoryDefault; ?>";
  var categories = ["Welcome","Football","Baseball","Men's Basketball","Women's Basketball"];
  if(jQuery.inArray(categoryDefault, categories) !== -1){
    $('#page').selectpicker('val', categoryDefault);
  }
</script>
