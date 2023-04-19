<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>PageContext 객체 : page 영역을 담당하는 객체. 현재 페이지의 자원을 관리한다</h2>
<% if (request == pageContext.getRequest()) {%>
request 객체와 pageContext.getRequest()가 리턴하는 객체는 같은 객체임<br>
<% } %>
<% if (response == pageContext.getResponse()) {%>
request 객체와 pageContext.getRequest()가 리턴하는 객체는 같은 객체임<br>
<% } %>
<% if (session == pageContext.getSession()) {%>
request 객체와 pageContext.getRequest()가 리턴하는 객체는 같은 객체임<br>
<% } %>
<% if (out == pageContext.getOut()) {%>
request 객체와 pageContext.getOut()가 리턴하는 객체는 같은 객체임<br>
<% } %>
<h3>pageContext 객체는 영역담당 객체이므로 속성관리 메서드를 가진다.</h3>
<%
	pageContext.setAttribute("test", new Date());//속성등록
%>
test 속성 : <%= pageContext.getAttribute("test") /*속성 조회*/%><br>
<%
	pageContext.removeAttribute("test"); //속성제거
%>
test 속성 : <%= pageContext.getAttribute("test") %><br>
</body>
</html>