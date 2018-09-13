<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/12
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table table-hover table-striped">
    <thead>
    <tr>
        <th>编号</th>
        <th>账号</th>
        <th>密码</th>

        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${requestScope.get('list')}" varStatus="status">
        <tr>
            <td>${user.uid}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>

            <td>
                <a href="${path}/user/toUpdateUser?id=${user.uid}">更改</a> |
                <a href="<%=appPath%>/user/del/${user.uid}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
