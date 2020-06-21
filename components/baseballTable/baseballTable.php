<!-- Styling -->
<link rel="stylesheet" href="components/scss/tables.scss">

<!-- Baseball Table -->
<table class="table table-sm nowrap" id="baseballTable" style="width:95%">

  <!-- Table Head -->
  <thead>
    <tr>
      <th scope="col" data-type="number">Season</th>
      <th scope="col">Date</th>
      <th scope="col">Day</th>
      <th scope="col">Game Type</th>
      <th scope="col">Uniform</th>
      <th scope="col">W/L</th>
      <th scope="col">PF</th>
      <th scope="col">PA</th>
      <th scope="col">Article</th>
      <th scope="col">Hat</th>
      <th scope="col">Jersey</th>
      <th scope="col">Pants</th>
      <th scope="col">Jersey Name</th>
      <th scope="col">Jersey Attribute</th>
      <th scope="col">Jersey Type</th>
      <th scope="col">Doubleheader</th>
      <th scope="col">SBW</th>
      <th scope="col">Opponent</th>
    </tr>
  </thead>

  <!-- Table Body -->
  <tbody class="list" id="baseballTableBody">

  <!-- Connect to Database -->
  <?php 
  include "data/bbDatabaseConnection.php"; 

  // Perform Query
  $sql = "SELECT * FROM `game`\n"

    . "INNER JOIN `season` ON game.yr = season.yr\n"

    . "INNER JOIN `uniform` ON game.uniformID = uniform.uniformID\n"

    . "INNER JOIN `hat` ON uniform.hatID = hat.hatID\n"

    . "INNER JOIN `jersey` ON uniform.jerseyID = jersey.jerseyID\n"

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

      $SBWarray = array("2069","2070","2071","1998","1999","2000","1931","1932","1933","1934","1863","1864","1865",
                        "1794","1795","1796","1744","1745","1746","1684","1685","1686","116","117","118","48","49","50");
      if (in_array($row["gameID"], $SBWarray)){
        $SBW = "Super Bulldog Weekend SBW";
      }
      else{
        $SBW = "";
      }

      if ($row["gameID"] == "156" || $row["gameID"] == "157" || $row["gameID"] == "158"){
        $headcoach = 'Andy Cannizaro';
      }
      else{
        $headcoach = $row["head_coach"];
      }

      if ($row["location"] == 'bowl games'){
        $rowID = 'bowlGames';
      }
      else if ($row["location"] == 'sec championships'){
        $rowID = 'secChampionship';
      }
      else{
        $rowID = $row["location"];
      }

      $typeBadge = " badge-info'>";

      if (strpos($row["type"], "SEC Game") !== false){
        $typeBadge = "' style='background-color: #f4ad3d; color: #202846;'>";
      }
      else if (strpos($row["type"], "Non-Conference") !== false){
        $typeBadge = " badge-info'>";
      }
      else if (strpos($row["type"], "Midweek") !== false){
        $typeBadge = " badge-info'>";
      }
      else if (strpos($row["location"], "Starkville") !== false){
        $typeBadge = "' style='background-color: #3b0811; color: white;'>";
      }
      else if (strpos($row["location"], "Nashville") !== false){
        $typeBadge = "' style='background-color: #b8a160; color: black;'>";
      }
      else if (strpos($row["location"], "Tallahassee") !== false){
        $typeBadge = "' style='background-color: #520f20; color: #c6ab79;'>";
      }
      else if (strpos($row["location"], "BatonRouge") !== false){
        $typeBadge = "' style='background-color: #2c1359; color: #f4ac3d;'>";
      }
      else if (strpos($row["location"], "Hattiesburg") !== false){
        $typeBadge = "' style='background-color: black; color: #ffc209;'>";
      }
      else if (strpos($row["location"], "Lafayette") !== false){
        $typeBadge = "' style='background-color: #a60d1d; color: white;'>";
      }
      else if (strpos($row["location"], "Charlottesville") !== false){
        $typeBadge = "' style='background-color: #f14d24; color: #091f40;'>";
      }
      else if (strpos($row["location"], "Atlanta") !== false){
        $typeBadge = "' style='background-color: #b5a269; color: #012441;'>";
      }
      else if (strpos($row["location"], "Gainesville") !== false){
        $typeBadge = "' style='background-color: #273991; color: #ea2600;'>";
      }
      else if (strpos($row["location"], "Clemson") !== false){
        $typeBadge = "' style='background-color: #e12c08; color: white;'>";
      }
      else if (strpos($row["location"], "CoralGables") !== false){
        $typeBadge = "' style='background-color: #005030; color: #f05a00;'>";
      }
      else if (strpos($row["location"], "Fullerton") !== false){
        $typeBadge = "' style='background-color: #072348; color: #f08031;'>";
      }
      else if (strpos($row["location"], "Columbus") !== false){
        $typeBadge = "' style='background-color: #d0073b; color: white;'>";
      }
      else if (strpos($row["location"], "secT") !== false){
        $typeBadge = "' style='background-color: #202846; color: #f4ad3d;'>";
      }
      else if (strpos($row["location"], "ncaaCWS") !== false){
        $typeBadge = "' style='background-color: #0065A8; color: white;'>";
      }
      else if (strpos($row["location"], "ncaaNationalChampionshipCWS") !== false){
        $typeBadge = "' style='background-color: #7B6A48; color: white;'>";
      }

      if ($row["dh"] == "1"){
        $dh = "Adoubleheader";
      }
      else if ($row["dh"] == "2"){
        $dh = "Bdoubleheader";
      }
      else{
        $dh = "";
      }

      $month = $row["gameday"][5] . $row["gameday"][6];
      $day = $row["gameday"][8] . $row["gameday"][9];
      $year = $row["gameday"][0] . $row["gameday"][1] . $row["gameday"][2] . $row["gameday"][3];
      $gameday = $month . "-" . $day;

      echo "<tr id='" . $rowID . "'>
              <td class='season' data-sort='" . $row["gameday"] . "'>
                <span class='badge' style='background-color: #3b0811; color: white;'>" . $row["yr"] . "</span>
              </td>
              <td class='date' data-search='" . $row["gameday"] . "'>
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
              <td class='result' data-search='" . $row["result"] . " " . date("l", mktime(0,0,0,$month,$day,$year)) . "'>
                <span class='badge badge-" . $resultColor . "'>" . $row["result"] . "</span>
              </td>
              <td class='pf' data-sort='" . $row["points_for"] . "'>
                <span class='badge badge-" . $stateBadge . "'>" . $row["points_for"] . "</span>
              </td>
              <td class='pa' data-sort='" . $row["points_against"] . "'>
                <span class='badge badge-" . $opponentBadge . "'>" . $row["points_against"] . "</span>
              </td>
              <td class='article' title=\"" . $row["article_title"] . "\" data-search='" . $headcoach . "'>
              " . $row["article_link"] . "
              </td>
              <td class='hat'>" . $row["hColor"] . "</td>
              <td class='jersey'>" . $row["jColor"] . "</td>
              <td class='pants'>" . $row["pantsColor"] . "</td>
              <td class='jerseyName'>" . $row["jName"] . "</td>
              <td class='jerseyAttribute'>" . $row["jAttribute"] . "</td>
              <td class='jerseyType'>" . $row["jType"] . "</td>
              <td class='doubleheader'>" . $dh . "</td>
              <td class='sbw'>" . $SBW . "</td>
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
      <td colspan="18" id="footerRow">
        <div class="container" id="winLossTotal"></div>
      </td>
    </tr>
  </tfoot>
</table>