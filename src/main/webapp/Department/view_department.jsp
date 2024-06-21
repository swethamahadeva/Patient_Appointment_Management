<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Doctors</title>  
</head>  
<body>  
 <%@ page errorPage="error.jsp" %>  
<%@page import="com.smarty.bean.Department,com.smarty.bean.DepartmentDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Doctors List</h1>  
<%  
List<Department> list=DepartmentDao.getAllRecords();  
request.setAttribute("list",list);  
%> 
<div>
<form action="search.jsp" method="post">
<input type="text" placeholder="Search" name="dep_name">
<input type="submit" value="search">
</form>
</div> 
  
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Image</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr>
<td>${u.getdep_id()}</td>
<td>${u.getdep_name()}</td>

<td><img width="80" height="80" src="display_department?dep_id=${u.getdep_id()} "></td>  
  
<td><a href="editform_department.jsp?dep_id=${u.getdep_id()}">Edit</a></td>  
<td><a href="delete_department.jsp?dep_id=${u.getdep_id()}">Delete</a></td>
</tr>  
</c:forEach>  
</table>  
<br/><a href="add_departmentform.jsp">Add New User</a>  
  
</body>  
</html>  