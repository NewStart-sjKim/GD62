<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 현재 페이지가 오류 페이지 임 => exception 내장 객체 전달됨. --%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 페이지</title>
</head>
<body>
<h1>입력값을 확인해 주세요</h1>
<h2>숫자만 가능합니다.</h2>
<h2>name 파라미터가 누락 되었습니다.</h2>
<h1>계속 오류 발생시 전산부로 전화 주세요</h1>
<h3>담당자: 홍길동, 전화:1234</h3>
<%= exception.getMessage() %>
<%  exception.printStackTrace(response.getWriter()); %>
</body>
</html>