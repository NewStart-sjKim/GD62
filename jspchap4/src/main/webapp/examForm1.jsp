<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력된 숫자까지의 합 구하기</title>
</head>
<body>
<%-- onsubmit : form 태그의 이벤트
				form 내부의 submit 버튼이 클리된 경우 form 객체에 이벤트 발생
				this : form 객체
	 action 속성의 값이 없으면 현재 페이지를 재요청함  
--%>
<form action="exam1.jsp" method="post" onsubmit="return check_input(0,this)">
	<%-- type=""hidden" : 파라미터값이 존재. 화면의 보여지지는 않음 --%>
	<input type="text" name="num">까지의 합 구하기
	<input type="hidden" name="kbn" value="0">
	<input type="submit" value="합계">
	<%-- this.form : button 객체가 속한 form 객체
			 this : button 객체 --%>
	<input type="button" value="홀수합계" onclick="check_input(1,this.form)">
	<input type="button" value="짝수합계" onclick="check_input(2,this.form)">
</form>
<script type="text/javascript">
	function check_input(kbn,f){
		if(f.num.value == ''){
			alert("숫자를 입력하세요")
			f.num.focus();
			return false;//submit 이벤트 취소 의미
		}
		if(isNaN(f.num.value)){
			alert("숫자만 입력하세요")
			f.num.value=""
			f.num.focus();
			return false;
		}
		f.kbn.value = kbn;
		//return true; //submit 이벤트 진행
		//자바스크립트에서 강제로 submit 하기
		f.submit();
	}
</script>
</body>
</html>