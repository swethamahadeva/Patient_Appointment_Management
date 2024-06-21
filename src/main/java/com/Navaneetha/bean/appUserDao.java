package com.Navaneetha.bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.Navaneetha.bean.*;
import com.bhanu.bean.*;

public class appUserDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			System.out.println("Connection Created");
		} catch (Exception e) {
			System.out.println("Connection Not Created");
		}
		return con;
	}

	public static int save(appuser u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps = con.prepareStatement("insert into appointment(patient_fname,patient_lname,patient_gender,patient_age,patient_mblno,patient_email,appointment_type,appointment_date,appointment_time,patient_problem,patient_address,doctor_id,patient_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getpatient_fname());
			ps.setString(2, u.getpatient_lname());
			ps.setString(3, u.getpatient_gender());
			ps.setInt(4, u.getpatient_age());
			ps.setString(5, u.getpatient_mblno());
			ps.setString(6, u.getpatient_email());
			ps.setString(7, u.getappointment_type());
			ps.setString(8, u.getappointment_date());
			ps.setString(9, u.getappointment_time());
			ps.setString(10, u.getpatient_problem());
			ps.setString(11, u.getpatient_address());
			ps.setInt(12, u.getdoctor_id());
			ps.setInt(13, u.getpatient_id());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(appuser u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps=con.prepareStatement(
		"update appointment set patient_fname=?,patient_lname=?,patient_gender=?,patient_age=?,patient_mblno=?,patient_email=?,appointment_type=?,appointment_date=?,appointment_time=?,patient_problem=?,patient_address=? where appointment_id=?");
			ps.setString(1, u.getpatient_fname());
			ps.setString(2, u.getpatient_lname());
			ps.setString(3, u.getpatient_gender());
			ps.setInt(4, u.getpatient_age());
			ps.setString(5, u.getpatient_mblno());
			ps.setString(6, u.getpatient_email());
			ps.setString(7, u.getappointment_type());
			ps.setString(8, u.getappointment_date());
			ps.setString(9, u.getappointment_time());
			ps.setString(10, u.getpatient_problem());
			ps.setString(11, u.getpatient_address());
			ps.setInt(12, u.getappointment_id());
			
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int update_status(String appointment_status , int appointment_id) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps=con.prepareStatement(
		"update appointment set appointment_status=? where appointment_id=?");
			ps.setString(1,appointment_status );
			ps.setInt(2, appointment_id);
			
			
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(appuser u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("DELETE FROM appointment WHERE appointment_id=?");  
	        ps.setInt(1,u.getappointment_id());  
	        status=ps.executeUpdate();  
	        System.out.println("pass");
	    }catch(Exception e){System.out.println("Fail");}  
	  
	    return status;  
	}    

	public static List<appuser> getAllRecords() {
		List<appuser> list = new ArrayList<appuser>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from appointment");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				appuser u = new appuser();
				u.setappointment_id(rs.getInt("appointment_id"));
				u.setpatient_fname(rs.getString("patient_fname"));
				u.setpatient_lname(rs.getString("patient_lname"));
				u.setpatient_gender(rs.getString("patient_gender"));
				u.setpatient_age(rs.getInt("patient_age"));
				u.setpatient_mblno(rs.getString("patient_mblno"));
				u.setpatient_email(rs.getString("patient_email"));
			    u.setappointment_type(rs.getString("appointment_type"));
			    u.setappointment_date(rs.getString("appointment_date"));
			    u.setappointment_time(rs.getString("appointment_time"));
			    u.setpatient_problem(rs.getString("patient_problem"));
			    u.setpatient_address(rs.getString("patient_address"));
			    u.setdoctor_id(rs.getInt("doctor_id"));
			    u.setpatient_id(rs.getInt("patient_id"));
			    u.setappointment_status(rs.getString("appointment_status"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static List<appuser> getAllRecordsByPatientId(int patient_id) {
		List<appuser> list = new ArrayList<appuser>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from appointment where patient_id=?");
			ps.setInt(1, patient_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				appuser u = new appuser();
				u.setappointment_id(rs.getInt("appointment_id"));
				u.setpatient_fname(rs.getString("patient_fname"));
				u.setpatient_lname(rs.getString("patient_lname"));
				u.setpatient_gender(rs.getString("patient_gender"));
				u.setpatient_age(rs.getInt("patient_age"));
				u.setpatient_mblno(rs.getString("patient_mblno"));
				u.setpatient_email(rs.getString("patient_email"));
			    u.setappointment_type(rs.getString("appointment_type"));
			    u.setappointment_date(rs.getString("appointment_date"));
			    u.setappointment_time(rs.getString("appointment_time"));
			    u.setpatient_problem(rs.getString("patient_problem"));
			    u.setpatient_address(rs.getString("patient_address"));
			    u.setdoctor_id(rs.getInt("doctor_id"));
			    u.setpatient_id(rs.getInt("patient_id"));
			    u.setappointment_status(rs.getString("appointment_status"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static appuser getRecordById(int id) {
		appuser u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from appointment where appointment_id=?");
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new appuser();
				u.setappointment_id(rs.getInt("appointment_id"));
				u.setpatient_fname(rs.getString("patient_fname"));
				u.setpatient_lname(rs.getString("patient_lname"));
				u.setpatient_gender(rs.getString("patient_gender"));
				u.setpatient_age(rs.getInt("patient_age"));
				u.setpatient_mblno(rs.getString("patient_mblno"));
				u.setpatient_email(rs.getString("patient_email"));
			    u.setappointment_type(rs.getString("appointment_type"));
			    u.setappointment_date(rs.getString("appointment_date"));
			    u.setappointment_time(rs.getString("appointment_time"));
			    u.setpatient_problem(rs.getString("patient_problem"));
			    u.setpatient_address(rs.getString("patient_address"));
			    u.setdoctor_id(rs.getInt("doctor_id"));
			    u.setpatient_id(rs.getInt("patient_id"));
			    u.setappointment_status(rs.getString("appointment_status"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	public static appuser getRecordByName(String patient_fname) {
		appuser u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from appointment where patient_fname=?");
			ps.setString(1,patient_fname);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new appuser();
				u.setappointment_id(rs.getInt("appointment_id"));
				u.setpatient_fname(rs.getString("patient_fname"));
				u.setpatient_lname(rs.getString("patient_lname"));
				u.setpatient_gender(rs.getString("patient_gender"));
				u.setpatient_age(rs.getInt("patient_age"));
				u.setpatient_mblno(rs.getString("patient_mblno"));
				u.setpatient_email(rs.getString("patient_email"));
			    u.setappointment_type(rs.getString("appointment_type"));
			    u.setappointment_date(rs.getString("appointment_date"));
			    u.setappointment_time(rs.getString("appointment_time"));
			    u.setpatient_problem(rs.getString("patient_problem"));
			    u.setpatient_address(rs.getString("patient_address"));
			    u.setdoctor_id(rs.getInt("doctor_id"));
			    u.setpatient_id(rs.getInt("patient_id"));
			    u.setappointment_status(rs.getString("appointment_status"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	
	
	// get records from both appointment and doctors by using foreign key "doctor_id"
		public static boolean getRecordByIdForJoin(appuser u) {
			boolean status=false;
			
			//////////
			try{  
				Connection con=getConnection(); 
				              
				PreparedStatement ps=con.prepareStatement(
			"select * from appointment where appointment_id=?");  
				 
				ps.setInt(1,u.getappointment_id());
				
				ResultSet rs=ps.executeQuery();  
				status=rs.next(); 
			}
			catch(Exception e){}  
			  
			return status;  
			  
		} 
		
		public static List<appuser> getAllRecordsByDoctorId(int doctor_id) {
			List<appuser> list = new ArrayList<appuser>();

			try {
				Connection con = getConnection();
				PreparedStatement ps = con.prepareStatement("select * from appointment where doctor_id=?");
				ps.setInt(1, doctor_id);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					appuser u = new appuser();
					u.setappointment_id(rs.getInt("appointment_id"));
					u.setpatient_fname(rs.getString("patient_fname"));
					u.setpatient_lname(rs.getString("patient_lname"));
					u.setpatient_gender(rs.getString("patient_gender"));
					u.setpatient_age(rs.getInt("patient_age"));
					u.setpatient_mblno(rs.getString("patient_mblno"));
					u.setpatient_email(rs.getString("patient_email"));
				    u.setappointment_type(rs.getString("appointment_type"));
				    u.setappointment_date(rs.getString("appointment_date"));
				    u.setappointment_time(rs.getString("appointment_time"));
				    u.setpatient_problem(rs.getString("patient_problem"));
				    u.setpatient_address(rs.getString("patient_address"));
				    u.setdoctor_id(rs.getInt("doctor_id"));
				    u.setpatient_id(rs.getInt("patient_id"));
				    u.setappointment_status(rs.getString("appointment_status"));
					list.add(u);
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return list;
		}
		
		
		
		
}
//appointment_id,patient_fname,patient_lname,patient_gender,patient_age,patient_mblno,patient_email,appointment_type,appointment_date,appointment_time,patient_problem,patient_address,doctor_id,d_Id,d_Name,d_Mblno,d_Spec,d_Email,d_Address,d_Qual,d_Exp from appointment,doctor