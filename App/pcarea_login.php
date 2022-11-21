<?php
    $userID = $_GET['id'];
    $userPW = $_GET['pw'];

    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);

    /* SELECT 예제 * 연결 */
    $sql = "SELECT * FROM pcarea_user WHERE id = '$userID' and pw = '$userPW'";
    $result = mysqli_query($conn, $sql);
    if($result){
        if(mysqli_num_rows($result)) {
            $arr = array("success" => "true");
        }else {
            $arr = array("success" => "false");
        }

        echo json_encode($arr, JSON_UNESCAPED_UNICODE);
    }
    
    mysqli_close($conn);
?>