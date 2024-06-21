<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update admin profile</title>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao,javax.servlet.http.*"%>  

<% 
String Id=(String)request.getParameter("admin_id");
int admin_id=Integer.parseInt(Id);
System.out.println(admin_id);
if(admin_id>0){
	
	
	response.sendRedirect("admin_profile.jsp?admin_id="+admin_id );
}

%>
</body>
</html>