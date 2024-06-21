<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .doctor-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            
            display: flex;  
  			flex-wrap: wrap;
            background-color: antiquewhite;
        }

        .doctor-image {
             
			height: 150px;
			width: 150px;
			border-radius: 50%;
		}
         .form-container1 {
            background-color: #fff;
            margin-top:40px;
            padding: 20px;
            margin-left: 60px;
            border-radius: 8px;
            border: 2px solid black;
        	justify-content: space-between;
        	
        }
        a{
			text-decoration: none;
		}
        .search{
            margin-right: 0;
        }
    </style>
</head>
<body>

<%@ page errorPage="error.jsp" %>  
<%@page import="com.smarty.bean.Department,com.smarty.bean.DepartmentDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  

<%  
List<Department> list=DepartmentDao.getAllRecords();  
request.setAttribute("list",list);  
%> 
<% String id=request.getParameter("p_id");
int p_id=Integer.parseInt(id);

%>
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
	<center><h1>Department</h1></center>
    <div class="search">
        <form action="" method="post">
            <input type="search" name="search" placeholder="Search by Department">
            <input type="submit" value="Search">
        </form>
        
    </div>



 <div class="doctor-card">
 <c:forEach items="${list}" var="u"> 
	<div class="form-container1">
		<img src="display_department_photo?dep_id=${u.getdep_id()}" class="doctor-image">
        
       	<a href="deptartment_doctors.jsp?dept_name=${u.getdep_name()}&p_id=<%= p_id%>"><h2> ${u.getdep_name()}</h2></a>
        
    </div>

    
		
 </c:forEach>   
 </div>




</body>
</html>