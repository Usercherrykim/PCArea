<?php
  $res = array(
    array('id'=>1, 'name'=>'득구', 'age'=>24, 'email'=>'abc1@abc.com'), 
    array('id'=>2, 'name'=>'홍삼', 'age'=>22, 'email'=>'abc2@abc.com'), 
    array('id'=>3, 'name'=>'길동', 'age'=>25, 'email'=>'abc3@abc.com'), 
    array('id'=>4, 'name'=>'철수', 'age'=>27, 'email'=>'abc4@abc.com')
  );
?>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>HTML with PHP</title>
</head>
<style>
  /* 못생긴 테이블을 조금이나마 볼만하게 해주기 위한 css */
  th, td {
    border-bottom:1px solid #000;
  }
</style>
<body>
  <table>
  <thead>
  <tr>
    <th>no</th>
    <th>이름</th>
    <th>나이</th>
    <th>이메일</th>
  </tr>
  </thead>
  <tbody>
  <? 
  // $i는 0부터 1씩 더하면서 $res배열의 길이보다 작을 때 동안만 for문을 실행한다.
  for($i=0; $i<count($res); $i++) {
  ?>
    <tr>
      <td><?=$res[$i]['id']?></td>
      <td><?=$res[$i]['name']?></td>
      <td><?=$res[$i]['age']?></td>
      <td><?=$res[$i]['email']?></td>
    </tr>
  <?
  }
  ?>
  </tbody>
  </table>
</body>
</html>