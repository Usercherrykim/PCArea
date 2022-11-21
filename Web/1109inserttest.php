<?php

           
            $host = "localhost";
            $user = "pcarea";
            $pw = "carnival23!";
            $dbName = "pcarea";

            $conn = new mysqli($host, $user, $pw, $dbName);

            if (mysqli_connect_errno()){
                echo "MySQL 연결에 실패하였습니다 : " . mysqli_connect_error();
                }
                
            mysqli_query($conn,"INSERT INTO sibal (name, address) VALUES ('$_POST[test_name]','테스트')");
            mysqli_close($conn);
                
            // person.php 페이지로 이동
            echo ("<meta http-equiv='Refresh' content='1; URL=1109test.php'>");


?>