<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="ttSelectOpponent" title="Opponent(s)" multiple> 

  <!-- Connect to Database -->
  <?php 
    include "data/ttDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT DISTINCT game.opponentName, opponent.conference FROM `game`
            INNER JOIN `opponent` ON game.opponentName = opponent.opponentName
            ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "";
      $oneAdistrictSeven = array("7-1A");
      $oneAsouth = array("5-1A", "6-1A", "8-1A");
      $oneAnorth = array("1A North");
      $twoAsouth = array("2A South");
      $twoAnorth = array("2A North");
      $otherAs = array("3A", "4A", "5A", "6A", "7A");
      $mais = array("MAIS");
      $defunct = array("Defunct");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
      conferenceLoop($oneAdistrictSeven, $rows);
      conferenceLoop($oneAsouth, $rows);
      conferenceLoop($oneAnorth, $rows);
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
