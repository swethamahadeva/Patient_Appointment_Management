<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Departments</title>  

<style>
            body{
                
                background-color: white;
            }
            h1{
            color: Blue;
            text-align: center;
            }
            .search{
                
                
            }
            table{
                background-color: rgb(160, 255, 253);
                border-radius: 10px;
            }
            table th{
                background-color:blue;
                color:red;
            }
            table td{
            	text-align:center;
            	
            }
            
        </style>
</head>  
<body>  
 <%@ page errorPage="error.jsp" %> 
 <%@page import="com.santhosh.bean.Doctor,com.santhosh.bean.DoctorDao,java.util.*"%>   
<%@page import="com.smarty.bean.Department,com.smarty.bean.DepartmentDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Department List</h1>  
<%  
List<Department> list=DepartmentDao.getAllRecords();  
request.setAttribute("list",list);  
%> 
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
        
        <div class="search" align="center">
 <form action="" method="post">
      <input type="text" name="searchpid">
      <input type="submit" value="Search">
 </form> 
 </div><br> 
<table border="1" width="80%" align="center">  
<tr><th>Image</th><th>Id</th><th>Name</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr>

<td><img src="display_department_photo?dep_id=${u.getdep_id()}" width="80" height="80"/></td>
<td>${u.getdep_id()}</td>
<td>${u.getdep_name()}</td>


  
<td><a href="editform_department.jsp?dep_id=${u.getdep_id()}">Edit</a></td>  
<td><a href="delete_department.jsp?dep_id=${u.getdep_id()}">Delete</a></td>
</tr>  
</c:forEach>  
</table>  
<br/><a href="add_departmentform.jsp">Add New Department</a>  
  
</body>  
</html>  