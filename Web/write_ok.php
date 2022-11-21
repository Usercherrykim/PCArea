<?php


$host = "localhost";
$user = "pcarea";
$pw = "carnival23!";
$dbName = "pcarea";

$conn = new mysqli($host, $user, $pw, $dbName);

//각 변수에 write.php에서 input name값들을 저장한다

$date = date('Y-m-d');

if (mysqli_connect_errno()){
  echo "MySQL 연결에 실패하였습니다 : " . mysqli_connect_error();
  }

  mysqli_query($conn,"INSERT INTO pcarea_notice (notice_writer,notice_pw,notice_title,notice_contents,date) 
                          VALUES ('$_POST[name]','$_POST[pw]','$_POST[title]','$_POST[content]','".$date."')");
  mysqli_close($conn);
      

  echo ("<meta http-equiv='Refresh' content='1; URL=listtest.php'>");
  
/*
  mysqli_query($conn,"INSERT INTO pcarea_notice (notice_writer,notice_pw,notice_title,notice_contents) 
                VALUES ('이름','비번','제목','컨탠')");
  mysqli_close($conn);

  echo ("<meta http-equiv='Refresh' content='1; URL=write.php'>");
*/



//if($username && $userpw && $title && $content){
   

   // mysqli_query($conn,"INSERT INTO pcarea_notice (notice_writer,notice_pw,notice_title,notice_contents)
    //                VALUES('$username','$userpw','$title','$content')");
    //mysqli_close($conn);



    //$sql = "INSERT INTO pcarea_notice (notice_writer,notice_pw,notice_title,notice_contents,date)
      //  VALUES ('".$username."','".$userpw."','".$title."','".$content."','".$date."')";

    //$sql = mq("insert into pcarea_notice(notice_writer,notice_pw,notice_title,notice_contents,date)
    //values('".$username."','".$userpw."','".$title."','".$content."','".$date."')");

/*   
 }else{
    echo "<script>
    alert('글쓰기에 실패했습니다.');
    history.back();</script>";
}

$username = $_POST[name];
$userpw = password_hash($_POST[pw], PASSWORD_DEFAULT);
$title = $_POST[title];
$content = $_POST[content];
$date = date('Y-m-d');
*/
?>