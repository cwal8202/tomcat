<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뭘 보고 싶니?</title>
</head>
<body>
	<%= request.getParameter("progress") %>
	<form action = "./middle.jsp" method = "post">
		<input type = "radio" value = "person" name = "choice"/> 사람
		<input type = "radio" value = "fruit" name = "choice"/> 과일
		<input type = "submit"/> 사과
	</form>
</body>
</html>