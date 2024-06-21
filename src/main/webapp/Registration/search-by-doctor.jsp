<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
        integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
        crossorigin="anonymous" />
        <style>
            body {
  color: #1a1a1a;
  font-family: "Poppins", sans-serif;
   background-color:#9bc7fc;
}
h1{
    margin-left: 10%;
    font-size: 40px;
    margin-top: 5%;
}

    
  
 

.flex-container {
  display: flex;
  column-gap: 15px;
  max-width: 1200px;
  width: 100%;
  margin: 10px auto;
  margin-top: 5%;
  margin-left: 10%;
  
  
}
.space-between {
  justify-content: space-between;
}
.col {
  width: 70%;
}
.card {
  border: 1px solid #eee;
  border-radius: 15px;
  padding: 20px;
  background-color: #fff;
  display: flex;
  column-gap: 70px;
  box-shadow: 1px 1px 16px -6px rgba(0, 0, 0, 0.5);
  -webkit-box-shadow: 1px 1px 16px -6px rgba(0, 0, 0, 0.5);
  -moz-box-shadow: 1px 1px 16px -6px rgba(0, 0, 0, 0.5);
}
.card img {
  max-width: 250px;
  transform: translateY(-15%);
}
.img-placeholder {
  position: relative;
  max-height: 200px;
  overflow: hidden;
  border-radius: 50%;
  box-shadow: 1px 1px 16px -6px rgba(0, 0, 0, 0.75);
  -webkit-box-shadow: 1px 1px 16px -6px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 1px 1px 16px -6px rgba(0, 0, 0, 0.75);
}
h3 {
  font-weight: 400;
}
p {
  font-weight: 300;
}
a {
  color: white;
  text-decoration: none;
}
a:hover {
  color: inherit;
  
}
#btn button:hover{
background-color:blue;
}
#btn button{
padding: 10px;
width:150px;
background-color:#00B4CC;
border:0px solid blue;
border-radius:2px;
font-weight:bold;
color:white;
}

</style>
</head>
<body>
<%@ page errorPage="error.jsp" %>  
<%@page import="com.santhosh.bean.DoctorDao,com.santhosh.bean.Doctor"%>  
  
<%  
String name=request.getParameter("d_Name"); 
String p_id=request.getParameter("p_id");
int p_id1=Integer.parseInt(p_id);
Doctor u=DoctorDao.getRecordByName(name);  
%>   
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
<h1>Search By Doctor</h1>
        <div class="flex-container space-between">
            <div class="col card">
              <div class="img-placeholder">
                <img src="display_doctor_photo?d_Id=<%= u.getd_Id()%> ">
              </div>
              <div>
                <h2><%= u.getd_Name()%></h2>
                <p> <%= u.getd_Qual()%></p>
                <h3>Specialization</h3>
                <p> <%= u.getd_Spec()%></p>
                <h3>Experience</h3>
                <p><%= u.getd_Exp()%> Years</p>
                <div id="btn"><button><a href="book-appointment.jsp?d_Id=<%=u.getd_Id()%>&p_id1=<%= p_id%>">Make Appointment</a></button> </div>
              </div>
              
            </div>
        </div>
        

</body>
</html>