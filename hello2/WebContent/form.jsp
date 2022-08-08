<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/context_root/requestInfo.jsp" method = "post">
		<label>이름<input type = "text" placeholder="이름 입력하세요" name = "name"></label>
		<label>나이<input type = "number" name = "age"></label>
		<label>남자<input type = "radio" name = "gender" value = "male"></label>
		<label>여자<input type = "radio" name = "gender" value = "female"></label>
		<label><input type = "checkbox" name = "hobby" value = "java">자바</label>
		<label><input type = "checkbox" name = "hobby" value = "html">에이치티엠엘</label>
		<label><input type = "checkbox" name = "hobby" value = "css">씨에스에스</label>
		<label><input type = "checkbox" name = "hobby" value = "javascript">자바스크립트</label>
		<label><input type = "submit" value = "입력완료" /></label>
	</form>
	<div class = "result">

	</div>
</body>
</html>
