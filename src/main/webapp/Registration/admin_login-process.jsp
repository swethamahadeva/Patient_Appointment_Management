<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao"%>  
<jsp:useBean id="u" class="com.santhosh.bean.Doctor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  

boolean status=DoctorDao.validate_admin(u);  
if(status){	
%>

<jsp:include page="admin_home.jsp"></jsp:include>
<%	

session.setAttribute("session","TRUE"); 
%>

<%}  
else  
{  
out.print("Sorry, email or password incorret \n"); 

%>  
<jsp:include page="admin_login.jsp"></jsp:include>  
<%  
}  
%>
</body>
</html>