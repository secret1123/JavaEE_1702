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
<h1>注册</h1>
<form action="register.jsp" method="post">
    <input type="text" name="nick" placeholder="昵称"><br>
    <input type="text" name="mobile" placeholder="手机号"><br>
    <input type="password" name="password" placeholder="密码"><br>
    hobbies:
    <input type="checkbox" name="hobbies" value="TV">TV
    <input type="checkbox" name="hobbies" value="Movie">Movie
    <input type="checkbox" name="hobbies" value="Game">Game<br>
    cities:
    <select name="cities" multiple="multiple">
        <option value="Beijing">北京</option>
        <option value="Shanghai">上海</option>
        <option value="Guangzhou">广州</option>
    </select><br>
    <input type="submit" value="注册">
</form>
<p><%=request.getAttribute("message")!=null?request.getAttribute("message"):""%></p>
<%--<%--%>
    <%--String message = (String) request.getAttribute("message");--%>
    <%--if (message != null) {--%>
        <%--out.print(message);--%>
    <%--}--%>
<%--%>--%>
</body>
</html>
