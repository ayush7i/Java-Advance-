<%-- 
    Document   : newjspfabonacii.jsp
    Created on : 6 Apr, 2021, 2:40:30 AM
    Author     : Harsh Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First Web</title>
        <style type="text/css">
            *
            {
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
            input[type='text'],input[type='password']
            {
                width: 350px;
                height: 30px;
                border-radius: 10px;
            }
            input[type='submit']
            {
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
        <h1 align = 'center'>Registration</h1>
        <a href="Registration.jsp">Registration</a><a href="Login.jsp">Login</a>
        </header>
        <section>
            <div style="margin-left:670px; padding-top:50px; ">
                <form action="Regser" method="post">
                    <input type="text" name="txtname" placeholder="Enter Full Name" required="" />
                    <br><br>
                    <input type="text" name="txtmn" placeholder="Enter Mobile No." required="" />
                    <br><br>
                    <input type="text" name="txtid" placeholder="Set ID" required="" />
                    <br><br>
                    <input type="password" name="pass" placeholder="Set Password" required="" />
                    <br><br>
                    <input type="submit" name="btn" value="SUBMIT" />
                    <br><br>
                </form>
                
                
                
            </div>  
        </section>
        <footer>
            <p align="center">Contact us - 9893171773</p>
        </footer>
    </body>
</html>