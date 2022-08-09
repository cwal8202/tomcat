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
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	List<String> result = new ArrayList<>();
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT Name from country;");
		
		while(rs.next()) {
			result.add(rs.getString(1));
			//out.println(result == 1 ? "연결성공" : "연결실패");
		}
		
	} finally {
		if (conn != null) {
			conn.close();
		}
	}
%>
	<ul>
		<li><%= result.get(0) %></li>
		<li><%= result.get(1) %></li>
		<li><%= result.get(2) %></li>
	</ul>

</body>
</html>