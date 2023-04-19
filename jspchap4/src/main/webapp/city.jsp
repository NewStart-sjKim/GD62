<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>go</title>
</head>
<body>
<h1>이 페이지는 보여 지지 않습니다.</h1>
<%
	String city = request.getParameter("city");
	pageContext.forward(city+".jsp");
%>
</body>
</html>