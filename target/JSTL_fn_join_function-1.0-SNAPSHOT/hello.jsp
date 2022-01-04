<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fn_join_function
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 21:43
  Description(描述)： 无
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
