<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 
    page Directive : 속성을 이용하여 현재 페이지의 특징 설정 기능
    <%@ page 속성1=속성값1, 속성2=속성값2 ....%>
    contentType : 반드시 기술해야 함. MIME 타입(text/html)으로 설정함
    import : 사용되는 클래스의 패키지의 이름 생략 할수 있도록 설정.
    		 여러번 사용 가능
    isErrorPage = " true" : 현재 페이지가 오류 페이지임.
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Date today = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm"); 
%>
현재일시:<%=sf.format(today)/*주석*/ %>
</body>
</html>