<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit Doctor</title>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao"%>  
<jsp:useBean id="u" class="com.santhosh.bean.Doctor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=DoctorDao.update(u);  
if(i>0){
response.sendRedirect("view_doctor.jsp");  
}
else{
	out.print("error");
}
%> 
</body>
</html>