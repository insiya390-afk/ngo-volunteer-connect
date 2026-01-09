<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>HOME PAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="CSS/homepage.css">

</head>
<body style="background-color:white;">
	 <nav style="box-shadow: 0px 5px 10px rgba(0,0,0,.2);"class="navbar navbar-expand-lg bg-light">
        <a class="navbar-brand" href="#" style ="color:#e40046;font-size: 25px; font-weight: bold;" >VRNGO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
       <br>
       <br>
       <br>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                

              <a class="nav-link " href="index.jsp" style ="color:#e40046;font-size: 20px;">Home <span class="sr-only">(current)</span></a>
            </li>
            <br>
            <br>
            <li class="nav-item">
                <a class="nav-link " href="aboutuspage.jsp" style ="color:#e40046;font-size: 20px;">About Us</a>
            </li>
            <a class="nav-link " href="about.jsp" style ="color:#e40046;font-size: 20px;">Contact Us <span class="sr-only">(current)</span></a>
            </li>
            <br>
            <br>
            
              </div>
            
            <br>
          <br>
        </ul>
        <form class="form-inline my-2 my-lg-0 mr-3" method="POST"
				action="login.jsp">

				<button style="background-color:#e40046;color:white;"class="btn my-2 my-sm-0">Login</button>
			</form>
			<form class="form-inline my-2 my-lg-0 mr-3" method="POST"
				action="register.jsp">

				<button style="background-color:#e40046;color:white;"class="btn  my-2 my-sm-0">Register</button>
			</form>

       
        </div>
      </nav>
   
   
	
	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/pic2.jpeg" alt="Los Angeles" width="100%"
					height="500">
				<div class="carousel-caption">
					<h3>EXPLORE</h3>
					<p>Explore the various opportunity to help</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="images/pic6.jpeg" alt="Chicago" width="100%" height="500">
				<div class="carousel-caption">
					<h3>SOCIALIZE</h3>
					<p>Connect with different people!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="images/pic8.jpeg" alt="New York" width="100%" height="500">
				<div class="carousel-caption">
					<h3>PARTICIPATE</h3>
					<p>Take part in various events to contribute to the society</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>