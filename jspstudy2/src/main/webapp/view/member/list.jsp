<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--/jspstudy2/src/main/webapp/view/member/list.jsp --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<script type="text/javascript">
function selectAll(selectAll)  {
     const checkboxes 
          = document.getElementsByName('idchks');
     
     checkboxes.forEach((checkbox) => {
       checkbox.checked = selectAll.checked;
     })
   }
</script>

</head>
<body>
<div class="container">
<h2 id="center">회원 목록</h2>
<form name= "f" method="post" action="mailForm">
<table class="table talbe-hover">
<tr><th>아이디</th><th>사진</th><th>이름</th><th>성별</th><th>전화</th><th/>
<th><input type='checkbox' name='idchks' value='selectall' onchange='selectAll(this)'>
</th>
</tr>
<c:forEach var = "m" items="${list}">
<tr><td><a href = "info?id=${m.id}">${m.id}</a></td>
<td><img src ="/jspstudy2/picture/${m.picture}" width = "10%"></td>
<td>${m.name}</td><td>${m.gender==1?"남":"여"}</td>
<td>${m.tel}</td>
<td><a href = "updateForm?id=${m.id}">수정</a>&nbsp;&nbsp;&nbsp;
<c:if test="${m.id != 'admin'}">
    <a href = "deleteForm?id=${m.id}">강제탈퇴</a>
</c:if>
</td>
<td>
<input type='checkbox' name='idchks' value="${m.id}"/>
<br/>
</td>
</tr>
</c:forEach>
</table>
<div id="center">
<button type="submit" class="btn btn-dark" id="center">메일보내기</button>
</div>
</form>
</div>
</body></html>