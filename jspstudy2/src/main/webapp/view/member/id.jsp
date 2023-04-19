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


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script type="text/javascript">
	function idsend(id){		
	opener.document.f.id.value=id;
	self.close();
	}
</script>
</head>
<body>
<div class="container">
	<table class="table">
  <tr><th>아이디</th>
    <td>${id}**</td>
  </tr>
  <tr><td colspan="2">
     <input type="button" value="아이디전송" 
     onclick="idsend('idsend('${id}')">
  </td></tr>
</table>
</div>
</body>
</html>
