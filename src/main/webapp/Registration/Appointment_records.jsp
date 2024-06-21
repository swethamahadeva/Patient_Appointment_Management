<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
            body{
                background-color: rgb(190, 226, 236);
            }
            .search{
                
                
            }
            table{
                background-color: whitesmoke;
            }
            table th{
                background-color:darkgray;
            }
        </style>
</head>
<body>
<%@page import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	

	<%
	String id=request.getParameter("d_Id");
	int d_Id=Integer.parseInt(id);
	List<appuser> list = appUserDao.getAllRecordsByDoctorId(d_Id);
	request.setAttribute("list", list);
	%>
	<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
	<h1 align="center">Appointment Records for Doctor</h1>
        
        
        <div class="search" align="center">
                <form action="search_appointment_records.jsp" method="post">
                    <input type="search" name="patient_fname" placeholder="Search by First Name">
                    <input type="submit" value="search">
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
			<td>Status</td>
			<th>Action</th>
			<th>View</th>
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
				<td>${u.getappointment_status()}</td>
				<% String status1="Accept"; String status2="Reject"; %>
				<td><button><a href="update_status.jsp?appointment_status=<%=status1 %>&appointment_id=${u.getappointment_id()}">Accept</a></button><button><a href="update_status.jsp?appointment_status=<%=status2 %>&appointment_id=${u.getappointment_id()}">Reject</a></button></td>
				<td><a href="display_appointment_doctor.jsp?appointment_id=${u.getappointment_id()}">view</a></td>
			</tr>
		</c:forEach>
</table>

</body>
</html>