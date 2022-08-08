<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("사용자가 jsp 페이지를 요청했습니다");
		int a = 10;
	%>
	<p>jsp 페이지 입니다.</p>
	<Strong><%= java.time.LocalTime.now() %></Strong>
	<p>a 값은 <%= a %>입니다</p>
	<%--
		<p>b 값은 <%= b %>입니다</p>
		<%
			int b = 10;
		%>
	--%>	
</body>
</html>