<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>Home Page입니다.</h2>
 <body>
    <form action = "student" method = "get">
        student id : <input type = "text" name = "id"><br/>
        <input type = "submit" value = "전송">
    </form>
     <form action = "student" method = "post">
        student password : <input type = "text" name = "password"><br/>
        <input type = "submit" value = "전송">
    </form>
</body>
</html>