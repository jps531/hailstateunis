<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="rhsSelectOpponent" title="Opponent(s)" multiple> 

  <!-- Connect to Database -->
  <?php 
    include "data/rhsDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT DISTINCT game.opponentName, opponent.conference FROM `game`
            INNER JOIN `opponent` ON game.opponentName = opponent.opponentName
            ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "";
      $twoAdistrictSix = array("6-2A");
      $twoAsouth = array("5-2A", "7-2A", "8-2A");
      $otherAs = array("1A", "3A", "4A", "5A", "6A", "7A");
      $mais = array("MAIS");
      $outOfState = array("Out of State");
      $defunct = array("Defunct");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
      conferenceLoop($twoAdistrictSix, $rows);
      conferenceLoop($twoAsouth, $rows);
      conferenceLoop($twoAnorth, $rows);
      conferenceLoop($otherAs, $rows);
      conferenceLoop($mais, $rows);
      conferenceLoop($outOfState, $rows);
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
<button class="btn clear" id="rhsOpponentClear"><i class="fas fa-times-circle"></i></button>
