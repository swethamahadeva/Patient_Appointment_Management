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

@WebServlet(name = "UpdateAdminRecords", urlPatterns = {"/Registration/updateadminrecords"})
@MultipartConfig

public class UpdateAdminRecords extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        	String Id=request.getParameter("admin_id");
        	int admin_id=Integer.parseInt(Id);
            String admin_name=request.getParameter("admin_name");
            //String d_Spec=request.getParameter("d_Spec");
            //String d_Qual=request.getParameter("d_Qual");
            String admin_mblno=request.getParameter("admin_mblno");
            String admin_email=request.getParameter("admin_email");
            String admin_address=request.getParameter("admin_address");
            //String Exp=request.getParameter("d_Exp");
            //int d_Exp=Integer.parseInt(Exp);
            
            
            Part admin_image =  request.getPart("admin_image");
            
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("update admin set admin_name=?,admin_mblno=?,admin_email=?,admin_address=?,admin_image=? where admin_id=?");
            ps.setString(1, admin_name);
			ps.setString(2, admin_mblno);
			ps.setString(3, admin_email);
			ps.setString(4, admin_address);
			
			
         
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(5, admin_image.getInputStream(), (int)  admin_image.getSize());
            ps.setInt(6, admin_id);
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	//out.println("Records added successfully \n  ");
            	//response.sendRedirect("doctor_profile_page.jsp");
            	out.println("Records added successfully \n  ");
            	request.getSession().setAttribute("admin_id", admin_id);
            	request.getRequestDispatcher("update_admin_profile.jsp").forward(request, response);
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
