<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete doctor</title>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao"%>  
<jsp:useBean id="u" class="com.santhosh.bean.Doctor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
DoctorDao.delete(u);  
response.sendRedirect("view_doctor.jsp");  
%>  
</body>
</html>