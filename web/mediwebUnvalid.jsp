<%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Invalid</title>
    <style>
        h5{
            color: red;
        }
    </style>
</head>
<body>
        <%
            String ent=request.getParameter("entry");
            String upd=request.getParameter("update");
        %>
        <h5 align="center"> Wrong Password & ID! Please Check Once</h5>
        <jsp:include page="medicalWeb.jsp"></jsp:include>
</body>
</html>
