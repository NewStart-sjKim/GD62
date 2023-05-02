<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
/jsoupstudy/src/main/webapp/jsoup1.jsp 
jsoup 파일 다운받아서 립에 넣기
https://www.koreaexim.go.kr/wg/HPHKWG057M01 => 한국수출입 은행 사이트
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수출입은행 환율 정보 조회하기</title>
<style type="text/css">
	table{
		border-collapse : collapse;
	}
	table,td,th {
		border : 2px solid grey;
	}
</style>
</head>
<body>
<%
	String url = "https://www.koreaexim.go.kr/wg/HPHKWG057M01";
	String line = "";
	Document doc = null;
	try {
		doc = Jsoup.connect(url).get();//url을 접속하여 문서를 지정
		Elements e1 = doc.select("table");//doc에서 table 태그들 선택
		for(Element ele : e1) { //table 태그를 한개씩 조회
			String temp = ele.html(); //table 태그 하위의 태그들을 문자열로 리턴
			System.out.println("=================");
			System.out.println(temp);
			line += temp;
		}
	} catch(IOException e){
		e.printStackTrace();
	}
%>
<table><%=line %></table>
</body>
</html>