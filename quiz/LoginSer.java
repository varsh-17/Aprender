/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
/**
 *
 * @author varsh
 */
public class LoginSer extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     * @throws Exception
     */
    
        public void service(HttpServletRequest request,HttpServletResponse response)throws IOException, ServletException , Exception
    {
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        
        String url = "jdbc:mysql://localhost:3307/project?allowPublicKeyRetrieval=true&useSSL=false";
        String uname = "manasaram"; String pass = "*manasa77";
        String query ="select password from user where email=?";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,uname, pass);
            //Statement st = con.createStatement();
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            rs.next();
            String p = rs.getString("password");
            if(p.equals(password)){
                response.sendRedirect("quiz.jsp");
            }
            else{
                response.sendRedirect("incorrectPass.html");
            }
            out.println("passfrom database"+p);
            st.close();
            con.close();
    }
}