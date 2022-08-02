<%-- 
    Document   : quiz
    Created on : Jul 22, 2021, 6:33:14 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Question</title>
    <link rel="stylesheet" href="ques.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Festive&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Vollkorn&display=swap" rel="stylesheet">
</head>
<style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
    font-weight: 300;
}
html{
    font-size: 62.5%;
    background-color: #BAB2B5;
}
h1{
    margin-top: 50px;
    margin-bottom: 50px;
    font-size: 60px;
    font-weight: 1000;
    color: #123C69;
    font-family: 'Festive', cursive ;
}

.main-div{
    width: 100vw;
    min-height: 100vh;
    display: grid;
    place-items: center;
    background-color: #BAB2B5;
}
.inner-div{
    width : 50vw;
    background-color: #EEE2DC;
    padding: 3rem 5rem;
    border-radius: 10px;
    box-shadow: 0 1rem 1rem -0.7rem rgba(0,0,0,0.4);
    margin-bottom: 50px;
}
.inner-div h2{
    font-size: 3.0rem;
    font-weight: 400;
    margin-top: 1rem 0 4rem 0;
    color: #AC3B61;
    font-family: 'Vollkorn', serif;
}
.inner-div li{
    font-size: 2rem;
    margin-top: 1.5rem;
    list-style: none;
    color: #737373;
}
ul{
    padding-bottom: 25px;;
}
input{
    cursor: pointer;
}
#submit , .btn{
    padding: 1rem 3rem;
    outline:none;
    font-size: 2rem;
    font-size: 400;
    display: block;
    margin: auto;
    margin-top: 40px;
    border: none;
    text-transform: uppercase;
    color: #EDC7B7;
    background-color: #123C69;
}
#submit:hover{
    background-color: #003cb3;
}

#logout a:link, #logout a:visited {
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    background-color: #123C69;
  }
  
#logout a:hover, #logout a:active {
    background-color: navy;
  }
#logout{
    text-align: right;
    margin-right: 60px;
    margin-bottom: 40px;
}
</style>
<body>
    <div class = "main-div">
        <h1>Take the Aprender's Quiz!</h1>
        <form action="QuizServ">
        <div class="inner-div">
            <h2 class = "question">1) The &lt;hr&gt; tag in HTML is used for </h2>
            <ul>
                <li>
                    <input type = "radio" name="q1" value="a">new line<br>
                </li>
                <li>
                    <input type = "radio" name="q1" value=b">vertical ruler<br>
                </li>
                <li>
                    <input type = "radio" name="q1" value="c">new paragraph<br>
                </li>
                <li>
                    <input type = "radio" name="q1" value="d">horizontal ruler<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">2) Which of the following attribute is used to provide a unique name to an element?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q2" value="a">Class<br>
                </li>
                <li>
                    <input type = "radio" name="q2" value="b">id<br>
                </li>
                <li>
                    <input type = "radio" name="q2" value="c">type<br>
                </li>
                <li>
                    <input type = "radio" name="q2" value="d">All of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">3) Which of the following HTML tag is used to display the text with scrolling effect?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q3" value="a">&lt;marquee&gt;<br>
                </li>
                <li>
                    <input type = "radio" name="q3" value="b">&lt;scroll&gt;<br>
                </li>
                <li>
                    <input type = "radio" name="q3" value="c">&lt;div&gt;<br>
                </li>


<li>
                    <input type = "radio" name="q3" value="d">None of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">4) Which of the following is the correct way to send mail in HTML?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q4" value="a">&lt;a href = "mailto: xy@y"&gt;<br>
                </li>
                <li>
                    <input type = "radio" name="q4" value="b">&lt;a href = "xy@y"&gt;<br>
                </li>
                <li>
                    <input type = "radio" name="q4" value="c">&lt;mail xy@y&lt;/mail&gt;<br>
                </li>
                <li>
                    <input type = "radio" name="q4" value="d">Any of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">5) A program in HTML can be rendered and read by </h2>
            <ul>
                <li>
                    <input type = "radio" name="q5" value="a">interpreter<br>
                </li>
                <li>
                    <input type = "radio" name="q5" value="b">compiler<br>
                </li>
                <li>
                    <input type = "radio" name="q5" value="c">Server<br>
                </li>
                <li>
                    <input type = "radio" name="q5" value="d">Web browser<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">6) The CSS property used to specify the transparency of an element is </h2>
            <ul>
                <li>
                    <input type = "radio" name="q6" value="a">opacity<br>
                </li>
                <li>
                    <input type = "radio" name="q6" value="b">filter<br>
                </li>
                <li>
                    <input type = "radio" name="q6" value="c">overlay<br>
                </li>
                <li>
                    <input type = "radio" name="q6" value="d">visibility<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">7) Which of the following is used to specify the subscript of text using CSS?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q7" value="a">vertical-align: super<br>
                </li>
                <li>
                    <input type = "radio" name="q7" value="b">vertical-align: sub<br>
                </li>
                <li>
                    <input type = "radio" name="q7" value="c">vertical-align: subscript<br>
                </li>
                <li>
                    <input type = "radio" name="q7" value="d">None of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">8) Which of the following syntax is correct in CSS to make each word of a sentence start with a capital letter?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q8" value="a">text-style : capital;<br>
                </li>
                <li>
                    <input type = "radio" name="q8" value="b">transform : capitalize;<br>
                </li>
                <li>
                    <input type = "radio" name="q8" value="c">text-transform : capital;<br>
                </li>
                <li>
                    <input type = "radio" name="q8" value="d">text-transform : capitalize;<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">9) Which type of JavaScript language is ____</h2>
            <ul>
                <li>
                    <input type = "radio" name="q9" value="a">Object-Oriented<br>
                </li>
                <li>


<input type = "radio" name="q9" value="b">Assembly-language<br>
                </li>
                <li>
                    <input type = "radio" name="q9" value="c">Object-Based<br>
                </li>
                <li>
                    <input type = "radio" name="q9" value="d">High-level<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">10) When interpreter encounters an empty statements, what it will do:</h2>
            <ul>
                <li>
                    <input type = "radio" name="q10" value="a">Shows a warning<br>
                </li>
                <li>
                    <input type = "radio" name="q10" value="b">Ignores the statements<br>
                </li>
                <li>
                    <input type = "radio" name="q10" value="c">Prompts to complete the statement<br>
                </li>
                <li>
                    <input type = "radio" name="q10" value="d">Throws an error<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">11) Which of the following variables takes precedence over the others if the names are the same?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q11" value="a">Global variable<br>
                </li>
                <li>
                    <input type = "radio" name="q11" value="b">The local element<br>
                </li>
                <li>
                    <input type = "radio" name="q11" value="c">The two of the above<br>
                </li>
                <li>
                    <input type = "radio" name="q11" value="d">None of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">12) Which of the following option is used as hexadecimal literal beginning?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q12" value="a">00<br>
                </li>
                <li>
                    <input type = "radio" name="q12" value="b">0x<br>
                </li>
                <li>
                    <input type = "radio" name="q12" value="c">0X<br>
                </li>
                <li>
                    <input type = "radio" name="q12" value="d">Both 0x and 0X<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">13) In JavaScript the x===y statement implies that:</h2>
            <ul>
                <li>
                    <input type = "radio" name="q13" value="a">Both x and y are equal in value, type and reference address as well.<br>
                </li>
                <li>
                    <input type = "radio" name="q13" value="b">Both are x and y are equal in value only.<br>
                </li>
                <li>
                    <input type = "radio" name="q13" value="c">Both are equal in the value and data type.<br>
                </li>
                <li>
                    <input type = "radio" name="q13" value="d">Both are not same at all.<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">14) Which of the following is true about servlets?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q14" value="a">Servlets execute within the address space of a Web server.<br>
                </li>
                <li>
                    <input type = "radio" name="q14" value="b">Servlets are platform-independent because they are written in Java.<br>
                </li>
                <li>
                    <input type = "radio" name="q14" value="c">The full functionality of the Java class libraries is available to a servlet.<br>
                </li>
                <li>


<input type = "radio" name="q14" value="d">All of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">15) Which of the following method can be used to get the multiple values of a parameter like checkbox data?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q15" value="a">request.getParameter()<br>
                </li>
                <li>
                    <input type = "radio" name="q15" value="b">request.getParameterValues()<br>
                </li>
                <li>
                    <input type = "radio" name="q15" value="c">request.getParameterNames()<br>
                </li>
                <li>
                    <input type = "radio" name="q15" value="d">>None of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">16) Which of the following are valid servlet filters? </h2>
            <ul>
                <li>
                    <input type = "radio" name="q16" value="a">Authentication Filters.<br>
                </li>
                <li>
                    <input type = "radio" name="q16" value="b">Data compression Filters.<br>
                </li>
                <li>
                    <input type = "radio" name="q16" value="c">Encryption Filters.<br>
                </li>
                <li>
                    <input type = "radio" name="q16" value="d">All of the above.<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">17) Which of the following code sends a cookie in servlet?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q17" value="a">response.addCookie(cookie);<br>
                </li>
                <li>
                    <input type = "radio" name="q17" value="b">response.sendCookie(cookie);<br>
                </li>
                <li>
                    <input type = "radio" name="q17" value="c">response.createCookie(cookie);<br>
                </li>
                <li>
                    <input type = "radio" name="q17" value="d">None of the above<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">18) Request is instance of which class?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q18" value="a">Request<br>
                </li>
                <li>
                    <input type = "radio" name="q18" value="b">HTTPRequest<br>
                </li>
                <li>
                    <input type = "radio" name="q18" value="c">HttpServletRequest<br>
                </li>
                <li>
                    <input type = "radio" name="q18" value="d">ServletRequest<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">19) Which of the following attributes are used in &lt;jsp:include /&gt; tag?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q19" value="a">id , type<br>
                </li>
                <li>
                    <input type = "radio" name="q19" value="d">page , flush<br>
                </li>
                <li>
                    <input type = "radio" name="q19" value="c">type , class<br>
                </li>
                <li>
                    <input type = "radio" name="q19" value="b">type , page<br>
                </li>
            </ul>
            </div>
            <div class="inner-div">
            <h2 class = "question">20) What is Localization?</h2>
            <ul>
                <li>
                    <input type = "radio" name="q20" value="a">Localization refers to creating local content on a website.<br>
                </li>
                <li>


<input type = "radio" name="q20" value="b">Localization refers to adding locale related information to a website.<br>
                </li>
                <li>
                    <input type = "radio" name="q20" value="c">Localization means adding resources to a web site to adapt it to a particular geographical or cultural region for example Hindi translation to a web site.<br>
                </li>
                <li>
                    <input type = "radio" name="q20" value="d">None of the above<br>
                </li>
            </ul>
        </div>
        <input type ="submit" value="Submit test" id = "submit">
        </div></form>
    <div id = "logout">
        <a href="index.html" target="_self">Log out</a>
    </div>
</body>
