<%-- 00
    Document   : Login.jsp
    Created on : 8 Apr, 2021, 8:02:16 AM
    Author     : Harsh Verma
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>First Web</title>
        <style type="text/css">
            *{
                margin:0px;
            }
            header{
                height:100px;
                background-color: pink;
            }
            header a{
                margin-left: 10px;
                font-size: 20px;
                font-weight: bolder;
                text-decoration: none;   
            }
            section{
                height:500px;
                background-color:greenyellow;   
            }
            input[type='text'],input[type='password']{
                width: 350px;
                height: 30px;
                border-radius: 10px;
            }
            input[type='submit']{
                width: 250px;
                height: 30px;
                border-radius: 10px;
                background-color: orange;
            }
            footer{
              height:100px;
                background-color:pink;  
            }
        </style>
    </head>
    <body>
        <header>
            <br>
        <h1 align = 'center'>Login</h1>
        <a href="Registration.jsp">Registration</a><a href="Login.jsp">Login</a>
        </header>
            <div style="margin-left:670px; padding-top:50px; ">
                <form action="LoginSer" method="post">
                    <input type="text" name="txtid" placeholder="EnterID" required="" />
                    <br><br>
                    <input type="password" name="pass" placeholder="Enter Password" required="" />
                    <br><br>
                    <input type="submit" name="btn" value="SUBMIT" />
                    <br><br>
                </form>
            </div>  
            <% session.setAttribute("abc","harsh verma"); %>
        <footer>
            <p align="center">Contact us - 9893171773</p>
        </footer>
    </body> 
</html>