<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 하는 페이지</title>
</head>
<body>
<h2>forward 하는 페이지 입니다. 이 내용은 화면에 출력되지 않습니다.</h2>
http://localhost:8080/jspchap4/forwardex1.jsp?id=hi
<% pageContext.forward("forwardex2.jsp"); %>
</body>
</html>