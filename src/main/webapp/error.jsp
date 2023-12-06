<%--
  Created by IntelliJ IDEA.
  User: latro
  Date: 06.12.2023
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String message = pageContext.getException().getMessage();
String exceptionType = pageContext.getException().getClass().toString();%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Тип исключения - <%=exceptionType%> </h1>
<h1> Содержимое - <%=message%></h1>
</body>
</html>
