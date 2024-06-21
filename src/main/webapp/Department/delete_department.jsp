<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete doctor</title>
</head>
<body>
<%@page import="com.smarty.bean.DepartmentDao"%>  
<jsp:useBean id="u" class="com.smarty.bean.Department"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
DepartmentDao.delete(u);  
response.sendRedirect("view_department.jsp");  
%>  
</body>
</html>