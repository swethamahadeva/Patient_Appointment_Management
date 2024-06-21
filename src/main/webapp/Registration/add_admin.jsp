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
System.out.println("hi");
int i=DoctorDao.save_admin(u);  
if(i>0){  %>
	<jsp:include page="admin_home.jsp"></jsp:include>  
<%}else{  
response.sendRedirect("admin_login_form.jsp");  
}  
%>  
</body>
</html>