<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath(); %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="<%=path%>/load.html" method="post">
    <input type="hidden" name="pageFrom" value=<%=request.getAttribute("pathFrom")%>/>
    用户名：<input type="text" name="account" /><br/>
    密码：<input type="password" name="password" /><br/>
    <input type="submit" value="登录" onclick="javascript:window.history.back(-1);"/>
</form>
</body>
</html>