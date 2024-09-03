<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="selectOpponent" title="Opponent(s)" multiple> 

  <!-- Connect to Database -->
  <?php 
    include "data/fbDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT DISTINCT game.opponentName, opponent.conference FROM `game`
            INNER JOIN `opponent` ON game.opponentName = opponent.opponentName
            ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "";
      $sec = array("SEC");
      $power5 = array("ACC", "Big 12", "Big Ten", "Pac 12");
      $independent = array("Independent");
      $group5 = array("American", "Conference USA", "MAC", "Mountian West", "Sun Belt");
      $fcs = array("FCS");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
      conferenceLoop($sec, $rows);
      conferenceLoop($power5, $rows);
      conferenceLoop($independent, $rows);
      conferenceLoop($group5, $rows);
      conferenceLoop($fcs, $rows);
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
<button class="btn clear" id="opponentClear"><i class="fas fa-times-circle"></i></button>
