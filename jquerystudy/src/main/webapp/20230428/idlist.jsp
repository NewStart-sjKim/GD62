<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver" 
	url = "jdbc:mariadb://localhost:3306/gdudb"
	user = "gdu" password="1234"/>
<sql:query var="rs" dataSource="${conn}">
	select * from member where id like ?
	<sql:param>${param.id}%</sql:param>
</sql:query>
<ul>
<%-- data : member 테이블의 한개의 레코드 값 --%>
	<c:forEach var="data" items="${rs.rows}">
		<li>${data.id}</li>
	</c:forEach>
</ul>