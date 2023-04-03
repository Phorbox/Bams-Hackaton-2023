<?php
include_once("db_connect.php");
function tStart()
{
    return microtime(true);
}

function tTotal($start)
{
    return microtime(true) - $start;
}

function logTime($table,$seconds,$type,$PF){
    $dblink = db_connect("rowdytable");

    $sql = "INSERT INTO `Logs`(`tartable`, `seconds`, `type`,`success`) 
            VALUES ('$table','$seconds','$type',$PF)";

    $dblink->query($sql) or
        die("Something went wrong with Query: $sql<br>\n" . $dblink->error);

}