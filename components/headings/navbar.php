<!-- Stylesheet -->
<link rel="stylesheet" href="components/scss/navbar.scss">

<!-- Navbar -->
<nav class="navbar navbar-dark navbar-expand-md">

  <!-- Brand -->
  <a class="navbar-brand" href="welcome.php">
    <img src="https://i.imgur.com/URO6CiG.png" width="45" alt="" class="d-inline-block align-middle mr-2">
  </a>

  <!-- Mobile Collapse Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbarMd">
    <i class="fas fa-bars"></i>
  </button>

  <!-- Enable Active Class -->
  <script>
    $(function(){
        $('a').each(function(){
            if ($(this).prop('href') == window.location.href) {
                $(this).addClass('active'); $(this).parents('li').addClass('active');
            }
        });
    });
  </script>

  <!-- Navbar Links -->
  <div class="navbar-collapse collapse justify-content-end" id="collapsingNavbarMd">
    <ul class="nav navbar-nav text-center">
      <li class="nav-item">
        <a class="nav-link" href="football.php">Football</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="baseball.php">Baseball</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mbasketball.php">Men's Basketball</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="wbasketball.php">Women's Basketball</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          More
        </a>
        <div class="dropdown-menu" id="navDropdownMenu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" id="navDropdownItem" href="southernmiss.php">Southern Miss</a>
          <a class="dropdown-item" id="navDropdownItem" href="taylorsville.php">Taylorsville</a>
          <a class="dropdown-item" id="navDropdownItem" href="raleigh.php">Raleigh</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://www.hailstateunis.com">HailStateUnis.com</a>
      </li>
    </ul>
  </div>
</nav>
