<%--
  Created by IntelliJ IDEA.
  User: 10184
  Date: 2017/12/21
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="user/login.do" method="post">
    用户名：<input type="text" name="name" value="${user.name}" /><br/>
    密码：<input type="password" name="pwd" value="${user.pwd }"/><br/>
    <input type="submit" value="登录" /><span style="color: red;">${error}</span>
</form>
</body>
</html>
