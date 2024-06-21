<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao,javax.servlet.http.*"%>  

<% 
String Id=(String)request.getParameter("d_Id");
int d_Id=Integer.parseInt(Id);
System.out.println(d_Id);
if(d_Id>0){
	
	
	response.sendRedirect("doctor_profile_page.jsp?d_Id="+d_Id );
}

%>
</body>
</html>