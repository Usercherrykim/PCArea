<?php
	include $_SERVER['DOCUMENT_ROOT']."/db.php";

    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);

	
    $bno = $_GET['notice_number'];
	$sql = mq("DELETE FROM pcarea_notice WHERE notice_number='$bno';");
?>
<script type="text/javascript">alert("삭제되었습니다.");</script>
<meta http-equiv="refresh" content="0 url=listtest.php" />