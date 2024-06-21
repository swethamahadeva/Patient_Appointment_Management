<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Doctors</title>  
<style>
            body{
                
                background-color: white;
            }
            h1{
            color: Blue;
            text-align: center;
            }
            .search{
                
                
            }
            table{
                background-color: rgb(160, 255, 253);
                border-radius: 10px;
            }
            table th{
                background-color:blue;
                color:red;
            }
            table td{
            	padding-left: 5px;
            	
            }
            
        </style>
</head>  
<body>  
 <%@ page errorPage="error.jsp" %>  
<%@page import="com.santhosh.bean.Doctor,com.santhosh.bean.DoctorDao,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Doctors List</h1>  
<%  
List<Doctor> list=DoctorDao.getAllRecords();  
request.setAttribute("list",list);  
%> 
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
        
        <div class="search" align="center">
 <form action="search_doctor_detials.jsp" method="post">
      <input type="search" name="d_Name">
      <input type="submit" value="Search">
 </form> 
 </div><br> 
  
<table border="1" width="90%" align="center">  
<tr><th>Id</th><th>Name</th><th>Specialization</th><th>Qualication</th><th>Department</th><th>Mobile no</th>  
<th>Email</th><th>Experience</th><th>Address</th><th>Image</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr>
<td>${u.getd_Id()}</td>
<td>${u.getd_Name()}</td>
<td>${u.getd_Spec()}</td>
<td>${u.getd_Qual()}</td> 
<td>${u.getd_Dept()}</td> 
<td>${u.getd_Mblno()}</td>
<td>${u.getd_Email()}</td>
<td>${u.getd_Exp()}</td>
<td>${u.getd_Address()}</td>
<td><img width="80" height="80" src="display_doctor_photo?d_Id=${u.getd_Id()} "></td>  
  
<td><a href="view_doctor_info.jsp?d_Id=${u.getd_Id()}">View</a></td>  
<td><a href="delete_doctor.jsp?d_Id=${u.getd_Id()}">Delete</a></td>
</tr>  
</c:forEach>  
</table>  
<br/><a href="add_doctorform.jsp">Add New Doctor</a>  
  
</body>  
</html>  