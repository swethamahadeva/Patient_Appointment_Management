<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            
        }

        .container {
            display: flex;
            max-width: 1200px;
            width: 100%;
            
            
            
            background-color: rgba(247, 244, 244, 0.8); 
            
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            
            
        }
       
        .form-container {
            background-color: #c5dded;
            margin-top: 2%;
            margin-left: 2%;
            padding: 20px;
            
            border-radius: 8px;
            
           
        }
         .form-container1 {
            background-color: #c5dded;
            margin-top:2%;
            margin-right: 3%;
            padding: 20px;
            margin-left: 20px;
            border-radius: 8px;
        flex: 1;
        justify-content: space-between;
        }

        .set {
            display: flex;
            justify-content: space-between;
            
        }
        #box{
            flex: 1;
        }
        .set label{
            
            margin-bottom: 3px;
        }
        .set input {
            width:90%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: 30px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .set select{
        	width:90%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: 30px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        label {
            display: block;
            margin-bottom: 3px;
        }

        input, select, textarea {
            width:95%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color:white;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2a3ae7;
        }
        .img {
			height: 200px;
			width: 200px;
			border-radius: 50%;
		}
		.form-container1sub2{
			margin-top:15px;
            text-align-last: center;
			
		}
    </style>

</style>
</head>
<body>
 
<%@page import="com.santhosh.bean.DoctorDao,com.santhosh.bean.Doctor"%>  
  
<%  
String id=request.getParameter("d_Id");
String p_id=request.getParameter("p_id1");
int Id=Integer.parseInt(id);
int p_id2=Integer.parseInt(p_id);
//System.out.println(Id+","+p_id2);
Doctor u=DoctorDao.getRecordById(Id);  
%> 
<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
	<div class="container">
	  <div class="form-container">
		 <h1>Doctor Details</h1>
		<div class="form-container1sub1">
			<!-- <img src="https://cdn-icons-png.flaticon.com/512/9193/9193824.png" class="img"> -->
			<img src="display_doctor_photo?d_Id=<%= u.getd_Id() %> " class="img">
		</div>
		<div class="form-container1sub2">
				
               <h2><%= u.getd_Name()%> </h2>
                <p> <%= u.getd_Qual()%></p>
                <h3>Specialization</h3>
                <p> <%= u.getd_Spec()%></p>
                <h3>Experience</h3>
                <p><%= u.getd_Exp()%> Years</p>
                
            </div>
    
       </div>


    
        <div class="form-container1">
            <form id="form1" action="save_appointment_records" method="post" enctype="multipart/form-data">
                <h1 align="center">Appointment Form</h1>
                <div class="set"><div id="box">
                    <label for="patientName">First Name:</label>
                     <input type="text" id="patient_fname" name="patient_fname" placeholder="Patient Name" required>
                </div>
                <div id="box">
                    <label for="lastName">Last Name:</label>
                     <input type="text" id="patient_lname" name="patient_lname" placeholder="Enter Your Last Name" required>
                     
                </div>    
                     
                </div>

                <div class="set"><div id="box">
                    <label for="patient_gender">Gender:</label>
                	<select name="patient_gender" >
                		<option>Select</option>
                		<option>Male</option>
                		<option>Female</option>
                	</select>

                </div>
                <div id="box">
                    <label for="patient_age">Age:</label>
                     <input type="number" id="patient_age" name="patient_age" placeholder="Enter Your Age" required>
                     
                </div>        
                </div>
                
                
                <div class="set"><div id="box">
                    <label for="patient_mblno">Mobile Number:</label>
                <input type="text" id="patient_mblno" name="patient_mblno" placeholder="Enter Your Mobile Number " required>

                </div>
                <div id="box">
                    <label for="patient_email">Email:</label>
                <input type="email" id="patient_email" name="patient_email" placeholder="Enter Your Email " required>

                </div>        
                </div>


                
				<div class="set"><div id="box">
                    <label for="appointment_date">Appointment Date:</label>
                <input type="date" id="appointment_date" name="appointment_date"  required>

                </div>
                <div id="box">
                    <label for="appointment_time">Appointment Time:</label>
                    <input type="time" id="appointment_time" name="appointment_time" required>

                </div>        
                </div>
                <!-- <label for="patient_image">Image:</label>
                <input type="file" id="patient_image" name="patient_image" required> -->
                <label for="appointment_type">Appointment Type:</label>
                <select name="appointment_type" >
                		<option>Select</option>
                		<option>Direct</option>
                		<option>Video</option>
                </select>
		
                <label for="patient_address">Address:</label>
                <textarea id="patient_address" name="patient_address" rows="4" required></textarea>
                <label for="patient_problem">Symptoms:</label>
                <textarea id="patient_problem" name="patient_problem" rows="4" required></textarea>

				<!-- doctor id hidden  -->
				<input type="hidden" name="doctor_id" value="<%= u.getd_Id()%>"/>
				<input type="hidden" name="patient_id" value="<%= p_id2%>"/>
				<!-- end doctor id hidden -->
				
                <button type="submit">Submit Appointment</button>
            </form>
        </div>
</div>

        </body>
       <script>
        document.getElementById("form1").addEventListener("submit", function(event) {
            // Show alert message
            alert("Appointment booked successfully!");

            // Optionally, you can redirect to a new page after the alert
            window.location.href = "confirmation-page.html";
        });
    </script>
       
</html>