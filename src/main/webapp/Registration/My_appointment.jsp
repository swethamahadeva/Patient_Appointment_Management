<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
      .card{
        display:flex;
        justify-content: space-between;
        background-color: rgb(220, 237, 238);
        padding: 10px;
        max-width: 70%;
        
        margin: auto;
        border-radius: 8px;
        border: 2px solid rgb(89, 89, 241);

      }
      .sub-card{
        margin: auto;
        
        
        
      }
      .sub-card label{
      	font-weight:bold;
      }
      .btn1{
        padding: 10px;
        margin:auto 0px ;
      }
      .btn1 button{
        
        padding: 10px 40px ;
        border: 2px solid rgb(82, 184, 231);
        border-radius: 10px;
        background-color: rgb(0, 145, 255);
        
      }
      .btn1 a{
        text-decoration: none;
        font-weight: bold;
        font-size: 25px;
        color: black;
      } 
      .btn2{
        
        padding: 10px;
        margin:auto 20px;
       
      }
      .btn2 button{
        font-size: 25px;
        font-weight: bold;
        padding: 10px 20px ;
        border: 2px solid rgb(21, 228, 45);
        border-radius: 10px;
        background-color: rgb(0, 255, 21);
      }
</style>

</head>
<body>

<%@page import="com.Navaneetha.bean.appUserDao"%>  
<jsp:useBean id="u" class="com.Navaneetha.bean.appuser"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>   
 
<%@page import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
	String id=request.getParameter("p_id");
	int patient_id=Integer.parseInt(id);
	List<appuser> list = appUserDao.getAllRecordsByPatientId(patient_id);
	request.setAttribute("list", list);
	%>
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
    <h1 align="center">My Appointments</h1>
    
    <c:forEach items="${list}" var="u">
    <div class="card">
        <div class="sub-card">
          <h2>${u.getpatient_problem()}</h2>
          <p> <label>Appointment ID</label>: ${u.getappointment_id()}</p>
          <p> <label>Appointment Date and Time</label>: ${u.getappointment_date()} ${u.getappointment_time()}</p>
          <p> <label>Appointment Type</label>: ${u.getappointment_type()}</p>
          
        </div>
        <div class="btn1">
          <button><a href="view_my_appointment.jsp?appointment_id=${u.getappointment_id()}">View</a></button>
        </div>
        <div class="btn2">
          <button><label>${u.getappointment_status()}</label></button>
        </div>
    </div>
    <p> </p>
    </c:forEach>
    
  </body>
</html>