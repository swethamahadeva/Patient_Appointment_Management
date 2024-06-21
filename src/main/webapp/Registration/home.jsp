<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><head>
<title>
            index page
</title>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
        integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
        crossorigin="anonymous" />
<link rel="stylesheet" href="home.css">
</head>
<body>

<%@page import="com.bhanu.bean.patientuserdao"%>  
<jsp:useBean id="u" class="com.bhanu.bean.patientuser"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>   
  
<%  
boolean status=patientuserdao.validate(u);  
String name=u.getp_name();
int n=name.length();
String letter=""+name.charAt(0);
String let=letter.toUpperCase();
%>
<%@page import="com.bhanu.bean.patientuser"%> 
<%
patientuser u1=patientuserdao.getRecordByPwd(u.getp_pwd());
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
      <a href="#home">home</a>
      <a href="about.jsp">about</a>
      <a href="doctors.jsp?p_id=<%= u1.getp_id() %>">doctor</a>
      <a href="departments.jsp?p_id=<%= u1.getp_id() %>">department</a>
      <a href="contact_us.jsp">contact</a>
      <div class="dropdown">
        <div class="dropbtn"><h3><%out.print(let); %></h3></div>
        <div class="dropdown-content">
          <a href="profile_page.jsp?p_pwd=<%=u.getp_pwd() %>">My Profile</a>
          <a href="My_appointment.jsp?p_id=<%= u1.getp_id() %>">My appointments</a>
          
          <a href="start_page.jsp">Logout</a>
        </div>
      </div>
    </nav>
    <!--   end navbar -->
    <a href="doctors.jsp?p_id=<%= u1.getp_id() %>" class="btn"><font color="white">make appointment</font></a>
    <div id="menu-btn" class="fas fa-bars"></div>
    
    

    
    
  
</header>
<!-- end header -->
  
<!-- start home -->
<section id="home" class="home">
  
    <div class="content">
  
      <h3>We Care Your <label><font color="black">Health</font></label> <br>Problems</h3>
      <p>Sweet Treatment for all your pains and Professional & Highly Quality services and Care with most advanced Technology</p>
      <a href="doctors.jsp" class="btn">make appointment</a>
  
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
        <img src="https://img.freepik.com/free-vector/health-professional-team_52683-36023.jpg" alt="medical equipment">
      </div>
  
      <!--     info -->
      <div class="content">
        <h3>Sweet Treatment for all your pains</h3>
        <p style="text-align:justify;">A patient appointment system is a solution to help 
				streamline the patient flow with available resources,
				 moving patients efficiently through their patient 
				 journey while reducing the administrative workload 
				 of healthcare staff.</p>
        <p style="text-align:justidy;">Using a patient appointment 
				 system gives more flexibility and control to your
				  patients to book their own appointments.</p>
        <a href="about.jsp" class="btn">read more</a>
      </div>
  
    </div>
  
</section>
  
  <!-- end about -->
  
  <!-- doctors -->
  
  <section id="doctors" class="doctors">
  
    <h1 class="heading"> our Doctors </h1>
  
    <div class="box-container">
      <!--     start field -->
      <div class="box">
        <img src="https://cdn-icons-png.flaticon.com/512/9193/9193824.png">
        <h2>Dr. Aditya Govindavarjhulla</h2>
        <p>MBBS, DNB (FAMILY MEDICINE</p>
        <h3>Specialization:</h3>
        <p>General Physician</p>
        <h3>Experience:</h3>
        <p>8 years</p>
      </div>
      <!--     end field -->
  
      <!--     start field -->
      <div class="box">
        <img src="https://cdn-icons-png.flaticon.com/512/9193/9193824.png">
        <h2>Dr. A Suvarchala</h2>
        <p>MBBS,MS</p>
        <h3>Specialization:</h3>
        <p>General Surgery</p>
        <h3>Experience:</h3>
        <p>10 years</p>
      </div>
      <!--     end field -->

      <!--     start field -->
      <div class="box">
        <img src="https://cdn-icons-png.flaticon.com/512/9193/9193824.png">
        <h2>Dr. Baruah Dk</h2>
          <p>MD, DM, FACC, FICC</p>
          <h3>Specialization:</h3>
          <p>Cardiology</p>
          <h3>Experience:</h3>
          <p>26 years</p>
      </div>
      <!--     end field -->
  
    </div>
  
</section>
  
<!-- end doctors -->

<section id="department" class="department">
  
    <h1 class="heading"> our Department </h1>
  
    <div class="box-container">
      <!--     start field -->
      <div class="box">
        <img src="https://hinduja-prod-assets.s3.ap-south-1.amazonaws.com/2022-03/cardiology-banner.png?VersionId=1ccynkqeklcPoHds0YuJldKijkKegtzq">
        <h2>Cardiology</h2>
      </div>
      <!--     end field -->
  
      <!--     start field -->
      <div class="box">
        <img src="https://www.simshospitalsatana.com/wp-content/uploads/2019/09/ent.jpg">
        <h2>ENT</h2>
      </div>
      <!--     end field -->

      <!--     start field -->
      <div class="box">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYgpyuAQk29-bpFoAgZkMpSodJnwXD-7rGJlfzsFLWq2uU0GWobh4c5C_HYwE_wYh5CUA&usqp=CAU">
        
        <h2>Nephrology</h2>
      </div>
      <!--     end field -->
  
    </div>
  
  </section>
  
  <!-- end doctors -->
  
  
  <!-- contact -->
  
 <!-- <section id="contact" class="contact">
    
    <h1 class="heading">make appointment</h1>
    
    <form action="">
      
        <span>your Name:</span>
        <input type="text" class="box" placeholder="enter your name" >
      
      <span>your email:</span>
      <input type="email" class="box" placeholder="enter your email" >
      
       <span>your number:</span>
       <input type="number" class="box" placeholder="enter your number" >
      
       <span>appointment date:</span>
       <input type="datetime-local" class="box">
      
       <span>your problem:</span>
       <textarea class="box" placeholder="enter your problem" ></textarea>

      <input type="submit" class="btn" value="Book Now">
      
    </form>
  </section>
  -->
  <!-- contact ends -->
  
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