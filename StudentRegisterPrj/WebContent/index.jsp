<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.content{
width: 80%;
display: inline-block;
background: gray;
}
</style>
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="content">

<form action="saveGrade.jsp">
Name:<input type="text" name="name" /><br>
Teacher Name:<input type="text" name="teacherName" /><br>
<input type="submit" value="Save" />
</form>

</div>
</body>
</html>