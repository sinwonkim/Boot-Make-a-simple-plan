<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>TEST페이지 입니다.</h2>

<h2>${home}</h2>
${boardVO.bno}

<c:forEach var="LoL" items="${charactor}">
JSP표준 태그라이브러리중 JSTL의 Core의 c를 활용한 forEach 사용 ${LoL.key}
</c:forEach>

<body>
   home.jsp페이지에서 get방식으로 student컨트롤러로 보낸  StudentId : ${studentId}<br>
   home.jsp페이지에서 post방식으로 student컨트롤러로 보낸 password : ${studentPassword}
</body>



</body>
</html>