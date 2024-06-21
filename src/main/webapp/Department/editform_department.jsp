<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form doctor</title>  
</head>  
<body>  
<%@page import="com.smarty.bean.Department,com.smarty.bean.DepartmentDao,java.util.*"%>
  
<%  
String id=request.getParameter("dep_id");  
Department u=DepartmentDao.getRecordById(Integer.parseInt(id));  
%>    
<h1>Doctor Edit Form </h1>  
<form action="editdepartment.jsp" method="post">  
<input type="hidden" name="dep_id" value="<%=u.getdep_id()%>"/>  
<table>  
<tr><td>Name</td><td>  
<input type="text" name="d_Name" value="<%= u.getdep_name()%>"/></td></tr>  
<tr><td>Specialization</td><td>  

<tr><td colspan="2"><input type="submit" value="Edit Doctor"/></td></tr>  
</table>  
</form>   
</body>  
</html>  