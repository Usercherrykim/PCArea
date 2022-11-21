<?php
	    include $_SERVER['DOCUMENT_ROOT']."/db.php";

        $host = "localhost";
        $user = "pcarea";
        $pw = "carnival23!";
        $dbName = "pcarea";
    
        $conn = new mysqli($host, $user, $pw, $dbName);
   


	$bno = $_GET['notice_number'];

    $thumbup = mysqli_fetch_array(mq("SELECT notice_suggest from pcarea_notice where notice_number='$bno';"));
    $thumbup = $thumbup['notice_suggest'] + 1;
    mq("update pcarea_notice set notice_suggest=".$thumbup." where notice_number=".$bno.";");


?>

    
<script type="text/javascript">alert("추천되었습니다.");</script>
<meta http-equiv="refresh" content="0 listtest.php" />