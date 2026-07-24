<%--
  Created by IntelliJ IDEA.
  User: coo90
  Date: 2026-07-12
  Time: 오후 6:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo List</title>
</head>
<body>
    <div>
        <input type="text" name="tno" value="${dto.tno}" readOnly="true">
    </div>
    <div>
        <input type="text" name="title" value="${dto.title}" readOnly="true">
    </div>
    <div>
        <input type="date" name="dueDate" value="${dto.dueDate}" readOnly="true">
    </div>
    <div>
        <input type="checkbox" name="finished" value="${dto.finished ? "checked" : ""}" readonly>
    </div>
</body>
</html>
