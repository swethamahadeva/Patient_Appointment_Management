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

@WebServlet(name = "UpdateDoctorRecords", urlPatterns = {"/Registration/updatedoctorrecords"})
@MultipartConfig

public class UpdateDoctorRecords extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        	String Id=request.getParameter("d_Id");
        	int d_Id=Integer.parseInt(Id);
            String d_UserName=request.getParameter("d_UserName");
            //String d_Spec=request.getParameter("d_Spec");
            //String d_Qual=request.getParameter("d_Qual");
            String d_Mblno=request.getParameter("d_Mblno");
            String d_Email=request.getParameter("d_Email");
            String d_Address=request.getParameter("d_Address");
            //String Exp=request.getParameter("d_Exp");
            //int d_Exp=Integer.parseInt(Exp);
            
            
            Part d_image =  request.getPart("d_image");
            
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("update doctor set d_UserName=?,d_Mblno=?,d_Email=?,d_Address=?,d_image=? where d_Id=?");
            ps.setString(1, d_UserName);
			ps.setString(2, d_Mblno);
			ps.setString(3, d_Email);
			ps.setString(4, d_Address);
			
			
         
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(5, d_image.getInputStream(), (int)  d_image.getSize());
            ps.setInt(6, d_Id);
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	//out.println("Records added successfully \n  ");
            	//response.sendRedirect("doctor_profile_page.jsp");
            	out.println("Records added successfully \n  ");
            	request.getSession().setAttribute("d_Id", d_Id);
            	request.getRequestDispatcher("update_doctor_profile.jsp").forward(request, response);
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
