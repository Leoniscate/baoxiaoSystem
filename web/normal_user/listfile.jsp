<%--
  Created by IntelliJ IDEA.
  User: leondon
  Date: 19-5-14
  Time: 上午10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>下载文件显示页面</title>
</head>

<body>
<!-- 遍历Map集合 -->
<c:forEach var="me" items="${fileNameMap}">
    <c:url value="ListFile" var="downurl">
        <c:param name="filename" value="${me.key}"></c:param>
    </c:url>
    ${me.value}<a href="${downurl}">下载</a>
    <br/>
</c:forEach>

<%--<form action="DownloadFile" method="get">--%>
    <input value="xiuBXD_xiu2019051410234175114.jpg">
    <button href="DownloadFile" onclick="expense_details()">下载</button>
<%--</form>--%>
<script>
    function expense_details(expense_num) {
        window.location.href="/MyJavaWeb_war_exploded/DownloadFile?filename=xiuBXD_xiu2019051410234175114.jpg";
    }
</script>
</body>
</html>
