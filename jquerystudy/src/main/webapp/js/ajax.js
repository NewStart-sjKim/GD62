/*
/jquerystudy/src/main/webapp/js/ajax.js
 */
//ajax("test.txt", null, getMax, "GET")
function ajax(url,params,callback,method) {
   const xhttp = new XMLHttpRequest() //ajax 객체 생성
   method = method.toUpperCase()
   if(method != "POST") {   //POST 방식이 아닌 경우 무조건 GET방식 전송
         method = "GET" //
   }
   if(method == "GET") {
         url = url + "?" + params //GET 방식인 경우 url에 파라미터를 붙여 서버로 전송
   }
   //true : 기본값. 비동기 방식으로 전송
   xhttp.open(method,url,true)
   //POST 를 대비하여 헤더 설정
   xhttp.setRequestHeader("Content-type",
            "application/x-www-form-urlencoded;charset=UTF-8")
   xhttp.send(method == 'POST'?params:null) //xhttp.send(null)
   xhttp.onreadystatechange = callback //콜백함수등록(getMax 함수)
}