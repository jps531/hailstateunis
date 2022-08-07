<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="usmSelectOpponent" title="Opponent(s)" multiple> 

  <!-- Connect to Database -->
  <?php 
    include "data/usmDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT DISTINCT game.opponentName, opponent.conference FROM `game`
            INNER JOIN `opponent` ON game.opponentName = opponent.opponentName
            ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "";
      $sunBelt = array("Sun Belt");
      $conferences = array("ACC", "American", "Big 12", "Big Ten", "Conference USA", "Independent", "MAC", "Mountian West", "Pac 12", "SEC");
      $fcs = array("FCS");
      $dII = array("D-II");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
      conferenceLoop($sunBelt, $rows);
      conferenceLoop($conferences, $rows);
      conferenceLoop($fcs, $rows);
      conferenceLoop($dII, $rows);
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
<button class="btn clear" id="usmOpponentClear"><i class="fas fa-times-circle"></i></button>
