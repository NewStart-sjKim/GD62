<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 된 페이지</title>
</head>
<body>
<h1>forwardex2.jsp 페이지</h1>
forwardex1.jsp 페이지를 요청하면 이 페이지가 출력됩니다.<br>
하지만 브라우저의 url은 forwardex1.jsp 페이지 요청상태로 남아 있습니다.
<h2><%= request.getParameter("id") %></h2>
</body>
</html>