<?php

include 'databaseInfo.php';
$dbName = "wbktabledata";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection to the DB failed: " . $conn->connect_error);
}

?>
