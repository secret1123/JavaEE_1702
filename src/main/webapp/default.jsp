<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/6
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1 class="h1">首页</h1>
<form action="user" method="post" style="text-align: center">
    <input type="hidden" name="action" value="login">
    <input type="text" name="mobile" placeholder="手机号"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input style="color: forestgreen" type="submit" placeholder="登录">
</form>
<p class="p">${requestScope.message}</p>
<a class="a" href="signup.jsp">注册</a>
</body>
</html>
