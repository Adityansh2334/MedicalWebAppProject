<%@ page import="com.medical.app.dao.MedicalDao" %><%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Updation</title>
    <link rel="stylesheet" href="bootstrap.css">
</head>
<body>
        <%
            String hos = request.getParameter("hos");
            String filed=request.getParameter("field");
            String data=request.getParameter("nwdt");
            Long id=Long.parseLong(hos);
            MedicalDao medicalDao= MedicalDao.getInstance();
            medicalDao.upddateMedicalDataById(id,filed,data);
        %>
        <h2 align="center">Updation Utility</h2>
    <div class="container">
        <h3>Updtaion Completed Successfully</h3>
        <a href="index.jsp">
            <button type="submit" class="btn btn-success">HOME</button></a>
    </div>
</body>
</html>
