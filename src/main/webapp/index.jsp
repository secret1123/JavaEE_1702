<%@ page import="java.sql.ResultSet" %>
<%@ page import="demo.model.Student" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/7
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
    <script>
        function del() {
            return confirm('DELETE?');
        }
        function  selectAll(){
            var cb = document.getElementById('cb');
            var items = document.getElementsByClassName('to_be_delete');
            for (var i = 0;i < items.length;i++){
                items[i].checked = cb.checked;
            }
        }
    </script>
</head>
<body>
<c:if test="${sessionScope.nick eq null}">
    <c:redirect url="default.jsp"/>
</c:if>
<h1 class="h1">主页</h1>
<p class="h1">欢迎回来，${sessionScope.nick}。</p>
<a class="a" href="user?action=logout">注销</a>
<hr>
<form style="text-align: center" action="student" method="post">
    <input type="hidden" name="action" value="add">
    <input type="text" name="name" placeholder="姓名"><br>
    <input type="text" name="gender" placeholder="性别"><br>
    <input type="date" name="dob" placeholder="出生日期"><br>
    <input style="text-align: center;color: darkseagreen;" type="submit" value="添加">
</form>
<hr>
<form action="student" method="post">
<input type="hidden" name="action" value="delete">
<table id="table" border="1">
    <c:choose>
        <c:when test="${fn:length(sessionScope.students)eq 0}" >
            <p class="h1">当前没有记录</p>
        </c:when>
        <c:otherwise>
    <tr>
        <th><input id="cb" type="checkbox" onclick="selectAll()">序号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>出生日期</th>
        <th colspan="2">操作</th>
    </tr>
        </c:otherwise>
    </c:choose>
    <c:forEach var="student" items="${sessionScope.students}" varStatus="vs">
        <tr>
            <td><input class="to_be_delete" type="checkbox" name="ids" value="${student.id}">${vs.count}</td>
            <td>${student.name}</td>
            <td>${student.gender}</td>
            <td>${student.dob}</td>
            <td><a href="student?action=queryById&id=${student.id}">编辑</a></td>
            <td><a href="student?action=remove&id=${student.id}" onclick="return del()">删除</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<c:if test="${fn:length(sessionScope.students) ne 0}">
<input class="a" type="submit" value="选择删除" onclick="return del()">
</c:if>
</form>
<hr>
<p class="p">${requestScope.message}</p>
</body>
</html>
