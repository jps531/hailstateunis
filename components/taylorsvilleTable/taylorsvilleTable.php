<!-- Styling -->
<link rel="stylesheet" href="components/scss/taylorsvilleTable.scss">

<!-- Football Table -->
<table class="table table-sm nowrap" id="taylorsvilleTable" style="width:95%">

  <!-- Table Head -->
  <thead>
    <tr>
      <th scope="col" data-type="number">Season</th>
      <th scope="col">Date</th>
      <th scope="col">Away</th>
      <th scope="col">Home</th>
      <th scope="col">Combination</th>
      <th scope="col">Helmet</th>
      <th scope="col">Jersey</th>
      <th scope="col">Pants</th>
      <th scope="col">W/L</th>
      <th scope="col">PF</th>
      <th scope="col">PA</th>
      <th scope="col">Article</th>
      <th scope="col">Opponent</th>
    </tr>
  </thead>

  <!-- Table Body -->
  <tbody class="list" id="taylorsvilleTableBody">

  <!-- Connect to Database -->
  <?php 
  include "data/ttDatabaseConnection.php"; 

  // Perform Query
  $sql = "SELECT * FROM `game`\n"

    . "INNER JOIN `season` ON game.yr = season.yr\n"

    . "INNER JOIN `combination` ON game.comboID = combination.comboID\n"

    . "INNER JOIN `helmet` ON combination.helmetID = helmet.helmetID\n"

    . "INNER JOIN `jersey` ON combination.jerseyID = jersey.jerseyID\n"

    . "INNER JOIN `pants` ON combination.pantsID = pants.pantsID\n"

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

      $headcoach = $row["head_coach"];
      $postseason = $row["location"];

      $month = $row["gameday"][5] . $row["gameday"][6];
      $day = $row["gameday"][8] . $row["gameday"][9];
      $year = $row["gameday"][0] . $row["gameday"][1] . $row["gameday"][2] . $row["gameday"][3];
      $gameday = $month . "-" . $day;

      echo "<tr id='" . $row["location"] . "'>
              <td class='season' data-sort='" . $row["gameday"] . "'>
                <span class='badge' style='background-color: #068b48; color: white;'>" . $row["yr"] . "</span>
              </td>
              <td class='date' data-search='" . $row["gameday"] . "'>
                <div class='calendarDate' id=date-" . $row["gameID"] . "' title='" . $row["gameday"] . "'>
                <span class='badge badge-secondary'>" . $gameday . "</span>
                </div>
              </td>
              <td class='aHelmet' data-search='" . $row["conference"] . "'>
                <a href='" . $row["away_helmet"] . "' data-fancybox>
                  <img src='" . $row["away_helmet"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='hHelmet' data-search='" . $row["location"] . "'>
                <a href='" . $row["home_helmet"] . "' data-fancybox>
                  <img src='" . $row["home_helmet"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='combination' data-search='" . $row["cName"] . "'>
                <a href='" . $row["cImage"] . "' data-fancybox>
                  <img src='" . $row["cImage"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='helmet' data-search='" . $row["hName"] . "'>
                <a href='" . $row["hImage"] . "' data-fancybox>
                  <img src='" . $row["hImage"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='jersey' data-search='" . $row["jName"] . "'>
                <a href='" . $row["jImage"] . "' data-fancybox>
                  <img src='" . $row["jImage"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='pants' data-search='" . $row["pName"] . "'>
                <a href='" . $row["pImage"] . "' data-fancybox>
                  <img src='" . $row["pImage"] . "' height='80' alt='' class='d-inline-block align-middle mr-2'
                </a>
              </td>
              <td class='result' data-search='" . $row["result"] . " " . date("l", mktime(0,0,0,$month,$day,$year)) . "'>
                <span class='badge badge-" . $resultColor . "'>" . $row["result"] . "</span>
              </td>
              <td class='pf' data-sort='" . $row["points_for"] . "'>
                <span class='badge badge-" . $stateBadge . "'>" . $row["points_for"] . "</span>
              </td>
              <td class='pa' data-sort='" . $row["points_against"] . "'>
                <span class='badge badge-" . $opponentBadge . "'>" . $row["points_against"] . "</span>
              </td>
              <td class='article' title=\"" . $row["article_title"] . "\" data-search='" . $row["head_coach"] . "'>
              " . $row["article_link"] . "
              </td>
              <td class='opponent'" . 'data-search="' . $row["opponentName"] . '">' . "
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
      <td colspan="13" id="footerRow">
        <div class="container" id="winLossTotal"></div>
      </td>
    </tr>
  </tfoot>
</table>