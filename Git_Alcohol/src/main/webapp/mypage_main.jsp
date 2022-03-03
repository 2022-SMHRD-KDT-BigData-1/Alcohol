<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String nick = (String)session.getAttribute("nick"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>마이페이지</title>

    <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
      crossorigin="anonymous"
    ></script>
    <!-- Google fonts-->
    <link
      href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
      rel="stylesheet"
    />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="assets/css/styles_login.css" rel="stylesheet" />
  </head>
  <style>
    /* 헤더 */
    header {
      text-align: center;
      margin-top: 100px;
    }
    a {
      color: black;
    }
    header .thumb {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      margin-bottom: 20px;
    }
    header .thumb-wrapper {
      position: relative;
      display: inline-block;
      margin-bottom: 36px;
    }

    header .badge {
      width: 28px;
      height: 28px;
      font-size: 12px;
      position: absolute;
      background-color: red;
      border-radius: 50%;
      top: 0;
      right: 0;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    header .greeting {
      font-family: "YUniverse-B";
      src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_yuniverse@1.0/YUniverse-B.woff2")
        format("woff2");
      font-weight: normal;
      font-size: 30px;
      font-style: normal;
      margin-bottom: 40px;
    }
    header .mail {
      padding: 8px 22px 10px 22px;
      background-color: rgba(0, 0, 0, 0.05);
      display: inline-block;
      border-radius: 20px;
      border: 1px solid rgba(0, 0, 0, 0.08);
      box-sizing: border-box;
      margin-top: 18px;
    }
    img {
      width: 100px;
      height: 100px;
    }
    .name {
      text-align: center;
    }
    /*리스트*/

    .list .item {
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 1px solid rgba(0, 0, 0, 0.08);
    }
    .list .item .left {
      display: flex;
      align-items: center;
    }
    .list .item .left .name {
      margin-left: 50px;
    }
    .list .item .right {
      display: flex;
      align-items: center;
    }
    .list .item .right img {
      padding-right: 20px;
    }
    .list .item img {
      padding: 20px 20px;
    }
    .py-5 {
      position: fixed !important;
      bottom: 0px !important;
      width: 100%;
    }
  </style>
  <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container px-5">
        <a
          class="navbar-brand"
          href="main2.jsp"
          style="font-size: 50px; margin-right: 80px"
          >A'DIC</a
        >
        <a
          class="navbar-brand"
          href="Search.jsp"
          style="font-size: 20px; margin-right: 20px"
        >
          주류 검색
        </a>
        <a
          class="navbar-brand"
          href="drinkInfo.jsp"
          style="font-size: 20px; margin-right: 20px"
        >
          주류 정보
        </a>
        <a class="navbar-brand" href="Board.jsp" style="font-size: 20px">
          커뮤니티
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href = "Logout.jsp" id = "logout" onclick = "deleteJjim(event)">Logout</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="mypage_main.jsp">Mypage</a>
            </li>
          </ul>
          <!-- Search -->
        </div>
      </div>
    </nav>
    <!-- Header-->
    <header>
      <div class="thumb_wrapper">
        <img class="thumb" src="images/user (1).png" />
        <div class="badge"></div>
      </div>

      <div class="text-area">
        <h2 class="greeting">Hi, <%=nick %></h2>
        <div class="desc">
          반갑습니다 회원님. 계정 대시보드에서 찜하신 상품을 보거나 계정
          수정, 탈퇴를 할 수 있습니다.<br />
          Nice to meet you, member.<br />
          You can view the products on the account dashboard,
          modify or withdraw from the account.
        </div>
      </div>
      <br />

      <!--임의 이메일-->
    </header>

    <!-- Content section 1-->
    <section>
      <ul class="list">
        <li class="item">
          <!--메뉴 1-->
          <div class="left">
            <img src="images/like.png" />
            <div class="name"><a href="mypage_jjim.jsp">찜 목록</a></div>
          </div>
          <div class="right">
            <a href="mypage_jjim.jsp"><img src="images/next.png" /></a>
          </div>
        </li>
        <li class="item">
          <div class="left">
            <img src="images/user (1).png" />
            <div class="name">
              <a href="mypage_update.jsp">회원정보 수정</a>
            </div>
          </div>
          <div class="right">
            <a href="mypage_update.jsp"
              ><img src="images/next.png"
            /></a>
          </div>
        </li>
        <li class="item">
          <div class="left">
            <img src="images/access.png" />
            <div class="name"><a href="mypage_unregister.jsp">회원탈퇴</a></div>
          </div>
          <div class="right">
            <a href="mypage_unregister.jsp"> <img src="images/next.png" /></a>
          </div>
        </li>
      </ul>
    </section>

    <!-- Footer-->
    <footer class="py-5 bg-black">
      <div class="container px-5">
        <p class="m-0 text-center text-white small">
          Copyright &copy; ADIC 2022
        </p>
      </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	let nick = "<%=nick%>";
	console.log(nick)
	
	function deleteJjim(event){
		if(event.target.click){
			$.ajax({
				url : "JjimDeleteCon.do",
				data : {"nick" : nick},
				dataType : "json",
				success : function(result){
					alert("로그아웃")
				}
			});
		}
	}
	</script>
  </body>
</html>
