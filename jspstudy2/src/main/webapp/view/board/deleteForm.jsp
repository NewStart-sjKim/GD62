<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1. 공지사항인 경우 관리자가 아니면 화면 출력 불가
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글삭제</title>
</head>
<body>
	<h2>게시물 삭제</h2>
	<form action="delete" method="post">
		<input type="hidden" name="num" value="${param.num}">
			<label>Password:</label>
		<input type="password" class="w3-input" name="pass">
	<div id="w2-center" style="padding:3px;">
		<button type="submit">게시물삭제</button>
	</div>
	</form>
</body>
</html>