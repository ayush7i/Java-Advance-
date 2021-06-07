/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Harsh Verma
 */
public class ConverterSer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     float cm, m, num1;
     String res;
     num1 = Float.parseFloat(request.getParameter("num"));
     if(request.getParameter("m")!=null){
         m=num1/100;
         res=m+" meter";
         RequestDispatcher req = request.getRequestDispatcher("/Converter.jsp?q="+res);
         req.forward(request, response);
     }
     
     if(request.getParameter("cm")!=null){
         cm=num1*100;
         res=cm+" centi meter";
         RequestDispatcher req = request.getRequestDispatcher("/Converter.jsp?q="+res);
         req.forward(request, response);
     }
     
    }
}
