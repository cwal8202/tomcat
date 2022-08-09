<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.concurrent.LinkedBlockingDeque"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	// db 연결
	// select

	String continent = request.getParameter("continent");
	
	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	Map<String, Integer> list = new LinkedHashMap<>();
//	List<String> list =new ArrayList<>();
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select name, population from country where continent = '" + continent + "';");
		
		while (rs.next()) {
			String name = rs.getString("name");
			int population = rs.getInt("population");
			list.put(name, population);
		}
	} finally {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	// request 객체에 list를 attribute로 설정하기
 	request.setAttribute("result", list);
	// 다음 페이지로 forward 시키기	
	request.getRequestDispatcher("resultform2.jsp").forward(request, response);
%>
	<!-- 사용자가 대륙 선택할 수 있게
		 선택한 대륙의 국가들의 이름, 인구를 볼 수 있는  (인구 내림차순 정렬) 페이지 -->
</body>
</html>