<!-- Styling -->
<link rel="stylesheet" href="components/scss/tables.scss">

<!-- Football Table -->
<table class="table table-sm nowrap" id="mbkTable" style="width:95%">

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
      <th scope="col">Uniform Name</th>
    </tr>
  </thead>

  <!-- Table Body -->
  <tbody class="list" id="mbkTableBody">

  <!-- Connect to Database -->
  <?php 
  include "data/mbkDatabaseConnection.php"; 

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
      else if ($row["location"] == "nit" || $row["location"] == "nitSemis"){
        $typeBadge = "' style='background-color: #812990; color: #f7931e;'>";
      }
      else if ($row["location"] == "ncaa"){
        $typeBadge = "' style='background-color: #0065A8; color: white;'>";
      }
      else if ($row["location"] == "ncaaSsEe"){
        $typeBadge = "' style='background-color: #d70d2a; color: white;'>";
      }
      else if ($row["location"] == "ncaaFinalFour96"){
        $typeBadge = "' style='background-color: #3eb3af; color: white;'>";
      }

      $month = $row["gameday"][5] . $row["gameday"][6];
      $day = $row["gameday"][8] . $row["gameday"][9];
      $year = $row["gameday"][0] . $row["gameday"][1] . $row["gameday"][2] . $row["gameday"][3];
      $gameday = $month . "-" . $day;

      echo "<tr role='row' id='" . $row["location"] . "'>
              <td class='season' role='cell' data-sort='" . $row["gameday"] . "'>
                <span class='badge' style='background-color: #431724; color: white;'>" . $row["yr"] . "</span>
              </td>
              <td class='date' role='cell' data-sort='" . $row["gameday"] . "'>
                <div class='calendarDate' id=date-" . $row["gameID"] . "' title='" . $row["gameday"] . "'>
                <span class='badge badge-secondary'>" . $gameday . "</span>
                </div>
              </td>
              <td class='day' role='cell' data-search='" . date("l", mktime(0,0,0,$month,$day,$year)) . "'>
                <span id='DoW' class='badge badge-dark'>" . date("l", mktime(0,0,0,$month,$day,$year)) . "</span>
              </td>
              <td class='type' role='cell' data-search='" . $row["type"] . $row["location"] . "'>
                <span class='badge" . $typeBadge . $row["type"] . "</span>
              </td>
              <td class='uniform' role='cell' data-search='" . $row["uName"] . "'>
                <a href='" . $row["uImage"] . "' data-fancybox>
                  <img src='" . $row["uImage"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='result' role='cell' data-search ='" . $row["head_coach"] . $row["result"] . "'>
                <span class='badge badge-" . $resultColor . "'>" . $row["result"] . "</span>
              </td>
              <td class='pf' role='cell' data-sort='" . $row["points_for"] . "'>
                <span class='badge badge-" . $stateBadge . "'>" . $row["points_for"] . "</span>
              </td>
              <td class='pa' role='cell' data-sort='" . $row["points_against"] . "'>
                <span class='badge badge-" . $opponentBadge . "'>" . $row["points_against"] . "</span>
              </td>
              <td class='opponent' role='cell'" . 'data-search="' . $row["opponentName"] . '">' . "
                <span class='badge' style='background-color: " . $row["colorA"] . "; color: "  . $row["colorB"] .  ";'>" . $row["opponentName"] . "</span>
              </td>
              <td class='uniformName'>" . $row["uName"] . "</td>
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
