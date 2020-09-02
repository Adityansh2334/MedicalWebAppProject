<%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 3:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <title>Welcome</title>
    <style>
        .container{
            position: absolute;
            width: 500px;
            height: 200px;
            z-index: 15;
            top: 30%;
            left: 40%;
            margin: -100px 0 0 -150px;
        }
        body{
            background-image: url(hospital1.jpg);
            background-size: cover;
        }
    </style>
</head>
<body>

<div class="container">
    <h5>Choose Your Hospital to Update:
        <form action="Updation.jsp" method="get">
                <div class="col-auto my-1">
                    <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
                    <select style="width:300px; " class="custom-select mr-xl-5" name="hos" id="inlineFormCustomSelect">
                        <option selected>Choose...</option>
                        <option value="1">Yasoda Hospital</option>
                        <option value="2">Krishna Hospital</option>
                        <option value="3">VeerTa Modern Hospital </option>
                    </select>
                </div>
            <h5>Choose a Field to Update:
                <div class="col-auto my-1">
                    <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
                    <select style="width:300px; " class="custom-select mr-xl-5" name="field" id="inlineFormCustomSelect">
                        <option selected>Choose...</option>
                        <option value="name">Name</option>
                        <option value="address">Address</option>
                        <option value="sector">Sector </option>
                        <option value="doctor">Total Doctors</option>
                        <option value="staff">Total Staffs</option>
                        <option value="phone">Phone </option>
                        <option value="regeno">Registration Number </option>
                    </select>
                </div>
            </h5>
            <h5>Enter New Data to Update:
                <div class="col-auto my-1">
                    <input type="text" class="form-control col-md-8"name="nwdt" placeholder="Enter New Info" required>
                </div>
            </h5>
                <div class="col-auto my-1">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
        </form>
    </h5>
</div>
</body>
</html>
