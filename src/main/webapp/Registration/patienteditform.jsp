<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
<%@page import="com.bhanu.bean.patientuserdao,com.bhanu.bean.patientuser"%>  
  
<%  
String id=request.getParameter("p_id");  
patientuser u=patientuserdao.getRecordById(Integer.parseInt(id));  
%> 

 
  
<h1>Edit Form</h1>  
<form action="update_profile.jsp" method="post" enctype="multipart/form-data">  
<input type="hidden" name="p_id" value="<%=u.getp_id() %>"/> 
  
<table>  
<tr><td>Patient name:</td>
<td><input type="text" name="p_name" value="<%=u.getp_name() %>"/></td></tr>
<tr><td>Gender:</td><td>  
<input type="radio" name="p_gender" value="male"/>Male
<input type="radio" name="p_gender" value="female"/>Female</td>
</tr> 

<tr><td>Mobile no:</td>
<td><input type="text" name="p_mblno" value="<%=u.getp_mblno() %>"/></td></tr>  
<tr><td>Email:</td>
<td><input type="text" name="p_email" value="<%=u.getp_email() %>"/></td></tr>
<tr><td>Address:</td>
<td><input type="text" name="p_address" value="<%=u.getp_address() %>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>   


</table>
</form>
</body>
</html>