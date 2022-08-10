<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	Map<String, Integer> list = (HashMap)request.getAttribute("result");
%>	
<%-- <ul>
<%
	out.println("<li>" + list.keySet() + "/<li>");
%> 
<%	
	out.println("<li>" + list.get(list.keySet()) + "/<li>");

%>  --%>
 <ul>
   <%
/*    for (int i = 0; i < list.keySet().size(); i++) {
	   int population = list.get(list.keySet());
	   out.println("나라" + list.keySet() + "인구" + population);
	   
   }	 */
      for(String key : list.keySet()) {	//list.keySet() 자체가 배열이다.
      int population = list.get(key);
      out.println("<li>" + key + " : " + population + "</li>");
     }
   %>
</ul>
<%--  			<% for (int i = 0; i < list.size(); i++) {
				out.println("<li>" + list.keySet()+ "</li>");
				out.println("<li>" + list.get(i) + "</li>");
				}%>  --%>
</body>
</html>