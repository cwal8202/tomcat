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
<!-- ul, li 목록 표현 -->
<%
	List<String> list = (List<String>)request.getAttribute("countries");	// getAttribute는 object타입이므로 down-casting해줬다.
%>
<ul>
<% for (int i = 0; i < list.size(); i++) { %>
	<li><%= list.get(i) %></li>
<% } %>
</ul>

</body>
</html>