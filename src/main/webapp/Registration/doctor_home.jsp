<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
        integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
        crossorigin="anonymous" />
<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,400&display=swap');
:root{
  --primary: #1f2e88 ;
  --secondary: #2f66d4 ;
  --hover: #a2d9f5;
  --black: #333;
  --white: #fff;
  --light-color: #666;
  --light-bg: #eee;
  --border:.2rem solid rgba(0,0,0,0.1);
  --box-shadow:0 .5rem 1rem rgba(0,0,0,0.1);
}

*{
  font-family: 'Poppins', sans-serif;
  margin:0;
  padding: 0;
  box-sizing:border-box;
  text-decoration: none;
  text-transform: capitalize;
  outline: none;
  border: none;
  transition: 0.2s linear;
}

html{
  font-size: 62.2%;
  overflow-x: hidden;
  scroll-padding-top: 9rem;
  scroll-behavior: smooth;
}

html::-webkit-scrollbar{
  width: .8rem;
}

html::-webkit-scrollbar-track{
  background: transparent;
}

html::-webkit-scrollbar-thumb{
  background: var(--primary);
  border-radius: 5rem;
}

/* global classes */

section{
  padding: 5rem 7%;
}

.heading{
  font-size: 4rem;
  text-align: center;
  color: var(--black);
  text-transform: uppercase;
  font-weight: bolder;
  margin-bottom: 3rem;
}

.btn{
  margin-top: 1rem;
  display: inline-block;
  padding: 1rem 3rem;
  border-radius: .5rem;
  background: var(--primary);
  font-size: 1.7rem;
  color: var(--white);
  cursor: pointer;
}

.btn:hover{
  background: var(--secondary);
}

/* header */
.header{
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: space-between;
  top:0;
  left: 0;
  right: 0;
  padding-top: 2rem;
  padding-bottom: 2rem;
  padding-right: 1%;
  padding-left: 1%;
  background: var(--white);
  box-shadow: var(--box-shadow);
  z-index: 1000;
}

.header .logo{
  font-size: 2.5rem;
  font-weight: bolder;
  color: var(--black);
  
}

.header .logo i{
  color: var(--primary);
  padding-right: .5rem;
  left: 0;
  
}
.header .navbar{
  margin-right: 50px;
  display: flex;
  max-width: 200%;
  
  
  
  
}
.header .navbar .menu1{
  padding-top: 1rem;
  margin: auto;
  
}

.header .navbar .menu1 a{
  font-size: 1.7rem;
  color: var(--black);
  margin: 0 20px;
}

.header .navbar a:hover{
  color: var(--primary);
}

.header .btn{
  margin-top: 0;

}

#menu-btn{
  font-size: 2.5rem;
  cursor: pointer;
  color: white;
  color:var(--white);
  margin-left: 1.7rem;
  display: none;
}

#menu-btn:hover{
  color: var(--primary);
}

/* drop button */

.dropbtn {
  color: black;
  padding: 1rem 2rem;
  font-size: 1.7rem;
  border: 1px solid rgb(148, 224, 72) ;
  border-radius: 50%;
  background-color: rgb(157, 234, 133);
}

.dropdown {
  position: relative;
  display: inline-block;
  margin-left: 40px;
  padding-top:1rem ;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #e3e9ef;
  border-radius: .5rem;
  min-width: 290px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 8px 8px;
  font-size: 16px;
  
  
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {
  background-color: #aed9de;
}

.dropdown:hover .dropdown-content {display: block;

}

.dropdown:hover .dropbtn {
  background: var(--secondary);
  border-radius: 50%;

}

/*end drop button */


/* end header */


/* home */
.home{
  min-height: 100vh;
  display: flex;
  align-items: center;
  background: url(https://www.cpajournal.com/wp-content/uploads/2019/02/GettyImages-1001713236-730x330.jpg) no-repeat;
  background-size: cover;
  background-position: center;
}

.home .content{
  max-width: 60rem;
  padding-top: 10rem;
  padding-left: 6rem; /*rtl*/
}

.home .content h3{
  font-size: 6rem;
  color:rgb(29, 15, 220);
  line-height: 1.2;
}

.home .content p{
  line-height: 2;
  font-size: 1.5rem;
  color: var(--light-color);
  padding: 1rem 0;
}

/* end home */

/* about us */

.about .row{
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 2rem;
}

.about .row .image{
  flex: 1 1 40rem;
}

.about .row .image img{
  width: 100%;
  height: 100%;
  border-radius: 5rem;
}

.about .row .content{
  flex: 1 1 40rem;
}

.about .row .content h3{
  color: var(--black);
  font-size: 3.5rem;
  line-height: 1.5;
}

.about .row .content p{
  font-size: 1.4rem;
  color: var(--light-color);
  padding: 1rem 0;
  line-height: 2;
}
/* end about */

/* doctors */
.doctors{
  background: var(--light-bg);
}

.doctors .box-container{
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(30rem,1fr));
  gap: 2rem;
}

.doctors .box-container .box{
  padding: 1rem;
  text-align: center;
  background: rgb(246, 244, 244);
  box-shadow: var(--box-shadow);
  border-radius: 5rem;
}

.doctors .box-container .box:hover{
  background: var(--hover);
  cursor: context-menu;
}

.doctors .box-container .box img{
  margin: 1rem 0;
  height: 17rem;
  border-radius: 5rem;
  border: 1px solid rgb(222, 209, 209);
}

.doctors .box-container .box h2{
  font-size: 2rem;
  color: var(--black);
  padding: 1rem 0;
}

.doctors .box-container .box h3{
  font-size: 1.5rem;
  color: var(--black);
  padding: 1rem 0;
}

.doctors .box-container .box p{
  font-size: 1.5rem;
  line-height: 2;
  color: var(--light-color);
}

/* end doctors section */

/*  department  */

.department{
  background: var(--light-bg);
}

.department .box-container{
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(30rem,1fr));
  gap: 2rem;
}

.department .box-container .box{
  padding: 1rem;
  text-align: center;
  background: rgb(246, 244, 244);
  box-shadow: var(--box-shadow);
  border-radius: 5rem;
}

.department .box-container .box:hover{
  background: var(--hover);
  cursor: context-menu;
}

.department .box-container .box img{
  margin: 1rem 0;
  height: 17rem;
  width: 20rem;
  border-radius: 50%;
  border: 1px solid rgb(222, 209, 209);
}

.department .box-container .box h2{
  font-size: 2rem;
  color: var(--black);
  padding: 1rem 0;
}

/* end department section */

/* contact */
.contact{
  background: var(--light-bg);
}

.contact form{
  padding: 2rem;
  background: var(--white);
  max-width: 50rem;
  margin: 0 auto;
  border-radius: .5rem;
}

.contact form span{
  font-size: 1.7rem;
  color: var(--primary);
}

.contact form .input-box{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.contact form .input-box input{
  padding: 1rem;
  margin: 1rem 0;
  font-size: 1.7rem;
  color: var(--black);
  text-transform: capitalize;
  background: var(--light-bg);
  border-radius: .5rem;
  width: 49%;
}

.contact form .box{
  margin: 1rem 0;
  width: 100%;
  background: var(--light-bg);
  border-radius: .5rem;
  padding: 1rem;
  font-size: 1.7rem;
  color: var(--black);
  text-transform: capitalize;
}

/* end contact */

/* footer */
.footer{
  text-align: center;
}

.footer .box-container{
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(25rem,1fr));
  gap: 2rem;
}

.footer .box-container .box h3{
  font-size: 2.2rem;
  padding: 1rem 0;
  color: var(--secondary);
}

.footer .box-container .box p{
  font-size: 1.5rem;
  line-height: 2;
  color: var(--light-color);
  padding: .5rem 0;
}

.footer .box-container .box .share{
  margin-top: 1rem;
}

.footer .box-container .box .share a{
  height: 4.5rem;
  width: 4.5rem;
  background: var(--primary);
  color: var(--white);
  border-radius: 10%;
  line-height: 4.5rem;
  font-size: 1.7rem;
  margin-right: .3rem;
  text-align: center;
}

.footer .box-container .box .share a:hover{
  background: var(--secondary);
}

.footer .box-container .box .link{
  display: block;
  font-size: 1.7rem;
  line-height: 2;
  color: var(--primary);
  padding: .5rem 0;
}

.footer .box-container .box .link:hover{
  color: var(--hover);
}

.footer .credit{
  margin-top: 3rem;
  padding-top: 3rem;
  font-size: 2rem;
  text-align: center;
  text-transform: capitalize;
  color: var(--primary);
  border-top: .1rem solid var(--secondary);
}

.footer .credit i{
  color: var(--hover);
}

.footer .credit span{
  color: var(--secondary);
}

/* end footer */

/* media queries */


</style>
</head>
<body>
<%@page import="com.santhosh.bean.DoctorDao"%>  
<jsp:useBean id="u" class="com.santhosh.bean.Doctor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>   
  
<%  
boolean status=DoctorDao.validate(u); 

String name=u.getd_UserName();

int n=name.length();
String letter=""+name.charAt(0);
String let=letter.toUpperCase();
%>
<%@page import="com.santhosh.bean.Doctor"%>  
<%
Doctor u1=DoctorDao.getRecordByPwd(u.getd_Pwd());
%>


/<!-- start header -->
<header class="header">

    <!--   start logo -->
    <div class="logo">
      <!--<i class="fas fa-tooth"></i>-->
      <i class="fas fa-user-md"></i>
      <font color="green">D</font>octor Appointment 
    </div>
  
    <!--   start navbar -->
    <div class="navbar">
        <div class="menu1">
            <a href="Appointment_records.jsp?d_Id=<%= u1.getd_Id() %>">Appoinments</a>
            <a href="member_doctor.jsp?d_Id=<%= u1.getd_Id() %>">Member</a>
            <a href="contact_us.jsp">Contact us </a>
            <a href="about.jsp">About us</a>
          </div>  
          <div class="dropdown">
              <div class="dropbtn"><%=let %></div>
              <div class="dropdown-content">
                <a href="doctor_profile_page.jsp?d_Id=<%= u1.getd_Id() %>">My Profile</a>
                <a href="start_page.jsp">Logout</a>
              </div>
          </div>
    </div>
    
    <!--   end navbar -->
    
    
    

    
    
  
</header>
<!-- end header -->
  
<!-- start home -->
<section id="home" class="home">
  
    <div class="content">
  
      <h3>We Care Your <label><font color="black">Health</font></label> <br>Problems</h3>
      <p>Sweet Treatment for all your pains and Professional & Highly Quality services and Care with most advanced Technology</p>
      
  
    </div>
  
  </section>
  <!-- end home -->
  
  <!-- about -->
  
  <section id="about" class="about">
  
    <h1 class="heading"> about us </h1>
  
    <!--   content -->
    <div class="row">
  
      <!--     image -->
      <div class="image">
        <img src="https://images.pexels.com/photos/3845810/pexels-photo-3845810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="medical equipment">
      </div>
  
      <!--     info -->
      <div class="content">
        <h3>Sweet Treatment for all your pains</h3>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta natus alias eaque sapiente tempore sint expedita perferendi.</p>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta natus alias eaque sapiente tempore sint expedita perferendi.</p>
        <a href="about.jsp" class="btn">read more</a>
      </div>
  
    </div>
  
</section>
  
  <!-- end about -->
  
  <!-- doctors -->

  
  <!-- footer -->
  
  <section class="footer">
    
    <div class="box-container">
      
  <!--     start column -->
      <div class="box">
        
        <h3>address</h3>
        <p></p>
        <div class="share">
          <a href="#" class="fab fa-facebook"></a>
          <a href="#" class="fab fa-twitter"></a>
          <a href="#" class="fab fa-linkedin"></a>
          <a href="www.instagram/m_a_h_e_s_h_.23" class="fab fa-instagram"></a>
        </div>
        
      </div>
  <!--     end column -->
      
  <!--     start column -->
      <div class="box">
        <h3>email</h3>
        <a href="#" class="link">ssnbteam05@gmail.com</a>
      </div>
      
  <!--     end column -->
      
  <!--     start column -->
      <div class="box">
        <h3>opening hours</h3>
        <p>monday-friday : 08:00 - 23:00<br>
          saturday : 10:00 - 15:00
        </p>
      </div>
  <!--     end column -->   
      
    </div>
    
    <div class="credit">
        made with <i class="fas fa-heart"></i> by <span>SSNB Team</span> | all rights reserved &copy;2024
      </div>
    
  </section>
  
  <!-- end footer -->
  
</body>
<script>
    //swipper js
var swiper = new Swiper(".team-slider",{
  loop: true,
  grabCursor: true,
  spaceBetween: 20,
  breakpoints:{
    0: {
    slidesPerView:1,  
    },
    768: {
    slidesPerView:2,  
    }, 
    991: {
    slidesPerView:3,  
    },
  }
});
</script>
</html>