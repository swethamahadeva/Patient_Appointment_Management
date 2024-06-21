package com.santhosh.bean;
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

@WebServlet(name = "SaveRecords", urlPatterns = {"/Doctor/saverecords"})
@MultipartConfig

public class SaveRecords extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String d_Name=request.getParameter("d_Name");
            String d_Spec=request.getParameter("d_Spec");
            String d_Qual=request.getParameter("d_Qual");
            String d_Mblno=request.getParameter("d_Mblno");
            String d_Email=request.getParameter("d_Email");
            String d_Address=request.getParameter("d_Address");
            String Exp=request.getParameter("d_Exp");
            int d_Exp=Integer.parseInt(Exp);
            
            
            Part d_image =  request.getPart("d_image");
            
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into doctor(d_Name,d_Spec,d_Qual,d_Mblno,d_Email,d_Exp,d_Address,d_image) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, d_Name);
			ps.setString(2, d_Spec);
			ps.setString(3, d_Qual);
			ps.setString(4, d_Mblno);
			ps.setString(5, d_Email);
			ps.setInt(6, d_Exp);
			ps.setString(7, d_Address);
            
            
            
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(8, d_image.getInputStream(), (int)  d_image.getSize());
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	out.println("Records added successfully \n  ");
            	response.sendRedirect("add_doctor-success.jsp");
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

