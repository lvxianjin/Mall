<%--
  Created by IntelliJ IDEA.
  User: 10184
  Date: 2018/1/8
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="/addUser.html" method="get">
    <input type="text" name="phone">
    <input type="text" name="code"> <input type="button" value="验证码">
    <input type="submit" value="提交">
</form>
</body>
</html>
