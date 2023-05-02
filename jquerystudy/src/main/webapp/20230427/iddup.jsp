<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver" 
	url = "jdbc:mariadb://localhost:3306/gdudb"
	user = "gdu" password="1234"/>
	
<sql:query var="rs" dataSource="${conn}">
	select * from member where id=?
	<sql:param>${param.id}</sql:param> <%-- 순서 : 1 => 첫번째 '?' 파라미터 값 --%>
</sql:query>
<c:if test="${! empty rs.rows}">
	<h1 id="result" class="find" style="color:red;" >아이디가 존재합니다.</h1>
</c:if>
<c:if test="${empty rs.rows}">
	<h1 id="result" class="notfind" >사용가능한 아이디입니다</h1>
</c:if>