<?php
include_once("helpers/db_connect.php");
function SelectUser()
{
    $dblink = db_connect("rowdytable");
    $query = "SELECT * FROM `Users`";
    $result = $dblink->query($query) or
        die("Something went wrong with $query: " . $dblink->error);
    $data = $result->fetch_array(MYSQLI_ASSOC);
    echo $data['User'];
}
function SelectLogin($username)
{
    $dblink = db_connect("rowdytable");
    // $query = "SELECT (`User`, `Password`,`autoId`) FROM `Users` WHERE `User` = '$username'";
    $query = "SELECT * FROM `Users` WHERE `User` = '$username'";
    // 
    $result = $dblink->query($query) or
        die("Something went wrong with $query: " . $dblink->error);
    return  $result->fetch_array(MYSQLI_ASSOC);
}

function SelectPassword()
{
    $dblink = db_connect("rowdytable");
    $query = "SELECT * FROM `Passwords`";
    $result = $dblink->query($query) or
        die("Something went wrong with $query: " . $dblink->error);
    $data = $result->fetch_array(MYSQLI_ASSOC);
    echo $data['Password'];
}
function InsertUser($User, $Password, $email)
{
    $dblink = db_connect("rowdytable");
    $query = "INSERT INTO `Users` (`User`, `Password`,`Email`) VALUES ('$User', '$Password','$email');";
    $dblink->query($query) or
        die("Something went wrong with $query: " . $dblink->error);
    return true;
}

function InsertPassword($User, $Password, $Domain, $Desc)
{
    $dblink = db_connect("rowdytable");
    $query = "INSERT INTO `Passwords` (`User`, `Password`, `Domain`, `Description`) VALUES ('$User', '$Password', '$Domain', '$Desc');";
    $dblink->query($query) or
        die("Something went wrong with $query: " . $dblink->error);
}
