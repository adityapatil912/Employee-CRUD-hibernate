<%@page import="com.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 20px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        width: 400px;
        margin: 0 auto;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
</style>

</head>
<body>
<%
    Employee emp = (Employee) request.getAttribute("emp");

    out.print("<form action='UpdateData' method='get'>");

    out.print("Id: <input type='text' value='" + emp.getId() + "' name='id'><br>");

    out.print("Name: <input type='text' value='" + emp.getName() + "' name='name'><br>");

    out.print("Salary: <input type='text' value='" + emp.getSalary() + "' name='salary'><br>");

    out.print("<input type='submit' value='Update'><br>");

    out.print("</form>");
%>

</body>
</html>
