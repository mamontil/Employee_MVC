<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Администратор
  Date: 02.05.2021
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>employee-info</title>
    <style>
        .butAdd:focus {
            outline: none;

        }

    </style>
</head>
<body style="text-align: center;">
<h2 style="display: inline-block; padding:4%; box-shadow: 3px 3px 3px 3px; background: darkgrey; border-radius: 25px;">Employee - Info</h2>
<br>
<form:form  style="display: inline-grid;padding:2%; box-shadow: 3px 3px 3px 3px; background: pink; border-radius: 25px;" action="saveEmployee" modelAttribute="employee">
    <form:hidden path="id"/>
    Name <form:input path="name"/>
    Surame <form:input path="surname"/>
    Department <form:input path="department"/>
    Salary <form:input path="salary"/>

<input class="butAdd" style="margin: 15%;border: none;padding: 1% 5%;background: #79da7978;border-radius: 25px;
    box-shadow: 3px 3px 5px 3px;" type="submit" value="OK">
</form:form>
</body>
</html>
