<?php

include 'databaseInfo.php';
$dbName = "baseballtabledata";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
    echo("INFO: " . $servername . $username . $password . $dbName);
    die("Connection to the DB failed: " . $conn->connect_error);
}

?>
