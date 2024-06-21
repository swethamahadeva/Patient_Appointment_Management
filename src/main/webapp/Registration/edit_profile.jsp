<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
    body{
        background-color:rgb(223, 236, 236)

 
    }         
    .card{
        
        margin: auto auto;
        max-width: 50%;
        
        background-color: rgb(135, 223, 234);
        border-radius: 10px;
        padding: 20px;
        justify-content: space-between;

    }
    
    .profile_img_section img{
        border-radius: 50%;
    }
    .profile_desc_section input{
        width: 200px;
    }
    .edit{
        margin-top: 10px;
    }
    .edit input{
       width: 100px;
       padding: 5px;
       font-weight: bold; 
       font-size: 15px;
       background-color: rgb(84, 86, 224);
       border: 1px solid rgb(28, 245, 169);
       border-radius: 5px;
       color: whitesmoke;
    }
    .edit input:hover{
        background-color: darksalmon;
        border: darksalmon;
        color: black;
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
    <div class="sub-card" align="center">
        <h1> Edit Profile</h1>
	
    
		<!-- <div class="profile_img_section" align="center">
			<img src="C:\Users\Santhosh\Pictures\images2.png" />
            
		</div>
         -->
		<div class="profile_desc_section" align="center">
            <form action="savepatientrecords" method="post" enctype="multipart/form-data">
                <input type="hidden" name="p_id" value="<%=u.getp_id() %>" /> 
                <input type="hidden" name="p_pwd" value="<%=u.getp_pwd() %>" /> 
                <table align="center">
                    
                    <tr>
                        <td>Photo</td>
                        <td><input type="file" name="p_image" /></td>
                    </tr> 
                    
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="p_name" value="<%=u.getp_name() %>"/></td>
                    </tr>
                    <tr><td>Gender:</td><td> 
						<input type="radio" name="p_gender" value="male" style="width:30px"/>Male
						<input type="radio" name="p_gender" value="female" style="width:30px"/>Female</td>
					</tr> 
                    <tr>
                    
                        <td>Email</td>
                        <td><input type="text" name="p_email" value="<%=u.getp_email() %>"/></td>
                    </tr>
                    <tr>
                        <td>Mobile No.</td>
                        <td><input type="text" name="p_mblno" value="<%=u.getp_mblno() %>"/></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="p_address" value="<%=u.getp_address() %>"/></td>
                    </tr>
                    <tr><td colspan="2"><input type="submit" value="Edit Profile"/></td></tr>

                </table>
                <!-- <div class="edit" align="center"><input type="submit" value="Update"/></div> -->
            </form>

        </div>
        
    </div>
    
</div>	
    
</body>

</html>