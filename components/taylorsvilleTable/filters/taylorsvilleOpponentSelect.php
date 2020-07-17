<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="ttSelectOpponent" title="Opponent(s)" multiple> 

  <!-- Connect to Database -->
  <?php 
    include "data/ttDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT * FROM `opponent` ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "";
      $twoAsouth = array("5-2A", "6-2A", "7-2A", "8-2A");
      $twoAnorth = array("2A North");
      $otherAs = array("1A", "3A", "4A", "5A", "6A");
      $mais = array("MAIS");
      $defunct = array("Defunct");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
      conferenceLoop($twoAsouth, $rows);
      conferenceLoop($twoAnorth, $rows);
      conferenceLoop($otherAs, $rows);
      conferenceLoop($mais, $rows);
      conferenceLoop($defunct, $rows);
    } 
    else {
      echo "0 results";
    }

    function conferenceLoop($groupName, $rows) {
      for($s = 0; $s < count($rows); $s++) {  
        if (in_array($rows[$s]["conference"], $groupName)){
          if ($currentConference !== $rows[$s]["conference"]){
            echo "</optgroup>";
            $currentConference = $rows[$s]["conference"];
            echo "<optgroup label='" . $currentConference . "'>";
          }
          echo "<option>" . $rows[$s]["opponentName"] . "</option>";
        }
      }
    }

    $conn->close();
  ?>

</select>
<button class="btn clear" id="ttOpponentClear"><i class="fas fa-times-circle"></i></button>
