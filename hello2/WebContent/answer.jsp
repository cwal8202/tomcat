<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	정답일까요?
	</p>
	<%
		String answer = "";
	if (request.getParameter("input").equals("최장호")) {
		answer = request.getParameter("input") + " 이걸 맞추네";
	} else {
		answer = "틀렸습니다";
	}
	%>
	정답 : <%= answer%>		
</body>
</html>