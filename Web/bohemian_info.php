<!doctype html>
<html lang="ko">
  <head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="pc_detail_info.css?after">
  </head>
  <body>
    <div class="wrap">
      <div class="intro_bg">
        <div class="header">
          <div class="logo_png" id="home">
            <a href="home.html"> <img src="image/logo.png" width="180px" height="100px">
            </a>
            
          </div>
          <div class="arrow">
            <a href="#home">
            <img src="image/arrow.png" width="50px" height="50px">
            </a>
          </div>
          <div class="searchArea">
            <form>
              <input type="search" placeholder="search">
              <span>검색</span>
            </form>
          </div>
          <ul class="nav">
            <li>
              <a href="home.html">HOME</a>
            </li>
            <li>
              <a href="#about">ABOUT</a>
              <ul class = "dep2">
                <li style = "height: 30px;"><a href="listtest.php"><span class="quary">손님리뷰</span></a></li>
                <li style = "height: 30px;"><a href="listtest2.php"><span class="quary">알바생 모집</span></a></li>
                <li style = "height: 30px;"><a href="pcinfo.html"><span class="quary">PC방 정보</span></a></li>
              </ul>
            </li>
            <li>
              <a href="#news">NEWS</a>
            </li>
            <li>
              <a href="#contact">CONTACT</a>
            </li>
          </ul>
        </div>
        <div class="intro_text">
          <h1>PC방에 대한 모든것</h1>
          <h4 class="contents1">우리 집 주변에있는 PC방 정보를 한 눈에 보기쉽게 보여줍니다</h4>
        </div>
      </div>
    </div>
      <!-- intro end-->
      <!-- 사이드 메뉴-->
      <div class = "wrapper">
        <div class="sidebar">
          <div class="profile">
            <img src="image/human.png" alt = "프로필 사진">
            <h3>관리자</h3>
            <p>관리자 화면</p>
          </div>
          <div>
            <ul>
              <li>
                <a href = "home.html" class= "active">
                  <span class="icon"><i class="fas fa-home"></i></span>
                  <span class="item">홈 화면 바로가기</span>
                </a>
              </li>

              <li>
                <a href="listtest.php">
                  <span class="icon"><i class="minmenu1"></i></span>
                  <span class="item">공지사항</span>
                </a>
              </li>

              <li>
                <a href="listtest2.php">
                  <span class="icon"><i class="minmenu2"></i></span>
                  <span class="item">알바생 모집</span>
                </a>
              </li>

              <li>
                <a href="pcinfo.html">
                  <span class="icon"><i class="minmenu3"></i></span>
                  <span class="item">PC방 정보</span>
                </a>
              </li>

              <li>
                <a href="menu.html">
                  <span class="icon"><i class="minmenu4"></i></span>
                  <span class="item">레시피</span>
                </a>
              </li>
            </ul>
          </div>


        </div>
        <div class="section">
          <div class="top_navbor">
            <div class = "hamburger">
              <a href="#">
                <i class="fas fa-bars"></i>
              </a>
            </div>
          </div>
        </div>
      </div>

      <!--사이드 메뉴 끝-->
      <!-- 좌측사이드 광고 시작-->

      <div class = "addbor">
        <ul>
          <li>
            <a href="https://www.11st.co.kr/" target="_blank">
              <img src="image/11st.png" alt="광">
            </a>
          </li>
          <li>
            <a href="https://www.coupang.com/" target="_blank">
              <img src="image/coupang.jpeg" alt="고">
            </a>
          </li>
          <li>
            <a href="https://www.musinsa.com/" target="_blank">
              <img src="image/munsinsa.png" alt="배">
            </a>
          </li>
          <li>
            <a href="https://www.kurly.com/" target="_blank">
              <img src="image/kurly.png" alt="너">
            </a>
          </li>
        </ul>
      </div>
      <!--게시판-->
      <div class=" board_wrap">
        <div class="board_title">
          <strong> Bohemian PC방존</strong>
          <p> 강원도 춘천시 삭주로 73</p>
        </div>
      <div style = "width: 100%;"id="daumRoughmapContainer1666687894094" class="root_daum_roughmap root_daum_roughmap_landing"></div>
      <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
      <script charset="UTF-8">
        new daum.roughmap.Lander({
          "timestamp" : "1666687894094",
          "key" : "2c7kw",
          "mapWidth" : "",
          "mapHeight" : "500"
        }).render();
      </script>
      <br>
        <div class="list_wrap">
          <ul>
              <li class="item item1">
                  <div class="image" style= "background-image: url(pc_image/bohemian/Bohemian_logo.png);"></div>
                  <div class="cont">
                      <strong style = "text-align: center;">PC방 로고</strong>
                  </div>
              </li>
              <li class="item item2">
                  <div class="image" style= "background-image: url(pc_image/bohemian/bohemian_in.png);">사진</div>
                  <div class="cont">
                      <strong style="text-align: center;">내부 사진</strong>
                  </div>
              </li>
              <li class="item item3">
                  <div class="image" style= "background-image: url(pc_image/bohemian/bohemian.jpeg);"></div>
                  <div class="cont">
                      <strong style="text-align: center;">외부 사진</strong>
                  </div>
              </li>
              
              
          </ul>
          <div style ="text-align: left;"><br>
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
            $sql = "SELECT * FROM pcarea_information
                WHERE name = 'Bohemian PC방' ";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_row($result);
            $specsplit = explode("%", $row[6]);

            echo "💻   PC방 이름 : ";
            echo $row[0];
            echo "<br>";
            echo "📫   주소 : ";
            echo $row[1];
            echo "<br>";
            echo "🕑   영업시간 : ";
            echo $row[2];
            echo "<br>";
            echo "📞   전화번호 : ";
            echo $row[3];
            echo "<br>";
            echo "💰   요금 : ";
            echo $row[4];
            echo "<br>";
            echo "🎲   기타 시설 : ";
            echo $row[5];
            echo "<br>";
            echo "📋   컴퓨터 사양 : ";
            echo $specsplit[0];
            echo "<br>";
            echo $specsplit[1];
            echo "<br>";
            echo $specsplit[2];
            echo "<br>";
            echo $specsplit[3];
            echo "<br>";
            echo $specsplit[4];
            
        ?> 
          </div>
      </div>
        

        

          <div class="bt_wrap">
            <a href="pcinfo.html" class="on">목록</a>
            <a href="bohemian_info.php">새로고침</a>

          </div>
        </div>

      </div>

      
      <div class="footer">
        <div>LOGO</div>
        <div>
          CEO. 김민철 <br>
          경기도 남양주시 평내동 어딘가<br>
          010 - 3239 -9796 <br>
          COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
        </div>
      </div>
    </div>
  </body>
</html>

<!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<!-- 
<div id="daumRoughmapContainer1666572527071" class="root_daum_roughmap root_daum_roughmap_landing"></div>
-->
<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<!--
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
-->
<!-- 3. 실행 스크립트 -->
<!-- 
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1666572527071",
		"key" : "2c64f",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>
-->