<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	1. session의 로그인 정보 제거
	2. 로그아웃 메세지 출력 후 loginForm.jsp 로 페이지 이동
--%>
<%
	session.removeAttribute("login");//login 속서정보 제거.
	session.invalidate();			 //새로운  session 객체로 변경. 이전 등록된 속성들이 전부제거(위 아래 둘다 해도 됨)
//	response.sendRedirect("loginForm.jsp");
%>
<script>
	alert("로그아웃 되었습니다.")
	location.href="loginForm.jsp"
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

</body>
</html>