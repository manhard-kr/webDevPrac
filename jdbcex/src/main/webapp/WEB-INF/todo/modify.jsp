<%--
  Created by IntelliJ IDEA.
  User: coo90
  Date: 2026-07-12
  Time: 오후 7:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo Modify/Remove</title>
</head>
<body>
    <form id="form1ll" action="/todo/modify" method="post">
        <div>
            <input type="text" name="tno" value="${dto.tno}" readOnly="true">
        </div>
        <div>
            <input type="text" name="title" value="${dto.title}">
        </div>
        <div>
            <input type="date" name="dueDate" value="${dto.dueDate}">
        </div>
        <div>
            <input type="checkbox" name="finished" value="${dto.finished ? "checked" : ""}">
        </div>

        <div>
            <button type="submit">Modify</button>
        </div>
    </form>

    <form id="form2" method="post" action="/todo/remove">
        <input type="hidden" name="tno" value="${dto.tno}" readOnly="true">
        <div>
            <button type="submit">Remove</button>
        </div>
    </form>
</body>
</html>
