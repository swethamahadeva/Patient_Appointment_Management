<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add doctor</title>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao"%> 
<jsp:useBean id="u" class="com.santhosh.bean.Doctor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  

int i=DoctorDao.save(u);  
if(i>0){  
response.sendRedirect("add_doctor-success.jsp");  
}else{  
response.sendRedirect("add_doctor-error.jsp");  
}  
%>  
</body>
</html>