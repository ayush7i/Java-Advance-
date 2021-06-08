/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Harsh Verma
 */
public class LoginSer extends HttpServlet {
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dharmraj","root","");
          Statement st = conn.createStatement();
          ResultSet x = st.executeQuery("select * from web where ID='"+request.getParameter("txtid")+"' and password='"+request.getParameter("pass")+"'");
          if(x.next())
          {
              HttpSession session = request.getSession();
              session.setAttribute("sessname",x.getString(1));
             response.sendRedirect("Home.jsp");
          }
          else
          {
               response.sendRedirect("Login.jsp?q=login not successfully");
          }
        }
        catch(Exception ex)
        {
          out.print(ex.getMessage().toString());  
        }
    }
}
