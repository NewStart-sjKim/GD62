<%@page import="model.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- --%>
<%
	String id= request.getParameter("id");
  
    Member mem = new MemberDao().selectOne(id);
    String msg = null;
    boolean able = true;
	if(mem == null) {
		msg = "사용가능한 아이디 입니다.";
	} else {
		msg = "사용 중인 아이디 입니다.";
	    able = false;
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디중복검색</title>
<link rel="stylesheet" href="../../css/main.css">
<style type="text/css">
   .able { color:green; font-size: 15px;}
   .disable { color:red; font-size: 20px;}
</style>
<body>
<table> 
	<tr><td>아이디</td><td><%=request.getParameter("id") %></td></tr>
 	<tr><td colspan="2"><div id="msg"><%=msg %></div></td></tr>
 	<tr><td colspan="2"><input type="button" value="닫기"  
      onclick="self.close()">
    </td></tr>
</table>    
<script>
  if (<%=able%>) {
	  //joinForm.jsp 페이지의 아이디 부분의 글자색을 초록색으로
	opener.document.f.id.style.color="green"
	//id="msg" 태그에 class 속성 등록
	document.querySelector("#msg").setAttribute("class","able")
  } else {
	  //joinForm.jsp 페이지
	opener.document.f.id.value=""
	document.querySelector("#msg").setAttribute("class","disable")
  }
</script>
</body>
</html>