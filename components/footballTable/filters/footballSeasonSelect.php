<!-- Season Select -->
<select class="selectpicker" data-live-search="true" title="Season(s)" id="selectYear" multiple>

 <!-- Connect to Database -->
<?php 
  include "data/fbDatabaseConnection.php"; 

  // Perform Query
  $sql = "SELECT * FROM `season` ORDER BY yr DESC";
  $result = $conn->query($sql);

  // output data of each row
  if ($result->num_rows > 0) {
    $currentHC = "";
    while($row = $result->fetch_assoc()) {
      if ($currentHC !== $row["head_coach"]){
        if ($currentHC){
          echo "</optgroup>";
        }
        $currentHC = $row["head_coach"];
        echo "<optgroup label='" . $currentHC . "'>";
      }
      echo "<option>" . $row["yr"] . "</option>";
    }
  } 
  else {
    echo "0 results";
  }

  $conn->close();
?>

</select>
<button class="btn" id="seasonClear"><i class="fas fa-times-circle"></i></button>