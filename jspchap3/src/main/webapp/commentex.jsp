<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 에서 사용되는 주석 3가지</title>
<% String msg = "jsp 주석 예제 입니다"; %>
</head>
<body>
<h1>jsp 에서 사용되는 주석</h1>
<ol>
	<li>jsp 주석 : &lt;%-- jsp 주석 표현 --%&gt;</li>
	<%-- jsp 주석입니다. : jsp 페이지에서만 보여 집니다
				서블릿 변환시 제외되는 부분입니다. 변환된 서블릿 파일에서 보여지지 않습니다.
	 --%>
	 <li>java 주석 : &lr;%//java 한줄 주석 표현 %&gt;<br>
	 	<%	/* java 여러줄 주석 입니다. 자바 주석은 서블릿이 컴파일 될때 주석입니다.
	 		   서블릿 페이지에서 볼수 있습니다 */
	 		   //자바 한줄 주석입니다.
	 		   %><li>
	 <li>html 주석 : %lt; !-- html 주석 표현--&gt;</li>
	 <!-- html 주석입니다. jsp 페이지나, 서블릿에서는 주석이 아닙니다.
	 		브라우저의 소스보기에서 보여집니다. <%= msg %>-->
</ol>
</body>
</html>