<?php

$servername = "ls-ed52acd835d3b04e8df8a962fff8a5e1f827d6c5.camxrlw6o2ww.us-east-1.rds.amazonaws.com";
$username = "dbmasteruser";
$password = "S2K`5)k{s:66~k#Zt=7Ym}SQ#z%!)s]g";
$dbName = "mbktabledata";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection to the DB failed: " . $conn->connect_error);
}

?>
