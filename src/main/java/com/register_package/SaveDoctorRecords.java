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

@WebServlet(name = "SaveDoctorRecords", urlPatterns = {"/Registration/savedoctorrecords"})
@MultipartConfig

public class SaveDoctorRecords extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String id=request.getParameter("d_Id");
            int d_Id=Integer.parseInt(id);
            String d_Name=request.getParameter("d_Name");
            String d_Spec=request.getParameter("d_Spec");
            String d_Dept=request.getParameter("d_Dept");
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

            PreparedStatement ps = con.prepareStatement("update doctor set d_Name=?,d_Spec=?,d_Qual=?,d_Mblno=?,d_Email=?,d_Exp=?,d_Address=?,d_Dept=?,d_image=? where d_Id=?");
            ps.setString(1, d_Name);
			ps.setString(2, d_Spec);
			ps.setString(3, d_Qual);
			ps.setString(4, d_Mblno);
			ps.setString(5, d_Email);
			ps.setInt(6, d_Exp);
			ps.setString(7, d_Address);
			ps.setString(8, d_Dept);
            
            
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(9, d_image.getInputStream(), (int)  d_image.getSize());
            ps.setInt(10, d_Id);
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("hi");
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	out.println("Records added successfully \n  ");
            	//response.sendRedirect("add_doctor_succes.jsp");
            	request.getSession().setAttribute("d_Id", d_Id);
            	request.getRequestDispatcher("add_doctor_succes.jsp").forward(request, response);
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

