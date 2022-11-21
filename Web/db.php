<?php
    

    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);

    function mq($query){
        global $conn;
        return $conn->query($query);
    }
?>