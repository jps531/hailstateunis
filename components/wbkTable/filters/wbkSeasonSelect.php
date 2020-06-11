<!-- Season Select -->
<select class="selectpicker" data-live-search="true" title="Season(s)" id="wbkSelectYear" multiple>

<!-- Connect to Database -->
<?php 
  include "data/wbkDatabaseConnection.php"; 

  // Perform Query
  $sql = "SELECT yr, head_coach FROM `season` ORDER BY RIGHT(yr, 4) DESC";
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
<button class="btn clear" id="wbkSeasonClear"><i class="fas fa-times-circle"></i></button>