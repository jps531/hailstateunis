<!-- Opponent Select -->
<select class="selectpicker" data-live-search="true" id="selectOpponent" title="Opponent(s)" multiple> 
  <optgroup label="SEC West">
    <option>Alabama</option>
    <option>Arkansas</option>
    <option>Auburn</option>
    <option>LSU</option>
    <option>Ole Miss</option>
    <option>Texas A&M</option>
  </optgroup>
  <optgroup label="SEC East">
    <option>Florida</option>
    <option>Georgia</option>
    <option>Kentucky</option>
    <option>Missouri</option>
    <option>South Carolina</option>
    <option>Tennessee</option>
    <option>Vanderbilt</option>
  </optgroup>

  <!-- Connect to Database -->
  <?php 
    include "data/fbDatabaseConnection.php"; 

    // Perform Query
    $sql = "SELECT * FROM `opponent` ORDER BY `opponent`.`conference` ASC, `opponent`.`opponentName` ASC";
    $result = $conn->query($sql);

    // output data of each row
    if ($result->num_rows > 0) {
      $currentConference = "SEC";
      $power5 = array("ACC", "Big 12", "Big Ten", "Pac 12");
      $independent = array("Independent");
      $group5 = array("American", "Conference USA", "MAC", "Mountian West", "Sun Belt");
      $fcs = array("FCS");
      $rows = array();
      while($row = $result->fetch_assoc()) {
        array_push($rows, $row);
      }
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