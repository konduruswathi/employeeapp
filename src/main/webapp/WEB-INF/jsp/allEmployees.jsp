<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee Details</title>
</head>
<body bgcolor="cyan">
<h1>All Employee Details</h1>

<table border="1">
<thead>
<tr>
<th>Employee Id</th><br>
<th>Employee Name</th><br>
<th>Employee Department</th><br>
<th>Employee Salary</th><br>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<c:forEach var="employee" items="${allEmployees}">
<tr>
<td>${employee.employeeId}</td>
<td>${employee.employeeName}</td>
<td>${employee.employeeDepartment}</td>
<td>${employee.employeeSalary}</td>
<td><a href="editEmployeePage/${employee.employeeId}">Edit</a></td>
<td><a href="deleteEmployee/${employee.employeeId}">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
