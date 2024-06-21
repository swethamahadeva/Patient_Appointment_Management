<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser,java.util.*"%>
<%
String status=request.getParameter("appointment_status");
String id=request.getParameter("appointment_id");
int appointment_id=Integer.parseInt(id);
int i=appUserDao.update_status(status , appointment_id);
%>
<%
if(i>0){
	response.sendRedirect("Appointment_records.jsp");
}

%>
</body>
</html>