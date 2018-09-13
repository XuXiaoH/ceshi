<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/12
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" name="userForm">
    用户名：<input type="text" name="username"><br>
    密码：<input type="text" name="password"><br>

    <input type="button" value="添加" onclick="addUser()">
</form>

<script type="text/javascript">
    function addUser() {
        var form = document.forms[0];
        form.action = "<%=basePath %>user/addUser";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>
