<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.greenart.CountryDAO"%>
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
	CountryDAO dao = new CountryDAO();
	List<String> list = dao.getContinents();
	
	request.setAttribute("continent", list);
	request.getRequestDispatcher("resultform.jsp").forward(request, response);
%>
</body>
</html>