<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Doctor Success</title>  
</head>  
<body>  
<%
String id=(String)request.getParameter("d_Id");
int d_Id=Integer.parseInt(id);
%>
<p align="center">Record successfully saved!</p>  
<jsp:include page="member_doctor.jsp?d_Id=<%=d_Id %>"></jsp:include>  
  
</body>  
</html>  