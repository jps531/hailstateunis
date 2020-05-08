<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbName = "wbkTableData";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection to the DB failed: " . $conn->connect_error);
}

?>