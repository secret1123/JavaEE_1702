<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/7
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signup page</title>
</head>
<body>
<h1 style="text-align: center;color: cornflowerblue">注册</h1>
<form action="user" method="post" style="text-align: center">
    <input type="hidden" name="action" value="register"><br>
    <input type="text" name="nick" placeholder="昵称"><br>
    <input type="text" name="mobile" placeholder="手机号"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input style="color: forestgreen" type="submit" value="注册">
</form>
<p style="text-align: center;color: firebrick"><%=request.getAttribute("message")!=null?request.getAttribute("message"):""%></p>
<%--<%--%>
    <%--String message = (String) request.getAttribute("message");--%>
    <%--if (message != null) {--%>
        <%--out.print(message);--%>
    <%--}--%>
<%--%>--%>
</body>
</html>
