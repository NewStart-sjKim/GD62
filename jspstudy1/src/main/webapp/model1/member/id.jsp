<%@page import="model.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1. 파라미터값 저장(email,tel)
	2. db에서 두개의 파라미터를 이용하여 id값 리턴해주는 함수
	   id MemberDao.idSearch(email,tel)
	3. id 검증
		-id 존재 : 화면에 뒤쪽 2자만 ** 표시하여 화면에 출력
		-id 없음 : id가 없습니다. 메세지 출력 후 현재화면을 idForm.jsp 페이지 이동
--%>
<%
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	MemberDao dao = new MemberDao();
	String id = dao.idSearch(email,tel);
	if(id != null){//id 찾은 경우
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="../../css/main.css">
<script type="text/javascript">
	function idsend(id){		
	opener.document.f.id.value=id;
	self.close();
	}
</script>
</head>
<body>
	<table>
  <tr><th>아이디</th>
    <td><%=id.substring(0,id.length()-2)+"**" %></td>
  </tr>
  <tr><td colspan="2">
     <input type="button" value="아이디전송" 
     onclick="idsend('idsend('<%=id.substring(0,id.length()-2) %>')">
  </td>
  </tr>
</table>
</body>
</html>
<% } else { %> 
<script>
	alert("정보에 맞는 아이디를 찾을 수 없습니다");
	location.href="idForm.jsp";
</script>
<% } %>