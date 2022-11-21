<!doctype html>
<html lang="ko">
  <head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="pc_detail_info.css">
  </head>
  <body>
    <div class="wrap">
      <div class="intro_bg">
        <div class="header">
          <div class="logo_png" id="home">
            <a href="home.html"> <img src="image/logo.png" width="180px" height="100px">
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
              <a href="#home">HOME</a>
              <ul class = "dep2">
                <li style = "height: 30px;"><a href="#1"><span class="quary">메뉴1_1</span></a></li>
                <li style = "height: 30px;"><a href="#2"><span class="quary">메뉴1_2</span></a></li>
                <li style = "height: 30px;"><a href="#3"><span class="quary">메뉴1_3</span></a></li>
              </ul>
            </li>
            <li>
              <a href="#about">ABOUT</a>
              <ul class = "dep2">
                <li style = "height: 30px;"><a href="listtest.html"><span class="quary">손님리뷰</span></a></li>
                <li style = "height: 30px;"><a href="listtest2.html"><span class="quary">알바생 모집</span></a></li>
                <li style = "height: 30px;"><a href="pcinfo.html"><span class="quary">PC방 정보</span></a></li>
              </ul>
            </li>
            <li>
              <a href="#news">NEWS</a>
              <ul class = "dep2">
                <li style = "height: 30px;"><a href="#"><span class="quary">메뉴1_1</span></a></li>
                <li style = "height: 30px;"><a href="#"><span class="quary">메뉴1_1</span></a></li>
                <li style = "height: 30px;"><a href="#"><span class="quary">메뉴1_1</span></a></li>
              </ul>
            </li>
            <li>
              <a href="#contact">CONTACT</a>
              <ul class = "dep2">
                <li style = "height: 30px;"><a href="#"><span class="quary">메뉴1_1</span></a></li>
                <li style = "height: 30px;"><a href="#"><span class="quary">메뉴1_1</span></a></li>
                <li style = "height: 30px;"><a href="#"><span class="quary">메뉴1_1</span></a></li>
              </ul>
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
            <h3>프로필 이름</h3>
            <p>기타 뭐시기</p>
          </div>
          <div>
            <ul>
              <li>
                <a herf = "#" class= "active">
                  <span class="icon"><i class="fas fa-home"></i></span>
                  <span class="item">My Dashboard</span>
                </a>
              </li>

              <li>
                <a href="#">
                  <span class="icon"><i class="minmenu1"></i></span>
                  <span class="item">minmenu1</span>
                </a>
              </li>

              <li>
                <a href="#">
                  <span class="icon"><i class="minmenu2"></i></span>
                  <span class="item">minmenu2</span>
                </a>
              </li>

              <li>
                <a href="#">
                  <span class="icon"><i class="minmenu3"></i></span>
                  <span class="item">minmenu3</span>
                </a>
              </li>

              <li>
                <a href="#">
                  <span class="icon"><i class="minmenu4"></i></span>
                  <span class="item">minmenu4</span>
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
          <strong> 샹떼 PC방 석사점</strong>
          <p> 강원 춘천시 후석로 47 지하1층</p>
        </div>
        
        
          <div style = "width: 100%;" id="daumRoughmapContainer1666572527071" class="root_daum_roughmap root_daum_roughmap_landing"></div>
          <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
          <script charset="UTF-8">
            new daum.roughmap.Lander({
              "timestamp" : "1666572527071",
              "key" : "2c64f",
              "mapWidth" : "",
              "mapHeight" : "500"
            }).render();
          </script>
          <br>

        
        <div class="list_wrap">

          <ul>
              
              <li class="item item1">
                  <div class="image" style= "background-image: url(pc_image/sante/sante_logo.jpeg);">
                  
                  </div>
                  <div class="cont">
                      <strong style = "text-align: center;">PC방 로고</strong>
                  </div>
              </li>
              <li class="item item2">
                <div class="image" style = "background-image: url(pc_image/sante/sante.png);"></div>
                <div class="cont">
                    <strong style = "text-align: center;">PC방 내부</strong>
                </div>
            </li>
              <li class="item item3">
                  <div class="image" style = "background-image: url(pc_image/sante/sante_road.png);">사진</div>
                  <div class="cont">
                      <strong style="text-align: center;">PC방 외부</strong>
                  </div>
              </li>
              
              
          </ul>
          <!--db에서 불러울 내용 -->
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
                WHERE name = '3POP PC방 한림대점' ";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_row($result);

            echo "PC방 이름 : ";
            echo $row[0];
            echo "<br>";
            echo "주소 : ";
            echo $row[1];
            echo "<br>";
            echo "영업시간 : ";
            echo $row[2];
            echo "<br>";
            echo "전화번호 : ";
            echo $row[3];
            echo "<br>";
            echo "요금 : ";
            echo $row[4];
            echo "<br>";
            echo "기타 시설 : ";
            echo $row[5];
            echo "<br>";
            echo "컴퓨터 사양 : ";
            echo $row[6];
            echo "<br>";
            
        ?>   
            
          </div>
      </div>
        

          <div class="board_page">
            <a href="#" class="bt first"> << </a>
            <a href="#" class="bt prev"> < </a>
            <a herf="#" class="num on">1</a>
            <a herf="#" class="num">2</a>
            <a herf="#" class="num">3</a>
            <a herf="#" class="num">4</a>
            <a herf="#" class="num">5</a>
            <a href="#" class="bt next"> > </a>
            <a href="#" class="bt last"> >> </a>
          </div>

          <div class="bt_wrap">
            <a href="#" class="on">목록</a>
            <a href="#">수정</a>

          </div>
        </div>

      </div>

      
      <div class="footer">
        <div>LOGO</div>
        <div>
          CEO. 타모디자인 <br>
          Addr. 서울특별시 금천구 가산1로 280-3 우림하이엔드타워 6차 14F 고객상담실 Fax/Tel. <br>
          02 - 223 -2912~5 <br>
          COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
        </div>
      </div>
    </div>
  </body>
</html>