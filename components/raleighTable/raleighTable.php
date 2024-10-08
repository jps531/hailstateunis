<!-- Styling -->
<link rel="stylesheet" href="components/scss/tables.scss">

<!-- Football Table -->
<table class="table table-sm nowrap" id="raleighTable" style="width:95%">

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
  <tbody class="list" id="raleighTableBody">

  <!-- Connect to Database -->
  <?php 
  include "data/rhsDatabaseConnection.php"; 

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

      $homecomingArray = array("174", "155","142","127","123","106","98","85","73","59","45","32","21","11");
      if (in_array($row["gameID"], $homecomingArray)){
        $homecoming = " homecoming";
      }
      else{
        $homecoming = "";
      }

      $month = $row["gameday"][5] . $row["gameday"][6];
      $day = $row["gameday"][8] . $row["gameday"][9];
      $year = $row["gameday"][0] . $row["gameday"][1] . $row["gameday"][2] . $row["gameday"][3];
      $gameday = $month . "-" . $day;

      echo "<tr role='row' id='" . $row["location"] . "'>
              <td class='season' role='cell' data-sort='" . $row["gameday"] . "'>
                <span class='badge' style='background-color: #431724; color: white;'>" . $row["yr"] . "</span>
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
              <td class='hHelmet' role='cell' data-search='" . $row["location"] . "'>
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
              <td class='result' role='cell' data-search='" . $row["result"] . " " . date("l", mktime(0,0,0,$month,$day,$year)) . $homecoming . "'>
                <span class='badge badge-" . $resultColor . "'>" . $row["result"] . "</span>
              </td>
              <td class='pf' role='cell' data-sort='" . $row["points_for"] . "'>
                <span class='badge badge-" . $stateBadge . "'>" . $row["points_for"] . "</span>
              </td>
              <td class='pa' role='cell' data-sort='" . $row["points_against"] . "'>
                <span class='badge badge-" . $opponentBadge . "'>" . $row["points_against"] . "</span>
              </td>
              <td class='article' title=\"" . $row["article_title"] . "\" data-search='" . $row["head_coach"] . "'>
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
