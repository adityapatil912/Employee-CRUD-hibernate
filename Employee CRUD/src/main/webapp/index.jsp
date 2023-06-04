<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 20px;
    }

    .content-box {
        background-color: #f1f1f1;
        padding: 20px;
        border-radius: 5px;
        width: 400px;
        margin: 0 auto;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    form {
        margin-bottom: 20px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: black;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .center {
        text-align: center;
    }

    .show-all-btn {
        display: inline-block;
        background-color: gray;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        text-decoration: none;
        cursor: pointer;
    }

    .show-all-btn:hover {
        background-color: #004A70;
    }
</style>

</head>
<body>
    <div class="content-box">
        <form action="EmployeeServlet" method="get">
            Name: <input type="text" name="name"><br>
            Salary: <input type="text" name="salary"><br>
            <input type="submit" value="Submit">
        </form>

        <div class="center">
            <b>
                <a href="displayEmployee.jsp" class="show-all-btn">SHOW ALL</a>
            </b>
        </div>
    </div>
</body>
</html>
