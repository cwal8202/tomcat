<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${ requestScope.name1 } </p>
	<p>${ requestScope.name2 } </p>
	<p>${ applicationScope.name3 } </p>
	<p>${ requestScope.name4 } </p>
	<p>${ applicationScope.name4 } </p>
	<hr />
	<p>${ name1 } </p>
	<p>${ name2 } </p>
	<p>${ name3 } </p>
	<p>${ name4 } </p>
		<hr />
	<p>${ null } </p>
</body>
</html>