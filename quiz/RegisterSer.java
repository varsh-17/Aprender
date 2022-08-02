/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;


public class RegisterSer extends HttpServlet {
    public void service(HttpServletRequest request,HttpServletResponse response)throws IOException, ServletException , Exception
    {
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String name = fname + " "+lname;
        
        String url = "jdbc:mysql://localhost:3307/project?allowPublicKeyRetrieval=true&useSSL=false";
        String uname = "manasaram"; String pass = "*manasa77";
        String query = "insert into user values(?,?,?)";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,uname, pass);
        PreparedStatement st = con.prepareStatement(query);
        
        st.setString(1,name);
        st.setString(2,email);
        st.setString(3,password);
        int count = st.executeUpdate();
        response.sendRedirect("login.jsp");
        st.close();
        con.close();
        System.out.println(count + "rows were affected");
        out.close();
    }   
}