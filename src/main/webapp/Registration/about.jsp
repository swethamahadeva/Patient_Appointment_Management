<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">
	<style>

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Global Styles */

body {
	font-family: Arial, sans-serif;
}




/* About Section */

.about {
	background: rgb(224, 251, 222);
	background: linear-gradient(360deg, rgb(245, 255, 245) 0%, rgb(128, 255, 255) 100%);
	padding: 10px 0 20px 0;
	text-align: center;
}

.about h1 {
	font-size: 2.5rem;
	margin-bottom: 20px;
}

.about p {
	font-size: 1rem;
	color: #323030;
	max-width: 800px;
	margin: 0 auto;
}

.about-info {
	margin: 2rem 2rem;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: left;
}

/*.about-img {
	width: 20rem;
	height: 20rem;

}*/

.about-img img {
	width: 300px;
	height:400px;
	border-radius: 5px;
	object-fit: contain;
}

.about-info p {
	font-size: 1.3rem;
	margin: 0 2rem;
	text-align: justify;
}

button {
	border: none;
	outline: 0;
	padding: 10px;
	margin: 2rem;
	font-size: 1rem;
	color: white;
	background-color: rgb(128, 255, 255);
	text-align: center;
	cursor: pointer;
	width: 15rem;
	border-radius: 4px;
}

button:hover {
	background-color: #1f9405;
}

/* Team Section */

.team {
	padding: 10px 0;
	text-align: center;
}

.team h1 {
	font-size: 2.5rem;
	margin-bottom: 20px;
}

.team-cards {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 15px;
	margin-top: 20px;
}

.card {
	background-color: white;
	border-radius: 6px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
	overflow: hidden;
	transition: transform 0.2s, box-shadow 0.2s;
	width: 15rem;
	height: 25rem;
	margin-top: 10px;
}

.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 12px rgba(0, 0, 0, 0.5);
}

.card-img {
	width: 15rem;
	height: 12rem;
}

.card-img img {
	width: 100%;
	height: 100%;
	object-fit: fill;
}

.card-info button {
	margin: 2rem 1rem;
}

.card-name {
	font-size: 2rem;
	margin: 10px 0;
}

.card-role {
	font-size: 1rem;
	color: #888;
	margin: 5px 0;
}

.card-email {
	font-size: 1rem;
	color: #555;
}

/* Footer */
footer {
	background-color: #222;
	color: white;
	text-align: center;
	padding: 20px 0;
}

@media (max-width: 768px) {
	nav {
		display: block;
	}

	.logo {
		text-align: center;
	}

	.nav-links {
		margin-top: 1rem;
		justify-content: space-between;
	}

	.nav-links li {
		margin-right: 0;
	}

	.about h1 {
		font-size: 2rem;
	}

	.about p {
		font-size: 0.9rem;
	}

	.about-info {
		flex-direction: column;
		text-align: center;
	}

	.about-img {
		width: 60%;
		height: 60%;
		margin-bottom: 1rem;
	}

	.about-info p {
		margin: 1rem 2rem;
	}

	.about-info button {
		margin: 1rem 2rem;
		width: 10rem;
	}

	.team {
		margin:񁒷rem;
	}
}

    </style>
	<title>About Us</title>
</head>

<body>
	<div><button type="button" onclick="javascript:history.go(-1)">Back</button></div>
	<section class="about">
		
		<div class="about-info">
			<div class="about-img">
				<img src="https://img.freepik.com/free-vector/health-professional-team_52683-36023.jpg">
			</div>
			<div>
                <h1 align="center">About Us</h1>
                
		
               <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient Appointment Management System...</h3>
        <br>
		
			<p> A patient appointment system is a solution to help 
				streamline the patient flow with available resources,
				 moving patients efficiently through their patient 
				 journey while reducing the administrative workload 
				 of healthcare staff. Using a patient appointment 
				 system gives more flexibility and control to your
				  patients to book their own appointments.
			</p>
				<button>Read More...</button>
			</div>
		</div>
	</section>

	<section class="team">
		<h1>Meet Our Team</h1>
		<div class="team-cards">
		
			<!-- Cards here -->
			<!-- Card 1 -->
		
			<div class="card">
				<div class="card-img">
					<img src=
https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1707294996~exp=1707295596~hmac=8ef7c6294b54a53a56930069c87835fa0965c815774cfaa8d109e9f78462e215" alt="User 1">
				</div>
				<div class="card-info">
					<h2 class="card-name">Santosh</h2>
					<p class="card-role">Teamleader</p>
					<p class="card-email">santosh23@gmail.com</p>
					<p><button class="button">Contact</button></p>
				</div>
			</div>

			<!-- Card 2 -->
		
			<div class="card">
				<div class="card-img">
					<img src=
"https://img.freepik.com/free-vector/illustration-businesswoman_53876-5857.jpg?w=740&t=st=1707295044~exp=1707295644~hmac=b2e0c4fc4fb55561fb3514d778f39265168ad0fa1fce48faf36035c82e6d0fce" alt="User 2">
				</div>
				<div class="card-info">
					<h2 class="card-name">Sireesha</h2>
					<p class="card-role">Team member</p>
					<p class="card-email">sireesha98@gmail.com</p>
					<p><button class="button">Contact</button></p>
				</div>
			</div>
		
			<!-- Card 3 -->
		
			<div class="card">
				<div class="card-img">
					<img src=
"https://img.freepik.com/free-vector/woman-avatar_23-2147501833.jpg?w=740&t=st=1707295095~exp=1707295695~hmac=f1b2884e11cccc93a9a97837b33c636b4f82ff3c97b73ab936642d4627df2c2e" alt="User 3">
				</div>
				<div class="card-info">
					<h2 class="card-name">Navaneetha</h2>
					<p class="card-role">Team member</p>
					<p class="card-email">navaneethapadma72@gmail.com</p>
					<p><button class="button">Contact</button></p>
				</div>
			</div>
            <!-- card 4-->
            <div class="card">
				<div class="card-img">
					<img src=
"https://img.freepik.com/free-vector/woman-avatar_23-2147501833.jpg?w=740&t=st=1707295095~exp=1707295695~hmac=f1b2884e11cccc93a9a97837b33c636b4f82ff3c97b73ab936642d4627df2c2e" alt="User 3">
				</div>
				<div class="card-info">
					<h2 class="card-name">Bhanu Sree</h2>
					<p class="card-role">Team member</p>
					<p class="card-email">bhanusree@gmail.com</p>
					<p><button class="button">Contact</button></p>
				</div>
			</div>
		</div>
		</section>

	<footer>
		<p>� 2024 Patient appointment management system all rights are reserved. All Rights Reserved.</p>
	</footer>
</body>

</html>
