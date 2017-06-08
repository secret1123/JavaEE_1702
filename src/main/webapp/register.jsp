<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
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
    out.print(nick + "<br>");
    String mobile = request.getParameter("mobile");
    out.print(mobile + "<br>");
    String password = request.getParameter("password");
    out.print(password + "<br>");

    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=system");
    String sql = "INSERT INTO db_javaee.user VALUE (NULL ,?,?,?)";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1,nick);
    statement.setString(2,mobile);
    statement.setString(3,password);
    statement.executeUpdate();

    statement.close();
    connection.close();

    response.sendRedirect("index.jsp");
%>
</body>
</html>
