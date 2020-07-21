<?php

// Get previous URL
if(isset($_SERVER['HTTP_REFERER'])) {
  $prevURL = $_SERVER['HTTP_REFERER']; 
}

// If no previous URL, redirect to welcome
else{
  ob_start();
  header('Location: welcome.php');
  ob_end_flush();
  die();
}

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
}
else if (strpos($prevURL, 'baseball') !== false) {
  $categoryDefault = "Baseball";
}
else if (strpos($prevURL, 'mbasketball') !== false) {
  $categoryDefault = "Men's Basketball";
}
else if (strpos($prevURL, 'wbasketball') !== false) {
  $categoryDefault = "Women's Basketball";
}
else if (strpos($prevURL, 'welcome') !== false) {
  $categoryDefault = "Welcome";
}
else{
  $categoryDefault = "";
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
          <form method="post" action="https://formspree.io/mpzykwyb">

            <!-- Page Select -->
            <div class="form-group">
              <label for='page' class='label'>On which page is the issue occuring?</label>
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
              <label for='category' class='label'>What type of issue are you reporting?</label>
              <select class="selectpicker issue" name="category" id="category" title="Select Category">
                <option value="Website Issue/Bug" <?php echo (isset($_POST['category']) && $_POST['category'] === 'Website Issue/Bug') ? 'selected' : ''; ?>>Website Issue/Bug</option>
                <option value="Incorrect/Missing Table Data" <?php echo (isset($_POST['category']) && $_POST['category'] === 'Incorrect/Missing Table Data') ? 'selected' : ''; ?>>Incorrect/Missing Table Data</option>
                <option value="Other" <?php echo (isset($_POST['category']) && $_POST['category'] === 'Other') ? 'selected' : ''; ?>>Other</option>
              </select>
            </div>

            <!-- Issue Message -->
            <div class="form-group">
              <label for='message' class='label'>Describe the issue:</label>
              <textarea name="message" id="message" class="form-control" placeholder="Issue"><?php echo isset($_POST['message']) 
              ? htmlspecialchars($_POST['message'], ENT_QUOTES) : ''; ?></textarea>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
              <button type="submit" class="btn submitBtn" disabled="disabled" id="reportIssueSubmit">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

<!-- Script -->
<script>

  // Auto load page select
  var categoryDefault = "<?php echo $categoryDefault; ?>";
  var categories = ["Welcome","Football","Baseball","Men's Basketball","Women's Basketball"];
  if(jQuery.inArray(categoryDefault, categories) !== -1){
    $('#page').selectpicker('val', categoryDefault);
  }

  // Enable / disable submit button
  $('#page, #category, #message').bind('keyup', function() {
    if(allFilled()){
      $('#reportIssueSubmit').removeAttr('disabled');
    }
    else{
      $('#reportIssueSubmit').attr('disabled', 'disabled');
    }
  });

  // Function that determines whether all form elements are filled
  function allFilled() {
    var filled = true;
    $('body select').each(function() {
        if($(this).val() == '') filled = false;
    });
    $('body textarea').each(function() {
        if($(this).val() == '') filled = false;
    });
    return filled;
  }
</script>
