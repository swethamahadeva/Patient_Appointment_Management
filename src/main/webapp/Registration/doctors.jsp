<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Information</title>
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
}
.container{
    margin-top: 10%;
  margin-left: 10%;
  
 
}
.flex-container {
  display: flex;
  column-gap: 15px;
  max-width: 1200px;
  width: 100%;
  margin: 10px auto;
  
  
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
  font-weight: bold;
}
p {
  font-weight: 300;
}
a {
  color: #888;
  text-decoration: none;
}

#btn button{
padding: 10px;
width:150px;
background-color:#00B4CC;
border:0px solid blue;
border-radius:2px;
font-weight:bold;

}
#btn button a{
color:white}
#btn button:hover{
background-color:green;
}
/* search bar */

@import url(https://fonts.googleapis.com/css?family=Open+Sans);


.search {
  width: 100%;
  position: relative;
  display: flex;
}

.searchTerm {
  width: 100%;
  border: 3px solid #79aad2;
  border-right: none;
  padding: 15.7px;
  height: 15px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #76be9d;
}

.searchTerm:focus{
  color:#79aad2;
}

.searchButton {
  width: 40px;
  height: 51px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 40%;
  position: absolute;
  top: 20%;
  margin-left: 30%;
  transform: translate(-50%, -50%);
}

/* end search bar */

        </style>
</head>
<body>
<%@page import="com.santhosh.bean.Doctor,com.santhosh.bean.DoctorDao,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Doctors List</h1>  
<%  
List<Doctor> list=DoctorDao.getAllRecords();  
request.setAttribute("list",list);  
%> 
<% String id=request.getParameter("p_id");
int p_id=Integer.parseInt(id);

%>
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
<div class="wrap">
            <form action="search-by-doctor.jsp" method="post">
            <div class="search">
               <input type="text" class="searchTerm" placeholder="Search By Doctor Name" name="d_Name">
               <input type="hidden" value="<%= p_id%>" name="p_id">
               <button type="submit" class="searchButton">
                 <i class="fa fa-search"></i>
              </button>
            </div>
            </form>
</div>
<div class="container">
<c:forEach items="${list}" var="u">
        <div class="flex-container space-between">
            <div class="col card">
              <div class="img-placeholder">
                <!--  <img src="https://cdn-icons-png.flaticon.com/512/9193/9193824.png">-->
                <img src="display_doctor_photo?d_Id=${u.getd_Id()} ">
              </div>
              <div>
                <h2>${u.getd_Name()}</h2>
                <p> ${u.getd_Qual()}</p>
                <h3>Specialization</h3>
                <p>${u.getd_Spec()}</p>
                <h3>Experience</h3>
                <p>${u.getd_Exp()} Years</p>
                <div id="btn"><button><a href="book-appointment.jsp?d_Id=${u.getd_Id()}&p_id1=<%= p_id%>">Make Appointment</a></button> </div>
              </div>
              
            </div>
        </div>
</c:forEach>
</div>







<!-- <table border="1" width="95%" align="center">
<c:forEach items="${list}" var="u">
<tr>
<td><img src="https://www.andhrahospitals.org/assets/uploads/doctors/raj.jpg"></td>
<td>
<table>
<tr><td>Name</td><td>:&nbsp;${u.getd_Name()}</td></tr>
<tr><td>Qualification</td><td>:&nbsp;${u.getd_Qual()}</td></tr>
<tr><td>Specialization</td><td>:&nbsp;${u.getd_Spec()}</td></tr>
<tr><td>Experience</td><td>:&nbsp;${u.getd_Exp()} Years</td></tr>
</table>
<button><a href="">Book Appointment</a></button>
</td>

</tr>


 </c:forEach>

</table>
-->


</body>
</html>
