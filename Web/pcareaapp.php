<?php
    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);


    class pczoneinfo{
        public $name;
        public $address;
        public $time;
        public $number;
        public $price;
        public $info;
        public $spec;
    }

    /* SELECT 예제 * 연결 */
    $sql = "SELECT * FROM pcarea_information";
    $result = mysqli_query($conn, $sql);
    $arr = array();
    if($result){
        while($row = mysqli_fetch_array($result)){
            $pczone = new pczoneinfo();
            $pczone -> name = $row['name'];
            $pczone -> address = $row['address'];
            $pczone -> time = $row['time'];
            $pczone -> number = $row['number'];
            $pczone -> price = $row['price'];
            $pczone -> info = $row['info'];
            $pczone -> spec = $row['spec'];
            
            $arr[] = $pczone;
            unset($pczone);
        }
    } else {
        $arr = array(0 => 'empty');
    }
    echo json_encode($arr, JSON_UNESCAPED_UNICODE);
    
    mysqli_close($conn);
?>