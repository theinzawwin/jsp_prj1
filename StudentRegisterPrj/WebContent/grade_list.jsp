<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Grade List</h3>
<table>
<tr>
<th>No</th>
<th>Name</th>
<th>Teacher Name</th>
</tr>
<c:forEach var="g" items="${gradeList}" varStatus="r">
<tr>
<td>${r.count}</td>
<td>${g.name }</td>
<td>${g.teacherName}</td>
</tr>
</c:forEach>
</table>
<select>
<c:forEach var="g" items="${gradeList }">
<option value="${g.id}">${g.name }</option>
</c:forEach>
</select>
</body>
</html>