<%-- 
    Document   : Converter
    Created on : 13 Apr, 2021, 7:38:18 AM
    Author     : Harsh Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Converter</title>
    </head>
    <body>
        <form action="ConverterSer" method="Post">
            <h1>Converter</h1>
            <br><br>
            <input type="text" name="num" placeholder="Enter distance to convert into meter or centimeter" required="" />
            <br><br>
            <input type="submit" name="m" value="METER" />|||<input type="submit" name="cm" value="CENTIMETER" />
            <br><br>
        </form>    
        <p><% if(request.getParameter("q")!=null){
            out.print(request.getParameter("q"));
        }    
        %></p>
    </body>
</html>
