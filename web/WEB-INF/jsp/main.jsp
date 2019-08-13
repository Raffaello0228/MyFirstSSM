<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kkt08
  Date: 2019/8/12
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
</head>
<body>
<style type="text/css">
    table{
        border-collapse: collapse;
        border-spacing: 0;
        border-left: 1px solid #888888;
        border-top: 1px solid #888888;
        background: #efefef;
    }
    th,td{
        border-right: 1px solid #888888;
        border-bottom:1px solid #888888;
        padding:5px 15px;
    }
    th{
        font-weight:bold;
        background:#cccccc;
    }
</style>
<h3>欢迎登录，${sessionScope.user.username}</h3>
<hr>
<table>
    <tr>
        <th>封面</th>
        <th>书名</th>
        <th>作者</th>
        <th>价格</th>
    </tr>
    <c:forEach items="${requestScope.book_list}" var="book">
        <tr>
            <td><img src="image/${book.image}" height> </td>
            <td>${book.name}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
