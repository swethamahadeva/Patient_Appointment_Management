<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin edit profile</title>
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
    
<%@page import="com.santhosh.bean.DoctorDao,com.santhosh.bean.Doctor"%>   
  
<%  
String id=request.getParameter("admin_id");  
Doctor u=DoctorDao.getRecordById_admin(Integer.parseInt(id)); 
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
            <form action="updateadminrecords" method="post" enctype="multipart/form-data">
                <input type="hidden" name="admin_id" value="<%=u.getadmin_id() %>"/> 
                
                <table align="center">
                    
                    <tr>
                        <td>Photo</td>
                        <td><input type="file" name="admin_image" /></td>
                    </tr> 
                    
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="admin_name" value="<%=u.getadmin_name() %>"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="admin_email" value="<%=u.getadmin_email() %>"/></td>
                    </tr>
                    <tr>
                        <td>Mobile No.</td>
                        <td><input type="text" name="admin_mblno" value="<%=u.getadmin_mblno() %>"/></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="admin_address" value="<%=u.getadmin_address() %>"/></td>
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