<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자가 볼 페이지</title>
</head>
<body>
	<P>정보</P>
	<P>연산의 결과</P>
<%-- 	<%= request.getParameter("result") %> --%>
	<%-- <%= application.getAttribute("result") %>--%>
		<%= request.getAttribute("result") %>
</body>
</html>