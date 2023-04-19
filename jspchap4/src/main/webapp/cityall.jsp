<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 도시 목록</title>
</head>
<body>
<h1>전체 도시 정보</h1>
<%--
	cityall.jsp 페이지와 seoul.jsp, busan.jsp 페이지는 출력버퍼를 공유한다.
	다른 서블릿 페이지이므로 변수 공유는 불가함.
	cityall.jsp 페이지와 seoul.jsp, busan.jsp 페이지는 같은 request 객체를 공유한다.
	=> 같은 request 영역의 페이지다.
 --%>
<% pageContext.include("seoul.jsp");%>
<hr>
<% pageContext.include("busan.jsp");%>
</body>
</html>