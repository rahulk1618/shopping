<%--
  Created by IntelliJ IDEA.
  User: kotha
  Date: 8/16/2018
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-image: url("http://getwallpapers.com/wallpaper/full/1/5/5/1009008-free-old-trafford-wallpaper-1920x1080-for-windows-10.jpg");
            background-size: cover;
        }

        .login-box {
            width: 280px;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .login-box h1 {
            float: left;
            font-size: 8px;
            border-bottom: aquamarine;
            margin-bottom: 50px;
            padding: 13px;
        }

        .textbox {
            width: 100%;
            overflow: hidden;
            font-size: 20px;
            padding: 8px;
            margin: 8px;
            /*border-bottom: 1px solid aquamarine;*/
        }
    </style>
</head>
<body>

<form action="Logindetails" method="post">
<div class="login-box">
    <h1>Registration Page</h1>

    <div class="textbox">
        <i class="material-icons" style="font-size:21px;color: white">person</i>
        <input type="text" placeholder="username" name="username" required> <br>
    </div>
    <div class="textbox">
        <i class="fa fa-gear fa-spin" style="font-size:21px; color: white"></i>
        <input type="password" placeholder="password" name="password" required> <br>
    </div>
    <div class="textbox">
        <input type="submit" value="Login"></div>
</div>
</form>

</body>
</html>
