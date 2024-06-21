<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bhanu.bean.patientuserdao,com.bhanu.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Users List</h1>  
  
<%  
List<patientuser> list=patientuserdao.getAllRecords();  
request.setAttribute("list",list);  
%>  
 <form action="searchpatient.jsp" method="post">
      <input type="text" name="searchpid">
      <input type="submit" value="Search">
 </form> 
<table border="1" width="90%">  

<tr><th>patient Id</th><th>Name</th><th>Gender</th>
<th>Mobile no</th><th>Email</th><th>Address</th><th>Password</th>
<th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getp_id()}</td>
<td>${u.getp_name()}</td>
<td>${u.getp_gender()}</td>
<td>${u.getp_mblno()}</td> 
<td>${u.getp_email()}</td>
<td>${u.getp_address()}</td>
<td>${u.getp_pwd()}</td>
<td><a href="patienteditform.jsp?p_id=${u.getp_id()}">Edit</a></td>  
<td><a href="patientdelete.jsp?p_id=${u.getp_id()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="patientadduserform.jsp">Add New User</a>  
  
</body>  
</html>  

