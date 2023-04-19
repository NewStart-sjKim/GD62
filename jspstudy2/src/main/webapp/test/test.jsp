<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="UTF-8"/>
	이름 : ${param.name}<br>
	나이 : ${param.age}<br>
	성별 :<c:if test="${ param.gender == 1}">
   			남
	</c:if>
	<c:if test="${ param.gender == 2}">
   		여
	</c:if><br>
	출생연도 :
	(${param.year}년기준): 만${param.age}<br>
	
</body>
</html>