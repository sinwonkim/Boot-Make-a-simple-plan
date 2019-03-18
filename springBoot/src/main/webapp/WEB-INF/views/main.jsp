<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width ,initial-scale=1">
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<link rel="stylesheet" href="/resources/css/index.css"/>  <!-- 자바스크립트 index.css -->
<title>Do what</title>
<style type="text/css">
 a:hover { text-decoration: underline;}
 a:link { text-decoration: none;}
</style>
</head>
<body>


		<!-- Nav쪽 -->
	<nav class="navbar navbar-default navbar-backdefault">
	  <div class="container-fluid">
	    <div class="navbar-header">
	    	<button type="button" class="navbar-toggle collapsed" 
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expended="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<a href="https://github.com/sinwonkim"><img src="/resources/images/unp2.PNG" alt="이미지 " style="width:50px;height:50px; font-style: lightblue">Sinwon's git</a>
	    </div>
	    <div>
	    </div>
	    <div  id="#bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav" >
	        <li><a class="navbar-brand " href="main.jsp"  style="margin-left:0px;">Home</a></li>
	        <li><a href="#">2번 메뉴</a></li> 
	        <li><a href="boardList.jsp">게시판</a></li> 
	      </ul>
	    </div>
	    <!-- 로그인  되었을 때 view,로그인 되지 않았을 때 view -->
	  
	    <ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"  data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expended="false">접속하기<span class="caret"></span></a>
				<ul class="dropdown-menu" style="min-width: 80px;">
					<li><a href="login">로그인</a></li> 
					<li><a href="signUp">회원가입</a></li>
				</ul>
			</li>
		</ul>
		
		
			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"  data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expended="false">회원관리<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="logoutAction.jsp">로그아웃</a></li> 
				</ul>
			</li>
		</ul>
	
	  </div>
	</nav>

	<!-- javascript  -->
	  <div class="js-clock">
           <h1>00:00</h1>
      </div>
       <div class="js-weather"></div>
       <form class="js-form form">
            <input type = "text" placeholder="What is your name?"/>
       </form>
       <h4 class="js-greetings greetings"></h4>
       <form class="js-toDoForm">
           <input type = "text" placeholder="오늘의 계획"/>
       </form>
       <ol class="js-toDoList" type="1">
       
       </ol>
       
        <script src="/resources/js/clock.js"></script>
        <script src="/resources/js/gretting.js"></script>
        <script src="/resources/js/todo.js"></script>
        <script src="/resources/js/bg.js"></script>
        <script src="/resources/js/weather.js"></script>

        <div class="footer">
            <p> © 2019. All Rights Reserved 117@naver.com
                <br>
                <span>sinwonkim </span></p>
            <p><a href="https://github.com/sinwonkim"">Sinwon's Git <i class="fa fa-linkedin-square" aria-hidden="true"></i> </a></p>
        </div>
	 
	
	<script src="https://code.jquery.com/jquery-1.12.4.js" ></script>
	<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>