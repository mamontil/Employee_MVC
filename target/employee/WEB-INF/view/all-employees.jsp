<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Администратор
  Date: 01.05.2021
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all-employees</title>
    <style>
        th {
            font-size: 130%;
            letter-spacing: 4px;
            padding-right: 6%;
            padding-bottom: 2%;
        }
        .butAdd:focus {
            outline: none;

        }
        a.but {
            text-decoration: none;
        }
        a.but:hover {
            border: solid 2px;
            background: #a9a9a9
        }

    </style>
</head>
<body style="text-align: center;">

<div style="display: inline-block;    margin: auto; position: relative;">
    <h2 style="display: inline-block; padding:4%; box-shadow: 3px 3px 3px 3px; background: darkgrey; border-radius: 25px;">All Employees</h2>
    <br>
    <table style="padding:2%; box-shadow: 3px 3px 3px 3px; background: pink; border-radius: 25px;">
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>

        <c:forEach var="emp" items = "${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
               <a class="but"><input class="butAdd" style="margin: 2%;border: none;padding: 1% 5%;background: #a9a9a9;border-radius: 25px;
    box-shadow: 3px 3px 5px 1px;" type="button" value="Update" onclick="window.location.href = '${updateButton}'"/></a>

                <input class="butAdd" style="margin: 2%;border: none;padding: 1% 5%;background: #a9a9a9;border-radius: 25px;
    box-shadow: 3px 3px 5px 1px;" type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
            </td>
        </tr>

        </c:forEach>

</table>

</div>

<br>
<input class="butAdd" style="margin: 2%;border: none;padding: 1% 5%;background: #79da7978;border-radius: 25px;
    box-shadow: 3px 3px 5px 3px;" type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>



</body>
</html>
