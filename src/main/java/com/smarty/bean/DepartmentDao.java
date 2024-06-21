package com.smarty.bean;
import java.sql.*; 
import java.io.*;
import java.util.ArrayList;  
import java.util.List;  
import com.smarty.bean.Department;  
public class DepartmentDao {
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
	public static int save(Department u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into Department(dep_name) values(?)");
			ps.setString(1, u.getdep_name());
			
			status=ps.executeUpdate();
			System.out.println("Connection is closed");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static List<Department> getAllRecords(){  
		    List<Department> list=new ArrayList<Department>();   
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from Department");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Department u=new Department();  
		            u.setdep_id(rs.getInt("dep_id"));  
		            u.setdep_name(rs.getString("dep_name"));  
		            
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
	public static int delete(Department u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from Department where dep_id=?");  
		        ps.setInt(1,u.getdep_id());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}  
	public static int update(Department u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update Department set dep_name=? where dep_id=?");  
		        ps.setString(1, u.getdep_name());
				
				ps.setInt(2, u.getdep_id());
				status=ps.executeUpdate();
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
	public static Department getRecordById(int id){  
		    Department u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from Department where dep_id=?");  
		        ps.setInt(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Department();  
		            u.setdep_id(rs.getInt("dep_id"));  
		            u.setdep_name(rs.getString("dep_name"));  
		            
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
	}  
	public static Department getRecordByName(String name){  
	    Department u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from Department where dep_name=?");  
	        ps.setString(1,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Department();  
	            u.setdep_id(rs.getInt("dep_id"));  
	            u.setdep_name(rs.getString("dep_name"));  
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u; 
	}
}

