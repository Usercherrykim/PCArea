<!doctype html>
<html lang="ko">
  <head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styletest.css?after">
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
          <strong> 공지사항</strong>
          <p> 각 PC방에 공지사항을 확인하세요 </p>
        </div>
            <?php
            include $_SERVER['DOCUMENT_ROOT']."/db.php";

            $host = "localhost";
            $user = "pcarea";
            $pw = "carnival23!";
            $dbName = "pcarea";
            
            $conn = new mysqli($host, $user, $pw, $dbName);

		    $bno = $_GET['notice_number']; /* bno함수에 idx값을 받아와 넣음*/
		    $hit = mysqli_fetch_array(mq("SELECT * FROM pcarea_notice WHERE notice_number ='".$bno."'"));
		    $hit = $hit['notice_view'] + 1;
		    $fet = mq("update pcarea_notice set notice_view = notice_view + 1 where notice_number = '".$bno."'");
		    $sql = mq("select * from pcarea_notice where notice_number='".$bno."'"); /* 받아온 idx값을 선택 */
		    $pcarea_notice = $sql->fetch_array();
	    ?>
<!-- 글 불러오기 -->
        <div id="board_read">
	        <h2><?php echo $pcarea_notice['notice_title']; ?></h2>
		<div id="user_info">
			<?php echo $pcarea_notice['notice_writer']; ?> <?php echo $pcarea_notice['date']; ?> 조회:<?php echo $pcarea_notice['notice_view']; ?> 추천수:<?php echo $pcarea_notice['notice_suggest']; ?>
				<div id="bo_line"></div>
			</div>
			<div id="bo_content">
				<?php echo nl2br("$pcarea_notice[notice_contents]"); ?>
			</div>
	<!-- 목록, 수정, 삭제 -->
  <br>
  <br>
  <br>
  <br>
	    <div id="bo_ser">
		<ul>
      <li><a href="thumbup.php?notice_number=<?php echo $pcarea_notice['notice_number']; ?>">[추천]</a></li>
			<li><a href="modify.php?notice_number=<?php echo $pcarea_notice['notice_number']; ?>">[수정]</a></li>
			<li><a href="delete.php?notice_number=<?php echo $pcarea_notice['notice_number']; ?>">[삭제]</a></li>
		</ul>
	</div>
</div>
          
<br>
<br>
          <div class="bt_wrap">
            <a href="listtest.php" class="on">목록</a>

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
  </body>
</html>