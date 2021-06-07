/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Harsh Verma
 */
public class RegSer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/harsh","root","");
            Statement st = (Statement) conn.createStatement();
            int x = st.executeUpdate("insert into web (Name, Mobile_No, ID, Password ) values ('"+request.getParameter("txtname")+"','"+request.getParameter("txtmn")+"','"+request.getParameter("txtid")+"','"+request.getParameter("pass")+"')");
            if(x!=0)
            {
                response.sendRedirect("Registration.jsp?q=Registration Succesful");
            }
            else
            {
                response.sendRedirect("Registration.jsp?q=Registration not Succesful");
            }
        } 
        catch (ClassNotFoundException | SQLException | IOException e) {
            out.print(e.getMessage().toString());
        }
    }
}
