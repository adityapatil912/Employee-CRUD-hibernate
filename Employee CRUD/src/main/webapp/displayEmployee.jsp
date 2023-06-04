<%@page import="com.dao.EmployeeDAOImpl"%>
<%@page import="com.model.Employee"%>
<%@page import="com.dao.EmployeeDAOFactory"%>
<%@page import="com.dao.EmployeeDAO"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display JSP</title>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="table.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>
	<%!EmployeeDAO dao;

	public void init() throws ServletException {

		dao = new EmployeeDAOImpl();

	}%>
	<%
	List<Employee> list = dao.findAllEmplyoees();

	Iterator<Employee> itr = list.iterator();
	%>

	<h1>EMPLOYEE DATA TABLE</h1>


	<div class="container">
		<table class="table">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Salary</th>
				<th>DELETE</th>
				<th>UPDATE</th>
			</tr>

			<%
			while (itr.hasNext()) {

				Employee emp = (Employee) itr.next();
			%>
			<tr>

				<td><%=emp.getId()%></td>

				<td><%=emp.getName()%></td>

				<td><%=emp.getSalary()%></td>

				<td><b> <%
 out.print("<a href='DeleteEmployee?id=" + emp.getId() + "'> DELETE </a>");
 %></b></td>

				<td><b> <%
 out.print("<a href='UpdateEmployee?id=" + emp.getId() + "'> UPDATE </a>");
 %></b></td>

			</tr>

			<%
			}
			%>
		</table>
	</div>
</body>
</html>