<%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 3:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.css">
    <title>Medical</title>
    <style>
        body{
            background-image: url(hopital.jpg);
            background-size: cover;
        }
    </style>
</head>
<body>

    <%
        String ent=request.getParameter("entry");
        String upd=request.getParameter("update");
        if(ent==null&& upd==null){
            ent= (String) request.getAttribute("Entry");
            upd= (String) request.getAttribute("Update");
        }
    %>
<h1 align="center">Welcome</h1>

<div class="container">
    <h3>Please Sign in </h3>
    <form action="medicalval" method="get">
        <div class="form-group col-md-5">
            <label for="exampleInputEmail1">Medical ID</label>
            <input type="text" class="form-control" name="mid" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter MediID">
            <input type="hidden" name="ent" value="<%= ent%>">
            <input type="hidden" name="upd" value="<%= upd%>">
            <small id="emailHelp" class="form-text text-muted">We'll never share your mediId with anyone else.</small>
        </div>
        <div class="form-group col-md-5">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="pas"id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group  form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-info">SignIn</button>
    </form>

</div>
</body>
</html>
