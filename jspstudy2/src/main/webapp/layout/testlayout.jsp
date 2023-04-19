<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title>방명록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1 {font-family: "Montserrat", sans-serif}
img {margin-bottom: -7px}
.w3-row-padding img {margin-bottom: 12px}
</style>
</head>
<body>

<!-- Sidebar -->
<nav class="w3-sidebar w3-black w3-animate-top w3-xxlarge" style="display:none;padding-top:150px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-black w3-xxlarge w3-padding w3-display-topright" style="padding:6px 24px">
    <i class="fa fa-remove fa-fw"></i>
  </a>
  <div class="w3-bar-block w3-center">
    <a href="${path}/test/testlayout" class="w3-bar-item w3-button w3-padding w3-blue">
    	<i class="fa fa-users fa-fw"></i>&nbsp; 홈</a>
    	
    <a href="${path}/test/testForm" class="w3-bar-item w3-button w3-padding">
    	<i class="fa fa-eye fa-fw"></i>&nbsp; 글쓰기</a>
    	
    <a href="${path}/test/testlist" class="w3-bar-item w3-button w3-padding">
   	 	<i class="fa fa-users fa-fw"></i>&nbsp; 방명록</a>
  </div>
</nav>

<!-- !PAGE CONTENT! -->
<div class="w3-content" style="max-width:1500px">

<!-- Header -->
<div class="w3-opacity">
<span class="w3-button w3-xxlarge w3-white w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></span> 
<div class="w3-clear"></div>
<div class="w3-center">
  <h1><b>POLICE</b></h1>
  <p><b>I'm POLICE HAHA</b></p>
  <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()">Toggle Grid Padding</button></p>

<!-- Photo Grid -->
<div class="w3-row" id="myGrid"  style="margin-bottom:128px">
  <div class="w3-third" >
    <img src="${path}/image/POLICE.jpg"  style="width:100%">
    
  </div>

<!-- End Page Content -->
</div>
</div>
</div>

<script>
// Toggle grid padding
function myFunction() {
  var x = document.getElementById("myGrid");
  if (x.className === "w3-row") {
    x.className = "w3-row-padding";
  } else { 
    x.className = x.className.replace("w3-row-padding", "w3-row");
  }
}

// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.width = "100%";
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>