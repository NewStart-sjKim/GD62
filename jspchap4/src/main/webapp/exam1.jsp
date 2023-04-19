<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String kbn = request.getParameter("kbn");
	int sum = 0;
	switch(kbn){
	case "0" : for(int i=1;i<=num;i++) sum +=i; break;
	case "1" : for(int i=1;i<=num;i+=2) sum +=i; break;
	case "2" : for(int i=2;i<=num;i+=2) sum +=i; break;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1부터<%=num %>까지의 합</title>
</head>
<body>
<%=num %>까지의 <%=kbn.equals("0")?"합":kbn.equals("1")?"홀수합":"짝수합" %>:<%=sum %>
</body>
</html>