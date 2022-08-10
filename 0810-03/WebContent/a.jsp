<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
등록
<hr />
<form action="./registServlet">
	<label>이름<input type="text" name="name" /></label>
	<label>나이<input type="number" name="age" /></label>
	<label>남<input type="radio" name="gender" value="남자" /></label>
	<label>여<input type="radio" name="gender" value="여자" /></label>
	<input type="submit" value="등록하기" />
</form>
</body>
</html>