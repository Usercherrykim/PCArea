<?php

    include $_SERVER['DOCUMENT_ROOT']."/db.php";

    $host = "localhost";
    $user = "pcarea";
    $pw = "carnival23!";
    $dbName = "pcarea";

    $conn = new mysqli($host, $user, $pw, $dbName);

    $bno = $_GET['notice_number'];

    $username = $_POST['name'];
    $userpw = password_hash($_POST['pw'], PASSWORD_DEFAULT);
    $title = $_POST['title'];
    $content = $_POST['content'];
    

    $sql = mq("UPDATE pcarea_notice SET notice_writer='$username' WHERE notice_number= '$bno'");
    $sql = mq("UPDATE pcarea_notice SET pw='$userpw' WHERE notice_number= '$bno'");
    $sql = mq("UPDATE pcarea_notice SET notice_title='$title' WHERE notice_number= '$bno'");
    $sql = mq("UPDATE pcarea_notice SET notice_contents='$content' WHERE notice_number= '$bno'");
    

    //$sql = mq("UPDATE pcarea_notice set notice_writer='$username',pw='".$userpw."',notice_title='$title',notice_contents='$content' WHERE notice_number='$bno'");

?>

<script type="text/javascript">alert("수정되었습니다."); </script>
<meta http-equiv="refresh" content="0 url= listtest.php">