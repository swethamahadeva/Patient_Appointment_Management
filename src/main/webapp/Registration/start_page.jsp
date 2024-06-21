<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
            body{
                background-color: rgb(179, 223, 235);
                
            }
            .container{
                
                max-width: 70%;
                height: 40%;
                margin: auto auto;
                display: flex;
                justify-content: space-around;
                padding: 20px;
                border: 4px solid rgb(141, 218, 239);
                border-radius: 6px;
                
            }
            .box{
                background-color: rgb(141, 218, 239);
                display: block;
                padding:10px;
                border-radius: 10px;
            }
            .image img{
                border-radius: 50%;
            }
            .sub a{
                text-decoration: none;
                
            }
            .box .sub h1{
                text-align: center;
            }
</style>


    </head>
    <body>
        <h1 align="center">Login As </h1><br><br><br>
        <div class="container">
            <div class="box">
                <div class="image">
                    <img src="https://www.creativefabrica.com/wp-content/uploads/2022/10/25/Support-Admin-icon-Graphics-43209390-1.jpg" width="150" height="150">
                </div>
                <div class="sub">
                    <h1><a href="admin_login.jsp">Admin</a></h1>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4t8bw1VpGNGI6bM3PDI_CZ4CWdqm0Ez0MBemVjur3wSXd0GPexxIv-v28RO7ZfPxGCQI&usqp=CAU" width="150" height="150"></image>
                </div>
                <div class="sub">
                    <h1><a href="doctor_login.jsp">Doctor</a></h1>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7K4QPnVPHXj_KlMh3PRTzPflFX2xRnjCKJuy9l4bKGKlb1WfRQiOijd1jLTabtzJWoQE&usqp=CAU" width="150" height="150"></image>
                </div>
                <div class="sub">
                    <h1><a href="login.jsp">User</a></h1>
                </div>
            </div>
        </div>
    </body>
</html>