<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.Navaneetha.bean.appUserDao"%>  
<jsp:useBean id="u" class="com.Navaneetha.bean.appuser"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
appUserDao.delete(u);  
response.sendRedirect("APPviewusers.jsp");  
%>  

</body>
</html>