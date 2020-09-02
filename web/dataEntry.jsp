<%--
  Created by IntelliJ IDEA.
  User: Aditya Kumar
  Date: 8/30/2020
  Time: 4:02 AM
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
    <h1 align="center">Hospital Details Entry [Odisha]</h1>
    <form method="post" action="dataent">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmail4">Hospital Name</label>
                <input type="text" class="form-control" name="nm" id="inputEmail4" placeholder="Hospital Name" required>
            </div>
            <div class="form-group col-md-6">
                <label for="inputState">Sector</label>
                <select id="inputState" name="sect" class="form-control" required>
                    <option selected>Choose...</option>
                    <option value="private">Private</option>
                    <option value="government">Government</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" name="addrs" id="inputAddress" placeholder="1234 Main St" required>
            </div>
            <div class="form-group col-md-6">
                <label for="inputPH">Contact Number</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupPrepend2">+91</span>
                    </div>
                    <input type="tel" class="form-control" name="ph" id="inputPH" aria-describedby="inputGroupPrepend2" maxlength='14'  placeholder="Ex: 8249-0582-01" required>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputCity">Staffs Strength</label>
                <input type="number" name="staf" class="form-control" id="inputCity"  placeholder="Counts" >
            </div>
            <div class="form-group col-md-4">
                <label for="inputDoc">Doctors Strength</label>
                <input type="number" name="doc" class="form-control" id="inputDoc"  placeholder="Counts" >
            </div>
            <div class="form-group col-md-4">
                <label for="inputZip">Reg. Number</label>
                <input type="text" name="rg" class="form-control" id="inputZip"  placeholder="REGD. Number" required>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<script>
    $(document).ready(function () {
        $("#inputPH").keyup(function (e) {
            if($(this).val().length === 14) return;
            if(e.keyCode === 8 || e.keyCode === 37 || e.keyCode === 39) return;
            let newStr = '';
            let groups = $(this).val().split('-');
            for(let i in groups) {
                if (groups[i].length % 4 === 0) {
                    newStr += groups[i] + "-"
                } else {
                    newStr += groups[i];
                }
            }
            $(this).val(newStr);
        });
    })
</script>
</body>
</html>
