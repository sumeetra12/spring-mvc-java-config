<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/31/2022
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Teacher: Add</title>
</head>
<body>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3>Add Teacher</h3>
<form method="POST" name="add_teacher" action="<%=request.getContextPath()%>/add/teacher">
    Name: <input name="name" value="${name}" type="text" /> <br /> <br />
    Address: <input name="address" value="${address}" type="text" />
    <br /> <br />
    Contact Number: <input name="contact" value="${contact}" type="text" />
    <br /> <br />
    <input value="Add Teacher" type="submit" />
</form>
</body>
</html>
