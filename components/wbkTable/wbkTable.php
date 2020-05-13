<!-- Styling -->
<link rel="stylesheet" href="components/scss/tables.scss">

<!-- Football Table -->
<table class="table table-sm nowrap" id="wbkTable" style="width:95%">

  <!-- Table Head -->
  <thead>
    <tr>
      <th scope="col">Season</th>
      <th scope="col">Date</th>
      <th scope="col">Day</th>
      <th scope="col">Game Type</th>
      <th scope="col">Uniform</th>
      <th scope="col">W/L</th>
      <th scope="col" data-type="number">PF</th>
      <th scope="col" data-type="number">PA</th>
      <th scope="col">Opponent</th>
    </tr>
  </thead>

  <!-- Table Body -->
  <tbody class="list" id="wbkTableBody">

  <!-- Connect to Database -->
  <?php 
  include "data/wbkDatabaseConnection.php"; 

  // Perform Query
  $sql = "SELECT * FROM `game`\n"

    . "INNER JOIN `season` ON game.yr = season.yr\n"

    . "INNER JOIN `uniform` ON game.uniformID = uniform.uniformID\n"

    . "INNER JOIN `opponent` ON game.opponentName = opponent.opponentName";

  $result = $conn->query($sql);

  // output data of each row
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

      if ($row["result"] == "Loss"){
        $resultColor = 'danger';
        $stateBadge = 'secondary';
        $opponentBadge = 'dark';
      }
      else if ($row["result"] == "Win"){
        $resultColor = 'success';
        $stateBadge = 'dark';
        $opponentBadge = 'secondary';
      }
      else{
        $resultColor = 'warning';
        $stateBadge = 'secondary';
        $opponentBadge = 'secondary';
      }

      if ($row["type"] == "SEC"){
        $typeBadge = "' style='background-color: #f4ad3d; color: #202846;'>";
      }
      else if ($row["type"] == "Non-Conference"){
        $typeBadge = " badge-info'>";
      }
      else if ($row["location"] == "secT"){
        $typeBadge = "' style='background-color: #202846; color: #f4ad3d;'>";
      }
      else if ($row["location"] == "wnit"){
        $typeBadge = "' style='background-color: #13007d; color: white;'>";
      }
      else if ($row["location"] == "ncaa"){
        $typeBadge = "' style='background-color: #0065A8; color: white;'>";
      }
      else if ($row["location"] == "ncaaSsEe"){
        $typeBadge = "' style='background-color: #d70d2a; color: white;'>";
      }
      else if ($row["location"] == "ncaaFinalFour17"){
        $typeBadge = "' style='background-color: black; color: #b2e84c;'>";
      }
      else if ($row["location"] == "ncaaFinalFour18"){
        $typeBadge = "' style='background-color: #2f1947; color: #e25d33;'>";
      }
      else if ($row["location"] == "ncaaNationalChampionship"){
        $typeBadge = "' style='background-color: #7B6A48; color: white;'>";
      }

      $month = $row["gameday"][5] . $row["gameday"][6];
      $day = $row["gameday"][8] . $row["gameday"][9];
      $year = $row["gameday"][0] . $row["gameday"][1] . $row["gameday"][2] . $row["gameday"][3];
      $gameday = $month . "-" . $day;

      echo "<tr id='" . $row["location"] . "'>
              <td class='season' data-sort='" . $row["gameday"] . "'>
                <span class='badge' style='background-color: #3b0811; color: white;'>" . $row["yr"] . "</span>
              </td>
              <td class='date' data-sort='" . $row["gameday"] . "'>
                <div class='calendarDate' id=date-" . $row["gameID"] . "' title='" . $row["gameday"] . "'>
                <span class='badge badge-secondary'>" . $gameday . "</span>
                </div>
              </td>
              <td class='day' data-search='" . date("l", mktime(0,0,0,$month,$day,$year)) . "'>
                <span id='DoW' class='badge badge-dark'>" . date("l", mktime(0,0,0,$month,$day,$year)) . "</span>
              </td>
              <td class='type' data-search='" . $row["type"] . $row["location"] . "'>
                <span class='badge" . $typeBadge . $row["type"] . "</span>
              </td>
              <td class='uniform' data-search='" . $row["uName"] . "'>
                <a href='" . $row["uImage"] . "' data-fancybox>
                  <img src='" . $row["uImage"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='result' data-search ='" . $row["head_coach"] . $row["result"] . "'>
                <span class='badge badge-" . $resultColor . "'>" . $row["result"] . "</span>
              </td>
              <td class='pf' data-sort='" . $row["points_for"] . "'>
                <span class='badge badge-" . $stateBadge . "'>" . $row["points_for"] . "</span>
              </td>
              <td class='pa' data-sort='" . $row["points_against"] . "'>
                <span class='badge badge-" . $opponentBadge . "'>" . $row["points_against"] . "</span>
              </td>
              <td class='opponent' data-search='" . $row["opponentName"] . "'>
                <span class='badge' style='background-color: " . $row["colorA"] . "; color: "  . $row["colorB"] .  ";'>" . $row["opponentName"] . "</span>
              </td>
            </tr>";
    }
  }
  else {
    echo "0 results";
  }
  $conn->close();

  ?>

  <!-- Table Footer -->
  </tbody>
  <tfoot>
    <tr>
      <td colspan="9" id="footerRow">
        <div class="container" id="winLossTotal"></div>
      </td>
    </tr>
  </tfoot>
</table>