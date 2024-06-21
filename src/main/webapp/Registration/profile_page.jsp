<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Form</title>
    <style>
body{
    background-color:rgb(194, 237, 237)

 
}         
span {
	font-family: "Avenir";
}
.card{
    margin: auto;
    width: 50%; 
	max-width: 800px;
	
    border-radius: 10px;
    border: 2px solid rgb(173, 209, 231);
    background-color:  rgb(173, 200, 231) ;
	
}
.profile_container {
	margin: 10px 10px 0px;
	max-width: 800px;
	display: flex;
    border-radius: 10px;
    padding: 20px;
    background-color: rgb(194, 228, 239) 80%;
	overflow-x: hidden;
}

.back h1{
	text-align: center;
}
.edit{
    
    
    
}
.edit button{
    margin-bottom: 10px;
    margin-left: 44%;
    width:70px;
    padding: 4px 0;
    background-color: rgb(135, 181, 235);
    border: 2px solid rgb(121, 152, 220);
    border-radius: 5px;
}
.edit button a{
    text-decoration: none;
    color: black;
}
.edit button:hover{
    background-color: rgb(237, 170, 83);
}

.profile_img-LG {
	height: 250px;
	width: 200px;
	border-radius: 50%;

	object-fit: cover;
	object-position: 50% 50%;

	background-position: 40% 50%;
}



.profile_img_section {
	margin-right: 10px;
}

.profile_desc_section {
	display: flex;
	flex-direction: column;
    margin-top: 10px;
	margin-left: 10px;
}


@media screen and (max-width: 1000px) {
	.profile_container,
	.back {
		margin: 0px 33px 0px;
	}

	.profile_container {
		flex-direction: column;
	}

	.profile_img_section {
		margin: 0 auto;
	}

	.profile_img-LG {
		width: 200px;
		height: 250px;
		border-radius: 100%;
	}

	.profile_desc_section {
		margin-left: 10px;
		margin-bottom: 10px;
		margin-top: 20px;
	}

	
}

</style>
			
</head>
<body>

<%@page import="com.bhanu.bean.patientuserdao,com.bhanu.bean.patientuser"%>  
  
<%  
String pwd=request.getParameter("p_pwd");  
patientuser u=patientuserdao.getRecordByPwd(Integer.parseInt(pwd)); 

%>   

<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
<div class="card">
    <span class="back"><h1> My Profile</h1>
	</span>
    <section class="profile_container">
		<div class="profile_img_section">
			<img class="profile_img-LG" src="displayphoto?p_id=<%=u.getp_id() %>" />
            
		</div>
        
		<div class="profile_desc_section">
			<p><strong>User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong>  <%=u.getp_id() %></p>
            <p><strong>User Name&nbsp;&nbsp;:</strong>  <%=u.getp_name() %></p>
            <p><strong>Gender.&nbsp;&nbsp;:</strong>  <%=u.getp_gender() %></p>
            <p><strong>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong>  <%=u.getp_email() %></p>
            <p><strong>Mobile no.&nbsp;&nbsp;:</strong>  <%=u.getp_mblno() %></p>
            
            
		</div>
        
	</section>
    <div class="edit">
    	<button type="edit"><a href="edit_profile.jsp?p_pwd=<%=u.getp_pwd()%>">Edit</a></button>
    </div>
    
</div>

	
	
</body>
</html>