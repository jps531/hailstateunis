<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="wbkOpponent" title="Opponent(s)" multiple> 
  <optgroup label="SEC">
    <option>Alabama</option>
    <option>Arkansas</option>
    <option>Auburn</option>
    <option>Florida</option>
    <option>Georgia</option>
    <option>Kentucky</option>
    <option>LSU</option>
    <option>Missouri</option>
    <option>Oklahoma</option>
    <option>Ole Miss</option>
    <option>South Carolina</option>
    <option>Tennessee</option>
    <option>Texas</option>
    <option>Texas A&M</option>
    <option>Vanderbilt</option>
  </optgroup>

  <!-- Connect to Database -->
  <?php 
    include "data/wbkDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT DISTINCT game.opponentName, opponent.conference FROM `game`
            INNER JOIN `opponent` ON game.opponentName = opponent.opponentName
            ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "SEC";
      $waitlist = array("SEC", "D-II", "D-III");
      $lastList = array("D-II", "D-III");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
      conferenceLoopFalse($waitlist, $rows);
      conferenceLoop($lastList, $rows);
    } 
    else {
      echo "0 results";
    }

    function conferenceLoopFalse($groupName, $rows) {
      for($s = 0; $s < count($rows); $s++) {  
        if (in_array($rows[$s]["conference"], $groupName) === false){
          if ($currentConference !== $rows[$s]["conference"]){
            echo "</optgroup>";
            $currentConference = $rows[$s]["conference"];
            echo "<optgroup label='" . $currentConference . "'>";
          }
          echo "<option>" . $rows[$s]["opponentName"] . "</option>";
        }
      }
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
<button class="btn clear" id="wbkOpponentClear"><i class="fas fa-times-circle"></i></button>
