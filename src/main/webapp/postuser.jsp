<%--
  Created by IntelliJ IDEA.
  User: latro
  Date: 11.12.2023
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<!--HomeTaskJSP4-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomeTaskJSP4</title>
</head>
<body>
<table>
    <h1>ПРИВЕТ!</h1>
  <tr>
    <td><strong><p>Имя</p></strong></td>
      <td><%= request.getParameter("name")%></td>
  </tr>
    <tr>
        <td><strong><p>Фамилия</p></strong></td>
        <td><%= request.getParameter("surname")%></td>
    </tr>
    <tr>
        <td><strong><p>Возраст</p></strong></td>
        <td><%= request.getParameter("age")%></td>
    </tr>
    <tr>
        <td><strong><p>Пол</p></strong></td>
        <td><%= request.getParameter("gender")%></td>
    </tr>
    <tr>
        <td><strong><p>Страна проживания</p></strong></td>
        <td><%= request.getParameter("country")%></td>
    </tr>
</table>

</body>
</html>
