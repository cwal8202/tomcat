<%@page import="java.util.List"%>
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
	List<String> list = (List<String>)request.getAttribute("continent");
%>	
	<form action="./world1.jsp">
		<select name = "continent">
			<% for (int i = 0; i < list.size(); i++) {
				out.println("<option value ='" + list.get(i) + "'>" + list.get(i) + "</option>");
				}%>
		</select>
		<input type = "submit">
	</form>
</body>
</html>