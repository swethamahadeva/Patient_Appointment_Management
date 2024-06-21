package com.bhanu.bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.bhanu.bean.patientuser;




public class patientuserdao {
	
		public static Connection getConnection() {
			Connection con=null;
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
				System.out.println("Connection created");
			}
			catch(Exception e) {
				System.out.println(e);
				System.out.println("Connection not created");
			}
			return con;
		}
		public static int save(patientuser u) {
			int status=0;
			try {
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("insert into patient(p_name,p_gender,p_mblno,p_email,p_address,p_pwd) values(?,?,?,?,?,?)");
				ps.setString(1,u.getp_name());
				ps.setString(2,u.getp_gender());
				ps.setString(3,u.getp_mblno());
			    ps.setString(4,u.getp_email());
			    ps.setString(5,u.getp_address());
			    ps.setInt(6,u.getp_pwd());
			    //ps.setString(6,u.getProblem());
			    //ps.setString(7,u.getPatientname());
				status =ps.executeUpdate();
				con.close();
			}
			catch(Exception e){
				System.out.println(e);
			}
			return status;	
		}
		public static List<patientuser> getAllRecords(){  
		    List<patientuser> list=new ArrayList<patientuser>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from patient");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            patientuser u=new patientuser();  
		             
		            u.setp_id(rs.getInt("p_id")); 
		            u.setp_name(rs.getString("p_name"));
		            u.setp_gender(rs.getString("p_gender")); 
		            u.setp_mblno(rs.getString("p_mblno"));
		            u.setp_email(rs.getString("p_email"));  
		            u.setp_address(rs.getString("p_address"));
		            u.setp_pwd(rs.getInt("p_pwd"));
		           // u.setproblem(rs.getString("Problem")); 
		            
					        
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		} 
		public static patientuser getRecordById(int id){  
		    patientuser u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from patient where p_id=?");  
		        ps.setInt(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new patientuser();  
		            u.setp_id(rs.getInt("p_id"));  
		            u.setp_name(rs.getString("p_name")); 
		            u.setp_gender(rs.getString("p_gender"));  
		            u.setp_mblno(rs.getString("p_mblno"));
		            u.setp_email(rs.getString("p_email"));  
		            u.setp_address(rs.getString("p_address"));  
		            u.setp_pwd(rs.getInt("p_pwd"));  
		            //u.setProblem(rs.getString("Problem"));
		            
					}  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
		public static int update(patientuser u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update patient set p_name=?,p_gender=?,p_mblno=?,p_email=?,p_address=? where p_id=?");  
		        ps.setString(1,u.getp_name());
				ps.setString(2,u.getp_gender());
				ps.setString(3,u.getp_mblno());
			    ps.setString(4,u.getp_email());
			    ps.setString(5,u.getp_address());
			    ps.setInt(6, u.getp_id());
			    //ps.setInt(7, u.getp_pwd());
			   // ps.setString(5,u.getProblem());
			    
			    
			   /* ps.setInt(6,u.getPatientid());*/
				 status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);} 
		    return status;  
		}  
		public static int delete(patientuser u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from patient where p_id=?");  
		        ps.setInt(1,u.getp_id());  
		        
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}  
		public static patientuser getRecordByName(String pname){  
			patientuser u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from patient where p_name=?");  
		        ps.setString(1,pname);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new patientuser();  
		            u.setp_id(rs.getInt("p_id"));  
		            u.setp_name(rs.getString("p_name")); 
		            u.setp_gender(rs.getString("p_gender"));  
		            u.setp_mblno(rs.getString("p_mblno"));
		            u.setp_email(rs.getString("p_email"));  
		            u.setp_address(rs.getString("p_address"));  
		            u.setp_pwd(rs.getInt("p_pwd"));  
		            //u.setProblem(rs.getString("Problem"));
		            
					}  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
		public static boolean validate(patientuser u){  
			boolean status=false;  
			try{  
			Connection con=getConnection(); 
			              
			PreparedStatement ps=con.prepareStatement(  
			    "select * from patient where p_name=? and p_pwd=?");    
			ps.setString(1,u.getp_name());  
			ps.setInt(2,u.getp_pwd());   
			ResultSet rs=ps.executeQuery();  
			status=rs.next();  
			              
			}catch(Exception e){}  
			  
			return status;  
			  
		} 
		public static patientuser getRecordByPwd(int pwd){  
		    patientuser u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from patient where p_pwd=?");  
		        ps.setInt(1,pwd);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new patientuser();  
		            u.setp_id(rs.getInt("p_id"));  
		            u.setp_name(rs.getString("p_name")); 
		            u.setp_gender(rs.getString("p_gender"));  
		            u.setp_mblno(rs.getString("p_mblno"));
		            u.setp_email(rs.getString("p_email"));  
		            u.setp_address(rs.getString("p_address"));  
		            u.setp_pwd(rs.getInt("p_pwd"));  
		            //u.setProblem(rs.getString("Problem"));
		            
					}  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
		
		
}
	
   

