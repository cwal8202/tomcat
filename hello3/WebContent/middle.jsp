<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
asdf
	<%
		String re = request.getParameter("choice");
		if (re == null || re.length() == 0) {
			response.sendRedirect("./want.jsp?progress=failed");
		} else if (re.equals("person")) {
			response.sendRedirect("./persons.jsp");
		} else if (re.equals("fruit")) {
			response.sendRedirect("./fruit.jsp");
		}
	%>
</body>
</html>