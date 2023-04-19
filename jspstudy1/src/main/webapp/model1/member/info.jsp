<%@page import="model.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1. id 파라미터 값을 조회
	2.로그인상태 검증
	  -로그아웃 상태 : '로그인하세요' 메세지 출력 후 loginForm.jsp 페이지 호출
	  -로그인	상태	  :
	      -다른 id 조회(관리자제외) : '내정보 조회만 가능합니다.' 메세지 출력 후 main.jsp 호출
	3. db에서 id에 해당하는 데이터 조회하기
	4. 조회된 내용 화면 출력하기
--%>
<%
	//1
	String id = request.getParameter("id");
	//2-1 : 로근아웃 상태
	String login = (String)session.getAttribute("login");
	if(login == null){ // 로그아웃상태 %>
		<script>
			alert("로그인 하세요")
			location.href="loginForm.jsp"
		</script>
<% } else if (!id.equals(login) && !login.equals("admin")) {%>
<script>
			alert("내정보만 조회 가능합니다.")
			location.href="main.jsp"
</script>
<% } else{ //정상상태
	//mem : id 파라미터에 해당하는 db의 저장된 회원정보 저장
	Member mem = new MemberDao().selectOne(id);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
</head>
<body>
	<table><caption>회원정보보기</caption>
		<tr><td rowspan="6" width="30%">
		<img src="picture/<%=mem.getPicture()%>" width="200" height="210"></td>
		<th width="20%">아이디</th><td><%=mem.getId() %></td></tr>
		<tr><th>이름</th><td><%=mem.getName() %></td></tr>
		<tr><th>성별</th><td><%=mem.getGender()==1?"남":"여" %></td></tr>
		<tr><th>전화</th><td><%=mem.getTel() %></td></tr>
		<tr><th>이메일</th><td><%=mem.getEmail() %></td></tr>
		<tr><td colspan="2">
		<a href="updateForm.jsp?id=<%=mem.getId()%>">수정</a>
		<% if(!id.equals("admin")) { %>
		<a href="deleteForm.jsp?id=<%=mem.getId()%>">탈퇴</a>
		<% } %>
	</td></tr>
	</table>
</body>
</html>
<% } %>