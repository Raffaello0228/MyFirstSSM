<%--
  Created by IntelliJ IDEA.
  User: kkt08
  Date: 2019/8/12
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LoginForm</title>
</head>
<body>
<form action="login" method="post">
    <font color="red">${requestScope.message}</font>
    <table>
        <tr>
            <td><label>用户名：</label></td>
            <td><input type="text" name="loginname"> </td>
        </tr>
        <tr>
            <td><label>密码：</label></td>
            <td><input type="text" name="password"> </td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
</body>
</html>
