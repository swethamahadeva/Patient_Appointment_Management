package com.santhosh.bean;
import java.sql.*; 
import java.io.*;
import java.util.ArrayList;  
import java.util.List;

import com.bhanu.bean.patientuser;
import com.santhosh.bean.Doctor;  
public class DoctorDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println("Connection is created");
		}
		catch(Exception e) {
			System.out.println(e);
			System.out.println("Connection NOT created");
		}
		return con;
	}
	public static int save(Doctor u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into doctor(d_UserName,d_Spec,d_Qual,d_Mblno,d_Email,d_Exp,d_Address,d_Dept,d_Pwd) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getd_UserName());
			ps.setString(2, u.getd_Spec());
			ps.setString(3, u.getd_Qual());
			ps.setString(4, u.getd_Mblno());
			ps.setString(5, u.getd_Email());
			ps.setInt(6, u.getd_Exp());
			ps.setString(7, u.getd_Address());
			ps.setString(8, u.getd_Dept());
			ps.setInt(9, u.getd_Pwd());
			status=ps.executeUpdate();
			System.out.println("Connection is closed");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static List<Doctor> getAllRecords(){  
		    List<Doctor> list=new ArrayList<Doctor>();   
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from doctor");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Doctor u=new Doctor();  
		            u.setd_Id(rs.getInt("d_Id"));  
		            u.setd_Name(rs.getString("d_Name")); 
		            u.setd_UserName(rs.getString("d_UserName")); 
		            u.setd_Spec(rs.getString("d_Spec"));
		            u.setd_Dept(rs.getString("d_Dept"));
		            u.setd_Qual(rs.getString("d_Qual")); 
		            u.setd_Mblno(rs.getString("d_Mblno"));  
		            u.setd_Email(rs.getString("d_Email"));
		            u.setd_Exp(rs.getInt("d_Exp"));
		              
		            u.setd_Address(rs.getString("d_Address"));  
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
	public static int delete(Doctor u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from doctor where d_Id=?");  
		        ps.setInt(1,u.getd_Id());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}  
	public static int update(Doctor u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update doctor set d_Name=?,d_Spec=?,d_Qual=?,d_Mblno=?,d_Email=?,d_Exp=?,d_Address=?,d_Dept=? where d_Id=?");  
		        ps.setString(1, u.getd_Name());
				ps.setString(2, u.getd_Spec());
				ps.setString(3, u.getd_Qual());
				ps.setString(4, u.getd_Mblno());
				ps.setString(5, u.getd_Email());
				ps.setInt(6, u.getd_Exp());
				ps.setString(7, u.getd_Address());
				ps.setString(8, u.getd_Dept());
				ps.setInt(9, u.getd_Id());
				status=ps.executeUpdate();
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
	public static Doctor getRecordById(int id){  
		    Doctor u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from doctor where d_Id=?");  
		        ps.setInt(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Doctor();  
		            u.setd_Id(rs.getInt("d_Id"));  
		            u.setd_UserName(rs.getString("d_UserName")); 
		            u.setd_Name(rs.getString("d_Name")); 
		            u.setd_Spec(rs.getString("d_Spec"));
		            u.setd_Dept(rs.getString("d_Dept"));
		            u.setd_Qual(rs.getString("d_Qual"));  
		            u.setd_Mblno(rs.getString("d_Mblno"));  
		            u.setd_Email(rs.getString("d_Email"));
		            u.setd_Exp(rs.getInt("d_Exp"));
		            u.setd_Address(rs.getString("d_Address")); 
		              
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
	}  
	
	// count of doctors in each department
	public static Doctor getDoctorsCountInDepartmanet(String d_Dept){  
	    Doctor u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select count('d_Name') as d_Count from doctor where d_Dept=?");  
	        ps.setString(1,d_Dept);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()) { 
	            u=new Doctor();  
	            u.setd_Count(rs.getInt("d_Count"));  
	            
	              
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
}  
	
	//
	public static Doctor getRecordByName(String name){  
	    Doctor u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from doctor where d_Name=?");  
	        ps.setString(1,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Doctor();  
	            u.setd_Id(rs.getInt("d_Id"));  
	            u.setd_UserName(rs.getString("d_UserName")); 
	            u.setd_Name(rs.getString("d_Name"));  
	            u.setd_Spec(rs.getString("d_Spec"));
	            u.setd_Dept(rs.getString("d_Dept"));
	            u.setd_Qual(rs.getString("d_Qual"));  
	            u.setd_Mblno(rs.getString("d_Mblno"));  
	            u.setd_Email(rs.getString("d_Email"));
	            u.setd_Exp(rs.getInt("d_Exp"));
	            u.setd_Address(rs.getString("d_Address")); 
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u; 
	}
	public static List<Doctor> getAllRecordsByDepartmentName(String d_Dept){  
	    List<Doctor> list=new ArrayList<Doctor>();   
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from doctor where d_Dept=?"); 
	        ps.setString(1,d_Dept);
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Doctor u=new Doctor();  
	            u.setd_Id(rs.getInt("d_Id"));  
	            u.setd_Name(rs.getString("d_Name")); 
	            u.setd_UserName(rs.getString("d_UserName")); 
	            u.setd_Spec(rs.getString("d_Spec")); 
	            u.setd_Dept(rs.getString("d_Dept"));
	            u.setd_Qual(rs.getString("d_Qual")); 
	            u.setd_Mblno(rs.getString("d_Mblno"));  
	            u.setd_Email(rs.getString("d_Email"));
	            u.setd_Exp(rs.getInt("d_Exp"));
	            
	            u.setd_Address(rs.getString("d_Address"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	public static boolean validate(Doctor u){  
		boolean status=false;  
		try{  
		Connection con=getConnection(); 
		              
		PreparedStatement ps=con.prepareStatement(  
		    "select * from doctor where d_UserName=? and d_Pwd=?");    
		ps.setString(1,u.getd_UserName());  
		ps.setInt(2,u.getd_Pwd());   
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		              
		}catch(Exception e){}  
		  
		return status;  
		  
	}
	public static Doctor getRecordByPwd(int pwd){  
	    Doctor u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from doctor where d_Pwd=?");  
	        ps.setInt(1,pwd);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Doctor();  
	            u.setd_Id(rs.getInt("d_Id"));  
	            u.setd_Name(rs.getString("d_Name"));  
	            u.setd_Spec(rs.getString("d_Spec")); 
	            u.setd_Dept(rs.getString("d_Dept"));
	            u.setd_Qual(rs.getString("d_Qual")); 
	            u.setd_Mblno(rs.getString("d_Mblno"));  
	            u.setd_Email(rs.getString("d_Email"));
	            u.setd_Exp(rs.getInt("d_Exp"));
	            
	            u.setd_Address(rs.getString("d_Address"));
	            
				}  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	
	
	//////////////////  ADMIN  //////////////////////
	public static int save_admin(Doctor u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into admin(admin_name,admin_mblno,admin_email,admin_pwd) values(?,?,?,?)");
			ps.setString(1, u.getadmin_name());
			
			ps.setString(2, u.getadmin_mblno());
			ps.setString(3, u.getadmin_email());
			
			//ps.setString(4, u.getadmin_address());
			
			ps.setInt(4, u.getadmin_pwd());
			status=ps.executeUpdate();
			System.out.println("Connection is closed");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static boolean validate_admin(Doctor u){  
		boolean status=false;  
		try{  
		Connection con=getConnection(); 
		              
		PreparedStatement ps=con.prepareStatement(  
		    "select * from admin where admin_name=? and admin_pwd=?");    
		ps.setString(1,u.getadmin_name());  
		ps.setInt(2,u.getadmin_pwd());   
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		              
		}catch(Exception e){}  
		  
		return status;  
		  
	}
	public static Doctor getRecordById_admin(int id){  
	    Doctor u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from admin where admin_id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Doctor();  
	            u.setadmin_id(rs.getInt("admin_id"));  
	            u.setadmin_name(rs.getString("admin_name"));  
	             
	            u.setadmin_mblno(rs.getString("admin_mblno"));  
	            u.setadmin_email(rs.getString("admin_email"));
	            
	            u.setadmin_address(rs.getString("admin_address")); 
	            u.setadmin_pwd(rs.getInt("admin_pwd"));   
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
 
	}
	public static Doctor getRecordByPwd_admin(int pwd){  
	    Doctor u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from admin where admin_pwd=?");  
	        ps.setInt(1,pwd);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Doctor();  
	            u.setadmin_id(rs.getInt("admin_id"));  
	            u.setadmin_name(rs.getString("admin_name"));  
	             
	            u.setadmin_mblno(rs.getString("admin_mblno"));  
	            u.setadmin_email(rs.getString("admin_email"));
	            
	            u.setadmin_address(rs.getString("admin_address")); 
	            u.setadmin_pwd(rs.getInt("admin_pwd"));
	            
				}  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	public static int delete_admin(Doctor u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from admin where admin_id=?");  
	        ps.setInt(1,u.getadmin_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	
	
	
	
	
}

