<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
등록
<hr />
<form action="./registServlet" method="post">
	<label>이름<input type="text" name="name" required/></label>
	<label>나이<input type="number" name="age" required/></label>
	<label>남<input type="radio" name="gender" value="남자" required/></label>
	<label>여<input type="radio" name="gender" value="여자" required/></label>
	<input type="submit" value="등록하기" />
	<c:if test="${ not empty errors }">
          <div>
             <c:forEach var="message" items="${ errors }">
                <p>${ message.value }</p>
             </c:forEach>
          </div>
       </c:if>
</form>
</body>
</html>