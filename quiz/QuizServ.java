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
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Manasa
 */
public class QuizServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
       String paramName, paramValue[];
       Connection con=null;
       Statement stmt=null;
       ResultSet rs=null;
       int cnt=0;
       String ans="";
       Enumeration paramNames = request.getParameterNames();
       try{
           
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3307/quiz?allowPublicKeyRetrieval=true&useSSL=false","manasaram","*manasa77");
           stmt=con.createStatement();
          rs=stmt.executeQuery("select ans from quiz");
           while(rs.next() && paramNames.hasMoreElements())
           {
               String un=rs.getString(1);
               paramName= (String)paramNames.nextElement();
               paramValue=request.getParameterValues(paramName);
               for(int i=0;i<paramValue.length;i++)
                   {
                       ans=paramValue[i];
                   }
                   if(un.equals(ans))
                       cnt++;
               }
               out.println("<body bgcolor='pink'><h1 style='padding:100px;margin-top: 5px;\n" +
"    margin-bottom: 50px;\n" +
"    font-size: 60px;\n" +
"    font-weight: 1000;\n" +
"    color: #123C69;\n" +
"    font-family:  'Festive', cursive ;'><center><head>\n" +
"    <div  style='width: 70%;\n" +
"    min-height: 100vh;\n" +
"    display: grid;\n" +
"    place-items: center;\n" +
"    background-color: #BAB2B5;'>\n" +
"        <h1 style='font-size:80px;'>Score card!!!</h1>\n" +
"        <div style=' width : 40vw;\n" +
"    background-color: #EEE2DC;\n" +
"    padding: 3rem 8rem;\n" +
"    border-radius: 10px;\n" +
"    box-shadow: 0 1rem 1rem -0.7rem rgba(0,0,0,0.4);\n" +
"    margin-bottom: 50px;'>\n" +
"            <h2 style='font-size: 3.0rem;\n" +
"    font-weight: 400;\n" +
"    margin-top: 1rem 0 4rem 0;\n" +
"    color: #AC3B61;\n" +
"    font-family: 'Vollkorn', serif;'>Congratulations!!</h2>\n" +
"            <h3 style=' font-size: 3.0rem;\n" +
"    font-weight: 400;\n" +
"    margin-top: 60px;\n" +
"    color: #123C69;\n" +
"    font-family: 'Vollkorn', serif;'>You have scored "+(cnt+1)+" out of 20</span> marks</h3>\n" +
"</div>");
           } 
       catch (ClassNotFoundException ex) {
            Logger.getLogger(QuizServ.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(QuizServ.class.getName()).log(Level.SEVERE, null, ex);
        }
           
     
        }
          
       }
    



                       
                  
       
        

   