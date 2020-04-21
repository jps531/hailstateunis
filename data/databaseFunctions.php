<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbName = "footballTableData";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection to the DB failed: " . $conn->connect_error);
}

//this will allow you to check if something is in the database easily by
//inputting the table you're checking, the row you're looking in, and what you're checking is in there
function isInDatabase($table, $row, $data, $conn) {
    //$data = $mysqli -> real_escape_string($data); //sanitize string
    $result = $conn->query("SELECT * FROM `$table` WHERE `$row` = '$data'"); //execute 

    //if it returned anything, throw TRUE (an error)
    if ($result->num_rows > 0) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

//insert into function
//$rows should be an array even if its just one value

/*

$sql = "INSERT INTO MyGuests (firstname, lastname, email)
VALUES ('John', 'Doe', 'john@example.com')";

INSERT INTO `forms`(`title`) VALUES ('test')

*/
function insertInto($table, $rows, $data, $conn) {
    //$data = $mysqli -> real_escape_string($data);
    //this formats the sql string
    $rows = formatRows($rows); //format the rows to be compatible with the string
    $data = formatData($data);
    $sql = "INSERT INTO " . $table . "(" . $rows . ")" . " ". " VALUES (" .  $data . ")";
    $result = $conn->query($sql);

        //if it returned anything, throw TRUE (an error)
        if ($result) {
            return TRUE;
        }
        else {
            echo "<br>" . $sql . " - sql string";
            return trigger_error('Invalid query: ' . $conn->error);
        }
}


//basically insertInto, now you only have to add the where sql statement
function insertIntoWhere($table, $rows, $data, $where, $conn) {
        //$data = $mysqli -> real_escape_string($data);
    $rows = formatRows($rows); //format the rows to be compatible with the string
    $data = formatData($data);
    //this formats the sql string
    $sql = "INSERT INTO " . $table . "(" . $rows . ")" . " ". " VALUES (" .  $data . ") " . " WHERE " . $where;
    $result = $conn->query($sql);

        //if it returned anything, throw TRUE (an error)
        if ($result) {
            return TRUE;
        }
        else {
            echo "<br>" . $sql . " - sql string";
            return trigger_error('Invalid query: ' . $conn->error);
        }
}

//rows should be an array
function formatData($data) {
    $string = "";
    for ($i = 0; $i < (count($data)-1); $i++) {
        $string = $string . " '" . $data[$i] . "'" . ", ";
        //echo $string . "<br>";
    
    }
    $string = $string . "'" . $data[$i] . "'" . " ";
    //echo $string . "<br>";

    //echo var_dump($string);

    return $string;
}

function formatRows($data) {
    $string = "";
    for ($i = 0; $i < (count($data)-1); $i++) {
        $string = $string . $data[$i] . ", ";
        //echo $string . "<br>";
    
    }
    $string = $string . $data[$i] . " ";
    //echo $string . "<br>";

    //echo var_dump($string);

    return $string;
}

?>