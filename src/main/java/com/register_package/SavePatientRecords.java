package com.register_package;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "SavePatientRecords", urlPatterns = {"/Registration/savepatientrecords"})
@MultipartConfig

public class SavePatientRecords extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String p_name=request.getParameter("p_name");
            String p_gender=request.getParameter("p_gender");
            String id=request.getParameter("p_id");
            String p_mblno=request.getParameter("p_mblno");
            String p_email=request.getParameter("p_email");
            String p_address=request.getParameter("p_address");
            String pwd=request.getParameter("p_pwd");
            int p_id=Integer.parseInt(id);
            int p_pwd=Integer.parseInt(pwd);
            
            Part p_image =  request.getPart("p_image");
            
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("update patient set p_name=?,p_gender=?,p_mblno=?,p_email=?,p_address=?,p_image=? where p_id=? and p_pwd=?");
            ps.setString(1, p_name);
			ps.setString(2, p_gender);
			ps.setString(3, p_mblno);
			ps.setString(4, p_email);
			ps.setString(5, p_address);
			
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(6, p_image.getInputStream(), (int)  p_image.getSize());
            ps.setInt(7, p_id);
            ps.setInt(8, p_pwd);
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	out.println("Records added successfully \n  ");
            	request.getSession().setAttribute("p1_pwd", pwd);
            	request.getRequestDispatcher("update_profile.jsp").forward(request, response);
            }
            else {
            	out.println("error");
            }
        } 
        catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {            
            out.close();
        }
    }
}

