<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>Employee Info</h2>
<br>
<form:form action="save-employee" modelAttribute="employee">
    <form:hidden path="id"/>
    Name: <form:input path="name"/>
    <br>
    Surname: <form:input path="surname"/>
    <br>
    Department: <form:input path="department"/>
    <br>
    Salaru: <form:input path="salary"/>
    <br>
    <input type="submit" value="OK"/>

</form:form>

</body>
</html>
