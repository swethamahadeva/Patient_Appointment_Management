package com.register_package;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Display_App_Photo", urlPatterns = {"/Registration/display_appointment_photo"})

public class Display_App_Photo extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            PreparedStatement ps = con.prepareStatement("select patient_image from appointment where patient_fname=?");
            String fname = request.getParameter("patient_fname");
            //String lname = request.getParameter("patient_lname");
            //String app_time = request.getParameter("appointment_time");
            ps.setString(1, fname);
            //ps.setString(2, lname);
            //ps.setString(3, app_time);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Blob b = rs.getBlob("patient_image");
            response.setContentType("image/jpg");
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

}