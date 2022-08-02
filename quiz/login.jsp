<%-- 
    Document   : login
    Created on : Jul 22, 2021, 6:31:41 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Festive&display=swap" rel="stylesheet">
    <style>
        *{
    margin: 0;
    padding: 0;
}
body{
    background: #BAB2B5;
}
h1{
    font-family:  'Festive', cursive ;
    text-align: center;
    margin-top: 50px;
    font-size : 60px;
    color : #AC3B61;
}
.container{
    top: 50%;
    left : 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    background: #BAB2B5;
}
.card{
    padding: 60px 40px 50px 40px;
    background : #EEE2Dc;
    border-radius : 10px;
}
.name{
    border : none;
    background: transparent;
    border-bottom : 1px solid navy;
    padding: 6px;
    margin-bottom: 20px;
    color: grey;
}
.submit{
    border-radius: 20px;
    padding: 10px 20px;
    background: #f7f1ee;
    color: navy;
    margin-top: 30px;
    border: none;
    outline: none;
    display: block;
    place-items: center;
}
button:hover{
    background-color: beige;
}
a:link,  a:visited {
    color: navy;
    text-decoration: none;
    display: inline-block;
}
a:hover,  a:active {
    color:  #006bb3;
  }
img{
    border-radius: 50%;
    position: absolute;
    margin-left : 100px;
    margin-top : -40px;
}
    </style>
</head>
<body>
    <h1>Login to Aprender</h1>
    <div class = "container">
        <img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXmPR3TXffOCsLvowIVmYSiABXh4D7bALiZ37n5ReYNLfoa8u9OFVG8uWgi64HWgaXIIE&usqp=CAU" height = "70" width = "70">
        <div class = "card">
            <form action ="LoginSer">
            <input type = "text" placeholder="Enter Email" id = "email" name ="email" class = "name"><br>
            <input type = "password" placeholder="Password" id = "password" name = "password" class = "name"><br>
            <a href= "register.jsp" target = "_blank">Not a member? Register Now!</a><br>
            <button type="submit" id = "submit" class = "submit">Login</button>
            </form>
        </div>
    </div>
</body>