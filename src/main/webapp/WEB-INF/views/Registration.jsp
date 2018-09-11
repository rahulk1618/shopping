<%--
  Created by IntelliJ IDEA.
  User: kotha
  Date: 8/16/2018
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>Registration Page</title>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-image: url("https://i.pinimg.com/originals/3a/55/4a/3a554ada28ead0a055b55823a3a80c95.jpg");
            background-size: cover;
        }

        .register-box {
            width: 280px;
            position: relative;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        /*.login-box h1{*/
        /*float: left;*/
        /*font-size: 40px;*/
        /*border-bottom: aquamarine;*/
        /*margin-bottom: 50px;*/
        /*padding: 13px;*/
        /*}*/
        .textbox {
            width: 100%;
            overflow: hidden;
            font-size: 20px;
            padding: 3px;
            margin: 8px;
            /*border-bottom: 1px solid aquamarine;*/
        }
    </style>

</head>
<body>


<div class="register-box">
    <center>

        <form action="Registrationdetails" method="post">
            <br>
            <br>
            <br>
            <div class="textbox">
            <i class="material-icons" style="font-size:21px; color: white;">border_color</i>
            <input type="text" placeholder="first name" name="firstname" required> <br>
            </div>
            <div class="textbox">
            <i class="material-icons" style="font-size:21px; color: white;">border_color</i>
            <input type="text" placeholder="last name" name="lastname" required> <br>
            </div>
            <div class="textbox">
            <i class="fa fa-intersex" style="font-size:21px;color: white"></i>
            <input type="text" placeholder="Gender" name="gender" required> <br>
            </div>
            <div class="textbox">
            <i class="material-icons" style="font-size:21px; color: white">mail</i>
            <input type="email" placeholder="Email" name="email" required> <br>
            </div>
            <div class="textbox">
                <i class="material-icons" style="font-size:21px; color: white">person_add</i>
                <input type="text" placeholder="Username" name="username" required> <br>
            </div>

            <div class="textbox">
                <i class="fa fa-gear fa-spin" style="font-size:21px; color: white"></i>
                <input type="password" placeholder="password" name="password" required> <br>
            </div>

            <div class="textbox">
                <input type="submit" value="Registration">
            </div>
        </form>

    </center>
</div>
</body>
</html>
