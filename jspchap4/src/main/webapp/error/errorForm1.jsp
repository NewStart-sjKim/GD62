<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 현재 페이지에서 오류 발생시 error.jsp 페이지로 이동 --%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 발생 페이지</title>
</head>
<body>
<% int num = Integer.parseInt("abc"); %>
<%= request.getParameter("name").trim() %>
</body>
</html>
<%--  
	error 페이지 설정시 우선 순위
	
	1. 해당페이지에서 오류 페이지 설정시
		<%@ Page errorPage="error.jsp" %>
	2. web.xml 에서 예외 클래스 별로 설정 시
		<error-page><exception-type>....
	3. web.xml 에서 HTTP 오류 코드로 설정 시
		<error-page><error-code>....
	4. 톰캣에서 기본 으로 제공하는 에러페이지
	
--%>