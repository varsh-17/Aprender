/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manasa
 */
public class feed extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String occupation = request.getParameter("occupation");
            String feedback= request.getParameter("feed");
            response.setContentType("text/html");
            PrintWriter out= response.getWriter();
            
            
            String url = "jdbc:mysql://localhost:3307/feed?allowPublicKeyRetrieval=true&useSSL=false";
            String uname = "manasaram"; String pass = "*manasa77";
            String query = "insert into feedgive values(?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname, pass);
            PreparedStatement st = con.prepareStatement(query);
            
            st.setString(1,occupation);
            st.setString(2,feedback);
            
            int count = st.executeUpdate();
            response.sendRedirect("index.html");
            st.close();
            con.close();
            System.out.println(count + "rows were affected");
            out.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(feed.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(feed.class.getName()).log(Level.SEVERE, null, ex);
        }
    }   
        
    }

    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
 
