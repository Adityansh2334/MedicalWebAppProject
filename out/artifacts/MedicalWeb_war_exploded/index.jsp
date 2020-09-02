<%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 3:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.css">
    <title>Hello</title>
    <style>
        .container{
            position: absolute;
            width: 600px;
            height: 200px;
            z-index: 15;
            top: 30%;
            left: 35%;
            margin: -100px 0 0 -150px;
        }
        body{
            background-image: url(hospital1.jpg);
            background-size: cover;
        }
        .btn{
            height: fit-content;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 align="center">Hello User</h1>
    <h4>Want to Submit Hospital Data?
        <form action="medicalWeb.jsp" method="get">
        <input type="hidden" name="entry" value="ent">
        <button type="submit" class="btn btn-success">Click Here</button>
        </form>
    </h4>
    <h4>Want to Get Information of Hospital?
        <form action="medicalInfo.jsp" method="get">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <select id="inputState" name="sect" class="form-control" >
                        <option selected>Choose Hospital</option>
                        <option value="1">Yasoda Hospital</option>
                        <option value="2">Krishna Hospital</option>
                        <option value="3">VeerTa Hospital</option>
                    </select>
                </div>
                <button  type="submit" class="btn btn-success">Get Info</button>
            </div>
        </form>
    </h4>
    <h4>Want to Update Hospital Information?
        <form action="medicalWeb.jsp" method="get">
            <input type="hidden" name="update" value="upd">
            <button type="submit" class="btn btn-success">Click Here</button>
        </form>
    </h4>
</div>

</body>
</html>
