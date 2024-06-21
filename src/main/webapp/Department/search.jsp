<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search doctor</title>  
</head>  
<body> 
<%@ page errorPage="error.jsp" %>  
<%@page import="com.smarty.bean.Department,com.smarty.bean.DepartmentDao,java.util.*"%>
  
<%  
String id=request.getParameter("d_Name");  
Department u=DepartmentDao.getRecordByName(id);  
%>    
<h1><%= u.getdep_name()%> </h1> 
<table>
<tr>
<td>Doctor ID</td><td>:&nbsp;<%=u.getdep_id()%></td>
</tr>
<tr>

</table> 
 
</body>  
</html>  