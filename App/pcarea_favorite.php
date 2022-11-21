<?php
    $id = $_GET['name'];

    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);

    class Favorite{
        public $id;
        public $rtime;
        public $name;
    }
    /* SELECT 예제 * 연결 */
    $sql = "SELECT * FROM pcarea_favorite WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);
    $arr = array();
    $cnt = 0;
    if($result){
        while($row = mysqli_fetch_array($result)){
            $pczone = new Favorite();
            $pczone -> id = (int) $cnt++;
            $pczone -> name = $row['name'];
            $pczone -> rtime = $row['rtime'];           
            $arr[] = $pczone;
            unset($pczone);
        }
    } else {
        $arr = array(0 => 'empty');
    }
    echo json_encode($arr, JSON_UNESCAPED_UNICODE);
    
    mysqli_close($conn);
?>