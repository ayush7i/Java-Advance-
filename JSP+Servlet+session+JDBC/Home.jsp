<%-- 
    Document   : Home
    Created on : 2 Apr, 2021, 7:38:08 AM
    Author     : Harsh Verma
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fst website</title>
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
            
            footer{
              height:100px;
                background-color:pink;  
            }
            
        </style>
        
    </head>
    <body>
        <%
            if(session.getAttribute("sessname")==null){
                 response.sendRedirect("Login.jsp");
            }  
        %>
        <header>
            <h1 align="center">Welcome in header part</h1>
            <a href="Home.jsp">Home</a><a href="LogoutSer">Logout</a>
        </header>
        <section>
            <div style="padding-top: 10px;">
                <h1>Welcome <%= session.getAttribute("sessname") %> in Dashboard Page</h1>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dharmraj","root","");
                Statement st = conn.createStatement();
                ResultSet x = st.executeQuery("select * from web");
                out.print("<table border='1' style='background-color:cyan;width:500px;'>");
                out.print("<tr><th>Name</th><th>Mobile_No</th><th>ID</th><th>Password</th></tr>");
                while(x.next())
                {
                    out.print("<tr><td>"+x.getString(1) + "</td><td>"+x.getString(2) +"</td><td>"+ x.getString(3) + "</td><td> "+x.getString(4));
                }
                out.print("</table>");
                x.close();
                %>
            </div>
        </section>
        <footer>
            <h1 align="center">Welcome in footer part</h1>
        </footer>
    </body>
</html>
