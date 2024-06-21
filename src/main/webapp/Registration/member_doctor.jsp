<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.box{
 background-color:lightblue;
 margin:auto;
 max-width:500px;
 padding:5px;
}
.box table{
padding:3px;
}
#btn{
 padding:5px;
 background-color:brown;
 border:1px solid brown;
 border-radius:5px;
 color:white;
 font-weight:bold;
}
#btn:hover{
background-color:darkgreen;
border:1px solid darkgreen;
 border-radius:5px;
 color:white;
}
</style>
</head>
<body>
<%
String id=request.getParameter("d_Id");
int d_Id=Integer.parseInt(id);
%>
<div><button type="button" onclick="javascript:history.go(-2)">Back</button></div>
<div class="box">
<h1 align="center">Register as a Doctor</h1> 

<form id="form1" enctype="multipart/form-data" action="savedoctorrecords" method="post">  
<table align="center"> 
<input type="hidden" value="<%= d_Id %>" name="d_Id" />
<tr><td>Name:</td><td><input type="text" name="d_Name"/></td></tr> 
<tr><td>Role:</td><td><input type="text" name="d_Spec"/></td></tr> 
<tr><td>Department:</td><td><input type="text" name="d_Dept"/></td></tr>
<tr><td>Qualication:</td><td><input type="text" name="d_Qual"/></td></tr>
<tr><td>Mobile No:</td><td><input type="text" name="d_Mblno"/></td></tr>  
<tr><td>Email:</td><td><input type="email" name="d_Email"/></td></tr>
<tr><td>Experience:</td><td><input type="number" name="d_Exp"/></td></tr>
<tr><td>Photo:</td><td><input type="file" name="d_image"></td></tr>
<tr><td>Address:</td><td><textarea name="d_Address"></textarea></td></tr>

</tr>
<tr><td colspan="2" align="center"><input type="submit" value="Add Doctor" id="btn"/></td></tr>  
</table>  
 </form>
</div> 

</body>
</html>