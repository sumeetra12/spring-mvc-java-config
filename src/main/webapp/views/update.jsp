<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/31/2022
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Teacher: Update</title>
</head>
<body>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3>Update Teacher</h3>
<form method="POST" name="update_teacher" action="<%= request.getContextPath()%>/update/teacher">
    <input hidden="hidden" name="id" value="${id}" type="text" />
    Name: <input name="name" value="${teacher.name}" type="text" /> <br /> <br />
    Address: <input name="address" value="${teacher.address}" type="text" /> <br /> <br />
    Contact num: <input name="contact" value="${teacher.contact}" type="text" /> <br /> <br />
    <input value="Update User" type="submit" />
</form>

</body>
</html>
