<%@page import="java.util.List"%>
<%@page import="person.Person"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
목록
<hr />
<%-- <c:if test="${ not empty list }">
		<ul>
			<c:forEach var="personList" items="${ personList }">
				<li>${ personList.name } ${ personList.age } ${ personList.gender }</li>
			</c:forEach>
		</ul>
	</c:if>
 --%>
<%
	List<Person> personList = (List)request.getAttribute("personList");
	for (int i = 0; i < personList.size(); i++) {
		out.println("<li>" + personList.get(i) + "</li>");
	}
%>
	<c:if test="${ not empty personList }"></c:if>	 
		<ul>
			<c:forEach var="p"  items="${requestScope.personList }" >
				<li>${p}</li>
			</c:forEach>
		</ul>

</body>
</html>