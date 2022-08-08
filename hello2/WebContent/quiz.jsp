<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>다음 문제의 답을 입력하세요.</p>
	<p>문제 주절주절</p>
	<form action = "/context_root/answer.jsp"> 
	<!-- action 속성 값을 설정하여
	 submit 버튼을 누르면 입력값을 처리할 수 있는 페이지로
	  요청 (이동) 사용자가 입력 받을 수 있는 form을 작성하세요 -->
		<input type = "type" name = "input" placeholder = "입력란">
		<input type = "submit">
	</form>
</body>
</html>