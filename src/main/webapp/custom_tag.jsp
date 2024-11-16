<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${students}" var="s">
${s}<br><br>
</c:forEach>

<sql:setDataSource var="student" driver='com.mysql.jdbc.Driver' url="jdbc:mysql://localhost:3306/sum" user="root" password="********"/>
<sql:query dataSource="${student}" var="Result"> select* from student</sql:query>

<c:forEach items="${Result.rows}" var="rec">
<br><br>
<c:out value="${rec.Roll_No }"></c:out>:<c:out value="${rec.name }"></c:out>:<c:out value="${rec.Program }"></c:out>

</c:forEach>

</body>
</html>