<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fn_join_function
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 21:43
  Description(描述)：
  JSTL fn:join() 函数作用与 fn:split() 相反，用来将数组中的所有元素利用指定的分隔符来连接成一个字符串。
JSP fn:join() 函数的语法如下：
String fn:join(array[] , String separator)
其中，array 表示源数组，separator 是指定的分隔符。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    <%
        String[] str = new String[100];
        for (int i = 0; i < 100; i++)
        {
            str[i] = String.valueOf(i);
        }
        session.setAttribute("str", str);
    %>
    输出：
    <c:forEach items="${sessionScope.str}" var="i" varStatus="varstatusName" begin="0" end="100" step="1">
        <c:if test="${varstatusName.index%10==0}">
            <br/>
        </c:if>
        <c:out value="${i}"/>
    </c:forEach>
    <br>
    <br/>
    0到99的数字：
    <c:out value="${fn:join(str, '、')}" escapeXml="true" default="null"/>
</h3>
</body>
</html>
