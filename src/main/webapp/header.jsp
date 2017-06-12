<%@page language="java" contentType="text/html; charset=utf-8" %>
<div style="text-align: center">
    <hr/>
    JSP的典型例子
    <hr/>
    <pre>
        JSP页面元素
        注释
           HTML注释 <!--  -->
           JSP 隐藏注释 <%--  --%>
           Java 注释  //行注释  /*  块注释  */
        模板元素
            静态HTML元素
        脚本元素
            声明 <%! %>  class 类体内
            小脚本 <%  %>  _jspService()方法体内
            <%--表达式 <%= %> out.print()方法参数--%>
        指令元素
            page指令 <%@page%>
            <%--include指令 <%@ include %>--%>
            <%--taglib指令 <%@ taglib %>--%>
        动作元素
            include动作 <jsp:include page="" />
    </pre>
</div>