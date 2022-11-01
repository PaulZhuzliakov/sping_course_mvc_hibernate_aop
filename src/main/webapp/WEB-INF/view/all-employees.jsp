<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>All Employees</h2>
<br><br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="/update-info">
            <c:param name="empId" value="${emp.id}"/>

        </c:url>

        <c:url var="deleteButton" value="/delete-employee">
            <c:param name="empId" value="${emp.id}"/>

        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="update" onclick="window.location.href ='${updateButton}'">
                <input type="button" value="delete" onclick="window.location.href ='${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>

<br><br>

<input type="button" value="add employee" placeholder="daef"
onclick="window.location.href ='add-new-employee'"/>

</body>
</html>
