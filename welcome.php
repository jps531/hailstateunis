<!doctype html>
<html lang="en">

  <!-- Head/Navbar/Styles -->
  <head>
    <title>HailStateUnis Database</title>
    <?php include "components/headings/head.php"; ?>
    <link rel="stylesheet" href="components/scss/nonTablePages.scss">
    <?php include "components/headings/navbar.php"; ?>
  </head>

  <!-- Body/Filters/Table -->
  <body>
    <div class="container">

      <!-- Title -->
      <div class="row titleTop">
        <div class="col-md text-center">
          <img src="https://i.imgur.com/YLQdNI3.png" alt="Welcome to the HailStateUnis Database" class="titleImage" width="500">
        </div>
      </div>

      <!-- Page Links -->
      <div class="row pageLinks">
        <div class="col-md-3 just-center-10-pad">
          <a role="button" id="footballBtn" class="btn btn-lg btn-block standardBtn" href="football.php">Football</a>
        </div>
        <div class="col-md-3 just-center-10-pad">
          <a role="button" id="baseballBtn" class="btn btn-lg btn-block standardBtn" href="baseball.php">Baseball</a>
        </div>
      </div>
      <div class="row pageLinks">
        <div class="col-md-3 just-center-10-pad">
          <a role="button" id="mbkBtn" class="btn btn-lg btn-block standardBtn" href="mbasketball.php">Men's Basketball</a>
        </div>
        <div class="col-md-3 just-center-10-pad">
          <a role="button" id="wbkBtn" class="btn btn-lg btn-block standardBtn" href="wbasketball.php">Women's Basketball</a>
        </div>
      </div>

      <!-- Buttons -->
      <div class="row pageLinks">
        <div class="col-md-3 just-center">
          <button role="button" class="btn btn-outline-secondary btn-sm btn-block" data-toggle="modal" data-target="#aboutModalCenter">About</button>
        </div>
        <div class="col-md-3 just-center">
          <a role="button" class="btn btn-outline-secondary btn-sm btn-block" href="report-issue.php">Report an Issue</a>
        </div>
        <div class="col-md-3 just-center">
          <a role="button" class="btn btn-outline-secondary btn-sm btn-block" href="https://www.paypal.me/hailstateunis">Donate</a>
        </div>
      </div>
      <div class="row pageLinks">
        <div class="col-md-9 just-center">
          <a role="button" class="btn btn-outline-secondary btn-sm btn-block" href="https://www.hailstateunis.com">Back to HailStateUnis.com</a>
        </div>
      </div>

      <div class="row">
          <div class="col-md-12 just-center-10-pad">
              <a href="https://twitter.com/hailstateunis"><i class="fab fa-twitter"></i></a>
              <a href="mailto:hailstateunis@gmail.com"><i class="fas fa-envelope"></i></a>
          </div>
      </div>

      <!-- About Modal -->
      <div class="modal fade" id="aboutModalCenter" tabindex="-1" role="dialog" aria-labelledby="aboutModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
          <div class="modal-content">
            <div class="modal-header justify-content-center">
              <h5 class="modal-title" id="aboutModalLongTitle">About the HailStateUnis Database</h5>
            </div>
            <div class="modal-body">
              <div class = "text-left">
                <h6>Welcome to the HailStateUnis Database!</h6>
                <p>This website and database, created out of an excess of free time during the sports-less COVID-19 Pandemic of 2020,
                    takes the all of the data I've collected through research over the last several years and puts in it a single, simple, user-friendly
                    set of tables that allow the data to be sorted and filtered in a matter of seconds.</p>
                <p>Sports included in this website are:</p>
                <p>- Mississippi State Football</p>
                <p>- Mississippi State Baseball</p>
                <p>- Mississippi State Men's Basketball</p>
                <p>- Mississippi State Women's Basketball</p>
                <p>I have a varying amount of data for each sport: 40 Full Football Seasons, 11 Full Men's Basketball Seasons, 10 Full Baseball Seasons, 
                  8 Full Women's Basketball Seasons, and postseason results stretching back much farther for all four sports. More historical data may be added
                  at a later date, and new game data will be input as the games are played.</p>
                <p>This website was built using Bootstrap styling, PHP and Javascript code, and an SQL Database. It is deployed using an AWS Lightsail image.</p>
              </div>
              <hr>
              <div class = "text-left">
                <h6>About me:</h6>
                <div class="container row align-items-center">
                  <div class="col-md-10 bio">
                    <p>My name is Paul Sullivan, I'm a undergraduate student at Mississippi State, majoring in Software Engineering and scheduled to graduate
                      in November of 2020!</p>
                  </div>
                  <div class="col-md-2 bio-pic">
                    <img src="https://i.imgur.com/eKkQFO5.jpg" alt="Paul Sullivan Egg" width="100" height="100">
                  </div>
                </div>
                <p>Raised by my dad to be a lifelong Mississippi State Fan, I started the MSU Football and Baseball Uniform Trackers in high school, and created the
                  "HailStateUnis" Twitter account my senior year of high school. The summer before my freshman year at State, I launched the "HailStateUnis.com" website.
                  It's been a really enjoyable hobby that combines by love of sports, technology, and the need to classify/organize things.</p>
                <p>HailStateUnis is strictly a hobby for me; I do not profit from it in any way whatsoever. I refuse to include any ads on the website as I feel that would 
                  be an unnecessary detriment to the user experience. That being said, there are some monthly costs associated with keeping the website and database online, 
                  so if anyone feels so inclined as to donate (via the button on the welcome page) to help keep them up and running, it would be greatly appreciated.</p>
                <p>This website is an aggreate of all that I've learned over the years about coding, web development, and user experience, as well as Mississippi State's 
                  sports and uniform history. The COVID-19 pandemic allowed me the time and resources to complete this project, and I'm really proud of how it turned out.</p>
              </div>
              <div class="container text-center">
                <img src="https://i.imgur.com/URO6CiG.png" width="45" alt="" class="d-inline-block align-middle mr-3">
                <button type="button" class="btn btn-md standardBtn" data-dismiss="modal" aria-label="Close">Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
