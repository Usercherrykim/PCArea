<!doctype html>
<html lang="ko">
  <head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="stylelink.css?after">
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
          <strong> 알바생 모집 </strong>
          <p>PC방에 직원이 필요하세요? 구인글을 작성해보세요 </p>
        </div>
        <div class="board_list_wrap">
        <div id="write_area">
                <form action="write_ok2.php" method="post">
                <div id="in_title">
                        <textarea name="title" id="utitle" rows="1" cols="55" placeholder="제목" maxlength="100" required></textarea>
                    </div>

                    <div class="wi_line"></div>
                    <div id="in_name">
                        <textarea name="name" id="uname" rows="1" cols="55" placeholder="글쓴이" maxlength="100" required></textarea>
                    </div>
                    <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="ucontent" placeholder="내용" required></textarea>
                    </div>
                    <div id="in_pw">
                        <input type="password" name="pw" id="upw"  placeholder="비밀번호" required />  
                    </div>
                    <div class="bt_se">
                        <button type="submit">글 작성</button>
                    </div>
                </form>
            </div>
          

          <div class="bt_wrap">
            <a href="listtest2.php" class="on">목록</a>


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
