<%@ page import="com.bigbrackets.Teacher" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/31/2022
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Teachers</title>
</head>
<body>
<c:if test="${not empty msg}">
    ${msg}
</c:if>

<a href="/addTeacher" > Add Teacher</a>

<c:choose>
    <c:when test="${teachers != null}">
        <h3>List of Teachers</h3>
        <table class="table">
            <thead>
            <tr>
                <th>SN</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="t" items="${teachers}" varStatus="counter">

                <tr>
                    <td>${counter.count}</td>
                    <td>${t.name}</td>
                    <td>${t.address}</td>
                    <td>${t.contact}</td>
                    <td>
                        <a href="<%= request.getContextPath()%>/update/teacher/${t.id}">Update</a>
                        &nbsp;
                        <a href="<%= request.getContextPath()%>/delete/teacher/${t.id}"
                           onclick="return confirm('Do you want to delete?')">Delete</a>
                    </td>
                </tr>

            </c:forEach>

            </tbody>
        </table>
    </c:when>

    <c:otherwise>
        No Teacher found in database!
    </c:otherwise>

</c:choose>
</body>
</html>
