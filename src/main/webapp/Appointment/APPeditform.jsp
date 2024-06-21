<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser"%>  
  
<%  
String id=request.getParameter("appointment_id");  
appuser u=appUserDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="APPedituser.jsp" method="post">  
<input type="hidden" name="appointment_id" value="<%=u.getappointment_id() %>"/>  
<table>  
<tr><td>Name</td><td>  
<input type="text" name="patient_name" value="<%= u.getpatient_fname()%>"/></td></tr>  
<tr><td>Gender</td><td>  
<input type="text" name="patient_gender" value="<%= u.getpatient_gender()%>"/></td></tr>  
<tr><td>Age</td><td>  
<input type="number" name="patient_age" value="<%= u.getpatient_age()%>"/></td></tr>  
<tr><td>Mobile No</td><td>  
<input type="text" name="patient_mblno" value="<%= u.getpatient_mblno()%>"/></td></tr>  
<tr><td>Email</td><td>  
<input type="email" name="patient_email" value="<%= u.getpatient_email()%>"/></td></tr>  


<tr><td>Type</td><td>  
<input type="text" name="appointment_type" value="<%= u.getappointment_type()%>"/></td></tr>  
<tr><td>Date</td><td>  
<input type="date" name="appointment_date" value="<%= u.getappointment_date()%>"/></td></tr>
<tr><td>Time</td><td>  
<input type="time" name="appointment_time" value="<%= u.getappointment_time()%>"/></td></tr> 
<tr><td>Address</td><td>  
<input type="text" name="patient_address" value="<%= u.getpatient_address()%>"/></td></tr>
<tr><td>Symptoms</td><td>  
<input type="text" name="patient_problem" value="<%= u.getpatient_problem()%>"/></td></tr>  
  
   
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  