<!-- Styling -->
<link rel="stylesheet" href="components/scss/southernmissTable.scss">

<!-- Football Table -->
<table class="table table-sm nowrap" id="southernmissTable" style="width:95%">

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
  <tbody class="list" id="southernmissTableBody">

  <!-- Connect to Database -->
  <?php 
  include "data/usmDatabaseConnection.php"; 

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

      if ($row["gameID"] == "1"){
        $headcoach = 'Jay Hopson';
      }
      else if ($row["gameID"] == "2" || $row["gameID"] == "3" || $row["gameID"] == "4"){
        $headcoach = 'Scotty Walden';
      }
      else if ($row["gameID"] == "272" || $row["gameID"] == "273" || $row["gameID"] == "274" || $row["gameID"] == "275" || $row["gameID"] == "276" || $row["gameID"] == "277"){
        $headcoach = 'Reed Stringer';
      }
      else{
        $headcoach = $row["head_coach"];
      }

      if (strpos($row["location"], "Bowl") !== false){
        $postseason = "bowl games";
      }
      else if (strpos($row["location"], "cusa") !== false){
        $postseason = "cusa championships";
      }
      else{
        $postseason = $row["location"];
      }

      $month = $row["gameday"][5] . $row["gameday"][6];
      $day = $row["gameday"][8] . $row["gameday"][9];
      $year = $row["gameday"][0] . $row["gameday"][1] . $row["gameday"][2] . $row["gameday"][3];
      $gameday = $month . "-" . $day;

      echo "<tr role='row' id='" . $row["location"] . "'>
              <td class='season' role='cell' data-sort='" . $row["gameday"] . "'>
                <span class='badge' style='background-color: #ffc209; color: black;'>" . $row["yr"] . "</span>
              </td>
              <td class='date' role='cell' data-search='" . $row["gameday"] . "'>
                <div class='calendarDate' id=date-" . $row["gameID"] . "' title='" . $row["gameday"] . "'>
                <span class='badge badge-secondary'>" . $gameday . "</span>
                </div>
              </td>
              <td class='aHelmet' role='cell' data-search='" . $row["conference"] . "'>
                <a href='" . $row["away_helmet"] . "' data-fancybox>
                  <img src='" . $row["away_helmet"] . "' loading='lazy' height='80' alt='' class='d-inline-block align-middle mr-2 lateLoad'
                </a>
              </td>
              <td class='hHelmet' role='cell' data-search='" . $postseason . "'>
                <a href='" . $row["home_helmet"] . "' data-fancybox>
                  <img src='" . $row["home_helmet"] . "' loading='lazy' height='80' alt='' class='d-inline-block align-middle mr-2 lateLoad'
                </a>
              </td>
              <td class='combination' role='cell' data-search='" . $row["cName"] . "'>
                <a href='" . $row["cImage"] . "' data-fancybox>
                  <img src='" . $row["cThumb"] . "' data-src='" . $row["cImage"] . "' loading='eager' height='80' alt='' class='d-inline-block align-middle mr-2 earlyLoad'
                </a>
              </td>
              <td class='helmet' role='cell' data-search='" . $row["hName"] . "'>
                <a href='" . $row["hImage"] . "' data-fancybox>
                  <img src='" . $row["hImage"] . "' loading='lazy' height='80' alt='' class='d-inline-block align-middle mr-2 lateLoad'
                </a>
              </td>
              <td class='jersey' role='cell' data-search='" . $row["jName"] . "'>
                <a href='" . $row["jImage"] . "' data-fancybox>
                  <img src='" . $row["jImage"] . "' loading='lazy' height='80' alt='' class='d-inline-block align-middle mr-2 lateLoad'
                </a>
              </td>
              <td class='pants' role='cell' data-search='" . $row["pName"] . "'>
                <a href='" . $row["pImage"] . "' data-fancybox>
                  <img src='" . $row["pImage"] . "' loading='lazy' height='80' alt='' class='d-inline-block align-middle mr-2 lateLoad'
                </a>
              </td>
              <td class='result' role='cell' data-search='" . $row["result"] . " " . date("l", mktime(0,0,0,$month,$day,$year)) . "'>
                <span class='badge badge-" . $resultColor . "'>" . $row["result"] . "</span>
              </td>
              <td class='pf' role='cell' data-sort='" . $row["points_for"] . "'>
                <span class='badge badge-" . $stateBadge . "'>" . $row["points_for"] . "</span>
              </td>
              <td class='pa' role='cell' data-sort='" . $row["points_against"] . "'>
                <span class='badge badge-" . $opponentBadge . "'>" . $row["points_against"] . "</span>
              </td>
              <td class='article' title=\"" . $row["article_title"] . "\" data-search='" . $headcoach . "'>
              " . $row["article_link"] . "
              </td>
              <td class='opponent' role='cell'" . 'data-search="' . $row["opponentName"] . '">' . "
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
