<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Details individual</title>
    <style>
        .container{
            
        }
        .doctor-details {
            padding:0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color:#9bc7fc;
            width: 250px;
            text-align-last: center;
            box-shadow: #9be4fc;
            margin-top:20px;  
            margin-bottom:50px; 
        }
        .patient-details {
            padding:0 10px  20px 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #a8e0f3;
            max-width: 96%;
            margin-left:4%;
            margin-right:4%;
            margin-top: 20px;
            
        }
        .patient-details table {
            
            margin-left: 250px;
            padding:10px;
            
            
        }
        .patient-details table tr {
            
           margin-bottom: 20px;
            
        }
        .doctor-details .det{
            margin-bottom: 5px;
        }
        .photo {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            overflow: hidden;
            margin-bottom: 10px;
            margin-left: 33%;
            
        }
        .photo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            
            
        }
        .box .photo {
            width: 200px;
            height: 250px;
            border-radius: 20%;
            overflow: hidden;
            margin-bottom: 10px;
            margin-left: 10%;
            
        }
        #btn button{
            font-weight: bold;
            font-size: 17px;
            width: 10%;
            padding: 5px;
            margin-top: 10px;
            
        }
        
        
    </style>
</head>
<body>
<button><a href="AppointmentAllDetails.jsp">Back</a></button>
<!-- appointment deatils of patient are displayed -->
<%@page import="com.Navaneetha.bean.appUserDao,com.Navaneetha.bean.appuser,java.util.*"%>
<%
String id=request.getParameter("appointment_id");
int appointment_id=Integer.parseInt(id);
appuser u=appUserDao.getRecordById(appointment_id);

%>
<%@page import="com.santhosh.bean.DoctorDao,com.santhosh.bean.Doctor"%>  
  
<%  

Doctor u1=DoctorDao.getRecordById(u.getdoctor_id());  
%> 

    <div class="container">
		<div class="patient-details">
			 <!--doctor details-->
			 
			 
			 <div class="doctor-details" style="float: right;">
                <h2>Doctor Details</h2>
                <div class="photo">
                    <img src="display_doctor_photo?d_Id=<%= u.getdoctor_id() %> " alt="Doctor Photo" >
                </div>
                <div class="det">
                    <strong>ID: <%=u1.getd_Id() %></strong> 
                </div>
                <div class="det">
                    <h3><%=u1.getd_Name() %></h3> 
                </div>
                <div class="det">
                    <p><%=u1.getd_Qual() %></p> 
                </div>
                <div class="det">
                    <h3>Specialization</h3> 
                </div>
                <div class="det">
                    <p><%=u1.getd_Spec() %></p> 
                </div>
                <div class="det">
                    <h3>Experience</h3> 
                </div>
                <div class="det">
                    <p><%=u1.getd_Exp() %></p> 
                </div>
            </div>

            
			 
			 
            <!--end doctor detials-->
            <h2 align="center">Patient Appointment Details</h2>

            

            <div class="box" style="float: left;">
            <h2 align="center">Photo</h2>
                <div class="photo" >
                    <img src="displayphoto?p_id=<%=u.getpatient_id() %>" >
                </div>
            </div>


            <table border="0" cellspacing="18">
            <tr>
            	<td>
            	<strong>Full Name</strong> 
                </td>
                <td>:&nbsp;<%=u.getpatient_fname() %> <%=u.getpatient_lname() %><%=u.getpatient_id() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Gender</strong> 
                </td>
                <td>: <%=u.getpatient_gender() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Age</strong> 
                </td>
                <td>: <%=u.getpatient_age() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Mobile no</strong> 
                </td>
                <td>: <%=u.getpatient_mblno() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Email</strong> 
                </td>
                <td>: <%=u.getpatient_email() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Address</strong> 
                </td>
                <td>: <%=u.getpatient_address() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Appointment Date</strong> 
                </td>
                <td>: <%=u.getappointment_date() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Appointment Time</strong> 
                </td>
                <td>: <%=u.getappointment_time() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Symptoms</strong> 
                </td>
                <td>: <%=u.getpatient_problem() %></td>
            </tr>
            </table>

            
 

        </div>
        
    
        
        </div>
       <div id="btn" align="center">
        <button onclick="display()">Print</button>
       </div> 
        <script>
		
   function display(){
	   window.print();
   }
    </script>

        
</body>
</html>
