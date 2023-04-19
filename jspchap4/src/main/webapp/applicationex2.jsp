<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 속성 확인</title>
</head>
<body>
<%= application.getAttribute("test") %><br>
<%= session.getAttribute("test") %><br>
</body>
</html>