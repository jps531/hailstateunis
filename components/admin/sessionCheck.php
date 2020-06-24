<?php
  session_start();

  //return to welcome if session isn't set
  if(empty($_SESSION['userID'])){
    ob_start();
    header('Location: welcome.php');
    ob_end_flush();
    die();
  }
  
?>