<%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
    <link rel="stylesheet" href="bootstrap.css">
</head>
<body>
        <%
            String name = (String) request.getAttribute("Name");
        %>
    <div class="container">
        <h3><%= name%></h3>
    <h3>Data Entered Successfully</h3>
        <a href="index.jsp">
            <button class="btn btn-primary" type="submit" >HOME</button></a>
    </div>
</body>
</html>
