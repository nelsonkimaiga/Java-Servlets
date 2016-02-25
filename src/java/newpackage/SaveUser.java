/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author kimaiga
 */
public class SaveUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet SaveUser</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet SaveUser at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }

//printing the above got values
String username = request.getParameter("user_name");
String password = request.getParameter("pass_word");

System.out.println("The username is" +username);

System.out.println("\nand the password is" +password);

//setting connection parameters

   Connection conn= null;
    String url = "jdbc:mysql://localhost/";
    String dbName = "servlet";
    String driver ="com.mysql.jdbc.Driver";
    String user = "root";
    String pwd = "";
    Statement st;
    ResultSet rs;

    try{
     Class.forName(driver);
     
     conn = (Connection) DriverManager.getConnection(url+dbName,user,pwd);
     st = (Statement) conn.createStatement();
     //save data
     String sql ="INSERT INTO login (username, password) VALUES ('" + username +"', '" + password +"')";
     st.execute(sql);
//      out.println("<h3>Saved succesfully!</h3>");
JOptionPane.showConfirmDialog(null, "Saved");

     PreparedStatement prep =   conn.prepareStatement(sql);
     // Setting the values which we got from JSP form 
     prep.setString(1, username); 
     prep.setString(2, password); 
     prep.executeUpdate(); 
     prep.close();
     
     //form validation
    if(username.equals("") && password.equals(""))
    {
      out.println("<h3>Empty fields!</h3>");
    } 
    else
    {
      out.println("<h3>Sorry, you are INVALID</h3>");
    }
     
    }   
    
    catch (Exception ex) {
     System.out.print("The error is==" +ex.getMessage());        
        }
    finally{ 
//After the entire execution this block will execute and the connection with database gets closed 

conn.close(); 
    
    }

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SaveUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SaveUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
