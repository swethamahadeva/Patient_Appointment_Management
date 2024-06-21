<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form doctor</title>  
</head>  
<body>  
<%@page import="com.santhosh.bean.DoctorDao,com.santhosh.bean.Doctor"%>  
  
<%  
String id=request.getParameter("d_Id");  
Doctor u=DoctorDao.getRecordById(Integer.parseInt(id));  
%>    
<h1>Doctor Edit Form </h1>  
<form action="editdoctor.jsp" method="post">  
<input type="hidden" name="d_Id" value="<%=u.getd_Id()%>"/>  
<table>  
<tr><td>Name</td><td>  
<input type="text" name="d_Name" value="<%= u.getd_Name()%>"/></td></tr>  
<tr><td>Specialization</td><td>  
<input type="text" name="d_Spec" value="<%= u.getd_Spec()%>"/></td></tr>  
<tr><td>Department</td><td>  
<input type="text" name="d_Dept" value="<%= u.getd_Dept()%>"/></td></tr>  
<tr><td>Qualification</td><td>  
<input type="text" name="d_Qual" value="<%= u.getd_Qual()%>"/></td></tr>  
<tr><td>Mobile no</td><td>  
<input type="text" name="d_Mblno" value="<%= u.getd_Mblno()%>"/></td></tr>  
<tr><td>Email</td>
<td><input type="text" name="d_Email" value="<%= u.getd_Email()%>"/></td></tr>  
<tr><td>Experience</td>
<td><input type="number" name="d_Exp" value="<%= u.getd_Exp()%>"/></td></tr>  
 <tr><td>Address</td>
 <td><textarea name="d_Address" value="<%= u.getd_Address()%>/"></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Doctor"/></td></tr>  
</table>  
</form>   
</body>  
</html>  