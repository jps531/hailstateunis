<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbName = "taylorsvilleTableData";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection to the DB failed: " . $conn->connect_error);
}

?>
