<%@page import="java.util.Map"%>
<%@page import="kr.co.greenart.Country"%>
<%@page import="kr.co.greenart.CountryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.catalina.mbeans.ClassNameMBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국가 목록</title>
</head>
<body>
<%
	String continent = request.getParameter("continent");
	CountryDAO dao = new CountryDAO();
	Map<String, Integer> list = dao.getCountryByCountry(continent);
	
	request.setAttribute("result", list);
	request.getRequestDispatcher("resultform2.jsp").forward(request, response);
%>

</body>
</html>