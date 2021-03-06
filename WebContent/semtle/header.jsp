<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/semtle/images/favicon.ico" type="image/x-icon" sizes="16X16">
	<link rel="icon" href="${pageContext.request.contextPath}/semtle/images/favicon.ico" type="image/x-icon" sizes="16X16">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/semtle/css/style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/semtle/js/rsa.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/semtle/js/jsbn.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/semtle/js/prng4.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/semtle/js/rng.js">
    </script>
  </head>
<body>

	<c:choose>
	<c:when test="${empty title}">
	
	   <header>
	   <a href=""></a>
	
	   <nav class="navbar">
	     <a href="board_list_Notice.doNotice">공지사항</a>
	     <a href="board_list_Free.doPost">자유게시판</a>
	     <a href="Study.doStudy">스터디룸</a>
	     <a href="booklist.doBook">책 대여</a>
	     <a href="#">공모전(아직 준비중입니다)</a>
	   </nav>
	   
	   <div class="icons">
	 		<c:choose>
	 		<c:when test="${empty userInfo.userId}">
	        	<a href="login_form.do"><i class="fas fa-user" id="sm-login"></i></a>
	        </c:when>
	        <c:otherwise>
	      		<a href="userInfo.do?userId=${ userInfo.userId }"><i class="fas fa-user" id="sm-login"></i></a>
	 		</c:otherwise>
	 		</c:choose>
	        <i class="fas fa-bars header-menu" id="menu-bars"></i>
	      </div>
	      
     </c:when>
	<c:otherwise>
	
   <header>
    <a href=""></a>

    <nav class="navbar">
     <a href="board_list_Notice.doNotice">공지사항</a>
     <a href="board_list_Free.doPost">자유게시판</a>
     <a href="Study.doStudy">스터디룸</a>
     <a href="booklist.doBook">책 대여</a>
     <a href="#">공모전(아직 준비중입니다)</a>
    </nav>

  </header>
  <header>
    <a href="javascript:history.back();" id="header-before"><i class="fas fa-angle-left"></i></a>

    <nav class="navbar">
     <a href="board_list_Notice.doNotice">공지사항</a>
     <a href="board_list_Free.doPost">자유게시판</a>
     <a href="Study.doStudy">스터디룸</a>
     <a href="booklist.doBook">책 대여</a>
      <a href="#">공모전(아직 준비중입니다)</a>
    </nav>

    <span id="header-name">${title}</span>
    
   
     <div class="icons">
      <a href="home.do"><i class="fas fa-home" id="home-bar"></i></a>
      <i class="fas fa-bars header-menu" id="menu-bars"></i> 
    </div>
  </c:otherwise>
  </c:choose>


    
</header>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/semtle/js/script.js" defer></script>
</header>
</body>
</html>


 