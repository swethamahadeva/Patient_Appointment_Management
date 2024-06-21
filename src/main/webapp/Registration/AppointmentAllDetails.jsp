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
            	padding-left: 5px;
            	
            }
            
        </style>
</head>
<body>
	<%@page
		import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Appointments List</h1>

	<%
	List<appuser> list = appUserDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
        
        <div class="search" align="center">
 <form action="search_by_appointment_name.jsp" method="post">
      <input type="search" name="patient_fname" placeholder="Search by Name">
      <input type="submit" value="Search">
 </form> 
 </div><br> 	
<table border="1" width="90%" align="center">
		<tr>
			<th>Id</th>
			<th>PatientName</th>
			<th>Gender</th>
			<th>Age</th>
			<th>Mobile no</th>
			<th>Email</th>
			<th>Type</th>
			<th>Date</th>
			<th>Time</th>
			<th>Address</th>
			<th>Problem</th>
			
			<th>View</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getappointment_id()}</td>
				<td>${u.getpatient_fname()}${u.getpatient_lname()}</td>
				<td>${u.getpatient_gender()}</td>
				<td>${u.getpatient_age()}</td>
				<td>${u.getpatient_mblno()}</td>
				<td>${u.getpatient_email()}</td>
				<td>${u.getappointment_type()}</td>
				<td>${u.getappointment_date()}</td>
				<td>${u.getappointment_time()}</td>
				<td>${u.getpatient_address()}</td>
				<td>${u.getpatient_problem()}</td>
				
				<td><a href="view_appointment_info.jsp?appointment_id=${u.getappointment_id()}">View</a></td>
				<td><a href="appointment_delete.jsp?appointment_id=${u.getappointment_id()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	
	</body>
</html>