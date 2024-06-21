<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page errorPage="error.jsp" %>  
<%@page import="com.bhanu.bean.patientuserdao,com.bhanu.bean.patientuser"%>  
  
<%  
String name=request.getParameter("p_name");  
patientuser u=patientuserdao.getRecordByName(name);  
%> 
<h1><%=u.getp_name() %></h1> 
<table>
 <tr>
 <td>patient Id</td><td>:&nbsp;<%=u.getp_id() %></td></tr>
 <tr><td>Gender</td><td>:&nbsp;<%=u.getp_gender() %></td></tr>
 <tr><td>Mobileno</td><td>:&nbsp;<%=u.getp_mblno() %></td></tr>
 <tr><td>Email</td><td>:&nbsp;<%=u.getp_email() %></td></tr>
<tr> <td>Address</td><td>:&nbsp;<%=u.getp_address() %></td></tr>
</table>
</body>  
</html>  

