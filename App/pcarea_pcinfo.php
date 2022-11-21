<?php
    $id = $_GET['name'];

    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);

    /* SELECT 예제 * 연결 */
    $sql = "SELECT * FROM pcarea_information WHERE name = '$id'";
    $result = mysqli_query($conn, $sql);
    if($result){
        while($row = mysqli_fetch_array($result)){
            $arr = array("name" => $row['name'],
            "address" => $row['address'],
            "time" => $row['time'],
            "number" => $row['number'],
            "price" => $row['price'],
            "info" => $row['info'],
            "spec" => $row['spec']);

            
            echo json_encode($arr, JSON_UNESCAPED_UNICODE);
        }
    }
    
    mysqli_close($conn);
?>