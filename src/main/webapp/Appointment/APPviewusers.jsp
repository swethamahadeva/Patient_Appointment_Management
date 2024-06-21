<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page
		import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Users List</h1>

	<%
	List<appuser> list = appUserDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	<form action="searchID.jsp">
	<input type="text" name="appointment_id" placeholder="Search">
	<input type="submit" value="Search"> 
 
   </form>  	
<table border="1" width="90%">
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
			<th>Edit</th>
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
				<td><a href="APPeditform.jsp?appointment_id=${u.getappointment_id()}">Edit</a></td>
				<td><a href="APPdeleteuser.jsp?appointment_id=${u.getappointment_id()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="APPadduserform.jsp">Add New User</a>
	</body>
</html>