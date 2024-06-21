<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
            	padding-left: 15px;
            	
            }
            
        </style>
</head>
<body>
<%@page import="com.bhanu.bean.patientuserdao,com.bhanu.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Patients List</h1>  
  
<%  
List<patientuser> list=patientuserdao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
        
        <div class="search" align="center">
 <form action="search_by_patient_name.jsp" method="post">
      <input type="search" name="p_name" placeholder="Search by Name"/>
      <input type="submit" value="Search">
 </form> 
 </div><br>
<table border="1" width="90%" align="center">  

<tr><th>patient Id</th><th>Name</th><th>Gender</th>
<th>Mobile no</th><th>Email</th><th>Address</th><th>Password</th><th>Image</th>
<th>View</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getp_id()}</td>
<td>${u.getp_name()}</td>
<td>${u.getp_gender()}</td>
<td>${u.getp_mblno()}</td> 
<td>${u.getp_email()}</td>
<td>${u.getp_address()}</td>
<td>${u.getp_pwd()}</td>
<td><img src="displayphoto?p_id=${u.getp_id()}" width="80" height="80"/></td>
<td><a href="view_patient_info.jsp?p_id=${u.getp_id()}">View</a></td>  
<td><a href="patient_delete.jsp?p_id=${u.getp_id()}">Delete</a></td></tr>  
</c:forEach>  
</table>  

  
</body>  
</html>  

