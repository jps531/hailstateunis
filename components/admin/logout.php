<?php
session_start();
$_SESSION['userID'] = NULL;
session_unset($_SESSION['userID']);
ob_start();
header('Location: ../../welcome.php');
ob_end_flush();
die();
?>