<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.bestbright.*" %>
<%@ page import="java.util.*" %>
<%
try{
	String name=request.getParameter("name");
	String tName=request.getParameter("teacherName");
	StudentDao studentDao=new StudentDao();
	Grade g=new Grade(0,name,tName);
	studentDao.saveGrade(g);
	response.setContentType("text/html");
	response.getWriter().print("<h3>successfully saved!</h3>");
	/*List<Grade> gList=studentDao.getGradeList();
	RequestDispatcher requestDispatcher = request.getRequestDispatcher("grade_list.jsp");
	request.setAttribute("gradeList", gList);
	requestDispatcher.forward(request, response);
	*/

}catch(Exception e){
	
}

%>