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
		String[] re = request.getParameterValues("num");
		out.println(re.length);
		for (int i = 0; i < re.length; i++) {
			out.println("<img src = './images/chunsik/춘식" + re[i] + ".gif'/>");		
		}
	%>
</body>
</html>