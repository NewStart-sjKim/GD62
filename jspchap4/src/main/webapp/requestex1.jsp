<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	POST 방식 전송: <form method="post"> 형식 전송 되는경우
				  파라미터 정보가 http 프로토콜의 body부분에 전송. => 파라미터정보 안보임
	GET 방식 전송 : <form [method="get"]> 형식 전송 되는 경우
				  파라미터 정보가 url 부분에 추가되어 전송 => 요청 url에 파라미터 정보가 보임
	request.setCharacterEncoding(인코딩명) : 파라미터값의 인코딩방식 설정
		=> POST 방식 전송시 인코딩 방식임
	Stringrequest.getParameter("name") : name 파라미터의 한개 값을 리턴
	Stringrequest.getParameterValues("name") : name 파라미터의 값들을 배열로 리턴
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송된 파라미터값 출력하기</title>
</head>
<body>
<%
	//파라미터값 조회 전에 설정해야함
	request.setCharacterEncoding("UTF-8"); //파라미터값을 인코딩방식 설정=> 한글인식에 꼭 필요
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String gender=request.getParameter("gender");
	String hobby=request.getParameter("hobby");
	String year=request.getParameter("year");
%>
이름:<%=name %><br>
나이:<%=age %><br>
성별:<%=gender.equals("1")?"남자":"여자" %><br>
취미:<%=hobby %><br>
출생년도:<%=year %><br>
<h3>모든 취미 정보 조회하기</h3>
<table>
<tr><th>파라미터이름</th><th>파라미터값</th></tr>
<!-- 
	request.getParameterNames() : 파라미터 이름들 리턴
	Enumeration : 반복자. Iterator 반복자의 구버전
	request.getParameterValues(pname) : pname의 파라미터 값들.
 -->
<%
	Enumeration e = request.getParameterNames();
	while(e.hasMoreElements()){ 
		String pname = (String)e.nextElement();
		String[] values = request.getParameterValues(pname);
%>
	<tr><td><%=pname %></td>
		<td><% for (String s : values) { %>
		<%= s %>&nbsp;&nbsp;
		<% } %>
		</td>
	</tr>
	<% } %>
</table>
<% 
String[] hobbies = request.getParameterValues("hobby");
	for(String h : hobbies) {%>
	<%= h %>&nbsp;&nbsp;&nbsp;
<%} %>
</body>
</html>