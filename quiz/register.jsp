<%-- 
    Document   : register
    Created on : Jul 22, 2021, 6:32:25 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Registration</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Vollkorn&display=swap" rel="stylesheet">
    <style>
        *{
    margin : 0;
    padding: 0;
}
body{
    background-color: #BAB2b5;
    font-family: sans-serif;
    margin-top: 40px;
}
.regform{
    width :800px;
    background-color : #EDC7B7;
    margin: auto;
    color: #AC3B61;
    padding: 10px 0px 10px 0px;
    text-align: center;
    border-radius: 15px 15px 0px 0px;  
    font-family: 'Acme', sans-serif;
}
.main{
    background-color: #EEE2DC;;
    width : 800px;
    margin: auto;
    margin-bottom: 50px;
}
form{
    padding : 10px;
}
#name{
    width: 100%;
    height: 100px;
}
.name{
    margin-left: 25px;
    margin-top: 30px;
    width: 125px;
    color: #123C69;
    font-size: 18px;
    font-weight: 700;
    font-family: 'Vollkorn', serif;
}
.firstname{
    position: relative;
    left: 200px;
    top: -37px;
    line-height: 40px;
    border-radius: 6px;
    padding: 0 22px;
    font-size: 16px;
    background-color: #f7f1ee;
}
.lastname{
    position: relative;
    left: 417px;
    top: -80px;
    line-height: 40px;
    border-radius: 6px;
    padding: 0 22px;
    font-size: 16px;
    background-color: #f7f1ee;
}
.firstlabel{
    position: relative;
    color: #AC3B61;
    text-transform: capitalize;
    font-size: 14px;
    left: 203px;
    top: -45px;
}
.lastlabel{
    position: relative;
    color: #AC3B61;
    text-transform: capitalize;
    font-size: 14px;
    left: 175px;
    top: -45px;
}
.dob{
    position: relative;
    left: 200px;
    top: -37px;
    line-height: 40px;
    width: 480px;
    border-radius: 6px;
    padding: 0 22px;
    background-color: #f7f1ee;
    color: #AC3B61;
}
.email{
    position:relative;
    left: 200px;
    top : -37px;
    line-height: 40px;
    width: 480px;
    border-radius: 6px;
    padding: 0 22px;
    font-size: 16px;
    color : #AC3B61;
    background-color: #f7f1ee;
}
.code{
    position:relative;
    left: 200px;
    top : -37px;
    line-height: 40px;
    width: 95px;
    border-radius: 6px;
    padding: 0 22px;
    font-size: 16px;
    color : #AC3B61;
    background-color: #f7f1ee;
}
.number{
    position:relative;
    left: 200px;
    top : -37px;
    line-height: 40px;
    width: 255px;
    border-radius: 6px;
    padding: 0 22px;
    font-size: 16px;
    color : #AC3B61;
    background-color: #f7f1ee;
}
.area_code{
    position: relative;
    color: #AC3B61;
    text-transform: capitalize;
    font-size: 16px;
    left: 54px;
    top: -4px;
}
.phone-number{
    position: relative;
    color: #AC3B61;
    text-transform: capitalize;
    font-size: 16px;
    left: -100px;
    top: -2px;
}
.password{
    position:relative;
    left: 200px;
    top : -37px;
    line-height: 40px;
    width: 480px;
    border-radius: 6px;
    padding: 0 22px;
    font-size: 16px;
    color : #AC3B61;
    background-color: #f7f1ee;
}
button{
    background-color: #f7f1ee;
    display: block;
    margin: 20px 0 0 20px;
    text-align: center;
    border-radius: 12px;
    border: 2px solid #366473;
    padding : 14px 110px;
    outline: none;
    color: #AC3B61;
    cursor: pointer;
    transition: 0.25px;
    font-size: 15px;
}
button:hover{
    background-color: beige;
}


    </style>
</head>
<body>
    <div class = "regform"><h1>Registration</h1></div>       
    <div class="main">
        <form action = "RegisterSer">
            <div id="name">
                <h2 class="name">Name</h2>
                <input class="firstname" type ="text" name="firstname" id = "fname"><br>
                <label class = "firstlabel">first name</label>
                <input class="lastname" type ="text" name="lastname" id = "lname">
                <label class = "lastlabel">last name</label>
            </div>

            <h2 class = "name">Date of Birth</h2>
            <input class="dob" type = "date" name = "dob" id = "dob">

            <h2 class="name">Email</h2>
            <input class = "email" type = "email" name = "email" id = 'email' required>

            <h2 class= "name">Phone</h2>
            <input class = "code" type = "text" name = "area_code" id = "phno">
            <label class = "area_code">Area Code</label>
            <input class = "number" type = "text" name = "phone" id = "phno">
            <label class = "phone-number">Phone Number</label>

            <h2 class = "name">Create_Password</h2>
            <input class="password" type="password" name = "password" id = "password">

            <button type="submit" id= "submit" class = "submit">Register Now</button>
        </form>
    </div>
    
</body>
