<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath();%>
<%--
	1. jar-download.com/ 접속
	2. sitemesh 검색
	3. jar_files.zip 파일 다운받고, 압축 풀기
	4. sitemesh-3.0.1.jar 파일을 WEB-INF/lib 폴더에 복사
	
	<sitemest:write property='title'/>:
		joinForm.jsp 페이지의 title 태그의 내용을 적용
	<sitemest:write property='head'/> :
		joinForm.jsp 페이지의 head 태그의 내용을 적용. title태그 제외
	<sitemest:write property='body'/>
		joinForm.jsp 페이지의 body 태그의 내용을 정ㅇ. 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemest:write property='title'/></title>
<link rel="stylesheet" href="<%=path %>/css/main.css"%>
<sitemesh:write property='head'/>
</head>
<body>
<table><tr><td colspan="3" style="text-align:right">
<%
	String login = (String)session.getAttribute("login");
	if(login == null) {%>
	<a href="<%=path%>/model1/member/loginForm.jsp">로그인</a>
	<a href="<%=path%>/model1/member/joinForm.jsp">회원가입</a>
<% }else { %>
	<%=login %>님.<a href="<%=path %>/model1/member/logout.jsp">로그아웃</a>
<% } %>
</td></tr>
<tr><td width="15%" valign="top">
	<a href="<%=path %>/model1/member/main.jsp">회원관리</a><br>
	<a href="<%=path %>/model1/board/list.jsp?boardid=1">공지사항</a><br>
	<a href="<%=path %>/model1/board/list.jsp?boardid=2">자유게시판</a><br>
	<a href="<%=path %>/model1/board/list.jsp?boardid=3">QnA</a><br>
</td>
<td conspan="2"  style="text-align: left; vertical-align: top">
<sitemesh:write property='body'/></td></tr>
<tr><td colspan="3">구디아카데미</td></tr> 
</table>
</body>
</html>