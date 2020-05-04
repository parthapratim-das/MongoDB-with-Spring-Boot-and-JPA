<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<meta charset="ISO-8859-1">
<title>Add New Employee</title>
</head>
<body>

		<div align="center">
        <h1>Create New Employee</h1>
        <br />
        <form:form action="save" method="post" command="employee">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Employee - Registration</h2></td>
                </tr>
                <tr>
                    <td>Employee ID:</td>
                    <td><form:input path="id" /></td>
                </tr>
                <tr>
                    <td>Employee Name:</td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Designation:</td>
                    <td><form:input path="designation" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </form:form>
    </div>

</body>
</html>