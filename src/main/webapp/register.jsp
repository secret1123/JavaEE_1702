<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/7
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register.jsp</title>
</head>
<body>
<%
    String nick = request.getParameter("nick");
    out.print(nick);
%>
</body>
</html>
