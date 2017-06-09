<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/7
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>home page</h1><%=session.getId()%>
<p>欢迎回来，<%=request.getAttribute("nick")%>。</p>
<a href="logout.jsp">注销</a>
</body>
</html>
