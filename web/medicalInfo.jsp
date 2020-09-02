<%@ page import="com.medical.app.dao.MedicalDao" %>
<%@ page import="com.medical.app.dto.MedicalDto" %><%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.css">
    <title>Information</title>
    <style>
        body{
            background-image: url(hospital2.png);
            background-size: cover;
            color: aliceblue;
            text-shadow: 2px 2px 4px rgb(209, 132, 15);
        }
    </style>
</head>
<body>
<%
    String sel=request.getParameter("sect");
    Long id=Long.parseLong(sel);
    MedicalDao medicalDao=MedicalDao.getInstance();
    MedicalDto medicalDto = medicalDao.getMedicalDetailsById(id);
%>
<h1 align="center">___Information___</h1>
<br>
<br>
<div class="container">
    <h5>Medical Name:- &nbsp;  <%=  medicalDto.getMedicalName()%> </h5>
    <br>
    <h5>Medical Address:- &nbsp;  <%= medicalDto.getMedicalAddress()%> </h5>
    <br>
    <h5>Medical Contact No:-&nbsp;  <%= medicalDto.getContactNumber()%></h5>
    <br>
    <h5>Medical Sector:- &nbsp;  <%= medicalDto.getSector()%> </h5>
    <br>
    <h5>Medical Total Staffs:- &nbsp; <%= medicalDto.getStaffCount()%></h5>
    <br>
    <h5>Medical Total Docters:-  &nbsp; <%= medicalDto.getDoctorsCount()%></h5>
    <br>
    <h5>Medical Registration Number:-&nbsp;   <%= medicalDto.getRegistrationNo()%> </h5>
    <a href="index.jsp"><button type="submit" class="btn btn-success">HOME</button></a>
</div>
</body>
</html>
