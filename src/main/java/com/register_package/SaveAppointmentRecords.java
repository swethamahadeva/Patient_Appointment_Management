package com.register_package;


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

@WebServlet(name = "SaveAppointmentRecords", urlPatterns = {"/Registration/save_appointment_records"})
@MultipartConfig

public class SaveAppointmentRecords extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String patient_fname=request.getParameter("patient_fname");
            String patient_lname=request.getParameter("patient_lname");
            String patient_gender=request.getParameter("patient_gender");
            String age=request.getParameter("patient_age");
            int patient_age=Integer.parseInt(age);
            String patient_mblno=request.getParameter("patient_mblno");
            String patient_email=request.getParameter("patient_email");
            String patient_address=request.getParameter("patient_address");
            String appointment_type=request.getParameter("appointment_type");
            String appointment_date=request.getParameter("appointment_date");
            String appointment_time=request.getParameter("appointment_time");
            String patient_problem=request.getParameter("patient_problem");
            String d_id=request.getParameter("doctor_id");
            int doctor_id=Integer.parseInt(d_id);
            String p_id=request.getParameter("patient_id");
            int patient_id=Integer.parseInt(p_id);
         
            //Part patient_image =  request.getPart("patient_image");
            
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into appointment(patient_fname,patient_lname,patient_gender,patient_age,patient_mblno,patient_email,appointment_type,appointment_date,appointment_time,patient_problem,patient_address,doctor_id,patient_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, patient_fname);
			ps.setString(2, patient_lname);
			ps.setString(3, patient_gender);
			ps.setInt(4, patient_age);
			ps.setString(5, patient_mblno);
			ps.setString(6, patient_email);
			ps.setString(7, appointment_type);
			ps.setString(8, appointment_date);
			ps.setString(9, appointment_time);
			ps.setString(10, patient_problem);
			ps.setString(11, patient_address);
			ps.setInt(12, doctor_id);
			ps.setInt(13, patient_id);
            // size must be converted to int otherwise it results in error
            //ps.setBinaryStream(14, patient_image.getInputStream(), (int)  patient_image.getSize());
            
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	request.getSession().setAttribute("doctor_id", doctor_id);
            	request.getRequestDispatcher("display-appointment.jsp").forward(request, response);
            	
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


