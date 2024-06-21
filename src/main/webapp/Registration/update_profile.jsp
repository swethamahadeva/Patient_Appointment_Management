<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bhanu.bean.patientuserdao,javax.servlet.http.*"%>  

<% 
String pwd=(String)request.getSession().getAttribute("p1_pwd");
int p1_pwd=Integer.parseInt(pwd);
if(p1_pwd>0){
	
	
	response.sendRedirect("profile_page.jsp?p_pwd="+p1_pwd );
}

%>


</body>
</html>