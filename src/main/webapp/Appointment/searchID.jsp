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
  
<h1><%= u.getappointment_type()%></h1>  
 <table>
 <tr>
 <td>appointment_id</td><td>:&nbsp;<%=u.getappointment_id() %></td></tr>
 <td>Patient name</td><td>:&nbsp;<%=u.getpatient_fname() %></td></tr>
 <td>patient gender</td><td>:&nbsp;<%=u.getpatient_gender() %></td></tr>
 <td>patient age</td><td>:&nbsp;<%=u.getpatient_age() %></td></tr>
 <td>patient Mobile no</td><td>:&nbsp;<%=u.getpatient_mblno() %></td></tr>
 <td>patient email</td><td>:&nbsp;<%=u.getpatient_email() %></td></tr>
 <td>appointment_type</td><td>:&nbsp;<%=u.getappointment_type() %></td></tr>
 <tr><td>appointment_date</td><td>:&nbsp;<%= u.getappointment_date()%></td></tr>
 <tr><td>appointment_time</td><td>:&nbsp;<%= u.getappointment_time()%></td></tr>
 <td>patient Address</td><td>:&nbsp;<%=u.getpatient_address() %></td></tr>
 <td>patient problem</td><td>:&nbsp;<%=u.getpatient_problem() %></td></tr>
 </table> 
</body>  
</html>