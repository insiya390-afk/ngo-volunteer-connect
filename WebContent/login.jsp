<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="CSS/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="CSS/homepage.css">
  
</head>
<body style="background-color:white;">
    <nav class="navbar navbar-expand-lg bg-light" style="box-shadow: 0px 5px 10px rgba(0,0,0,.2);">
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
                <a class="nav-link " href="about.jsp" style ="color:#e40046;font-size: 20px;">About Us</a>
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


      <br>
      <h2 class ="" id="h1" style="color:#e40046;text-align : center; font-family: 'Roboto', sans-serif;">
        Login into your account, setup your profile and explore!</h2>
    <div class="container">
    <div class="row mt-5">
        <div class="col m-md-5">
            
               
               
                
                <div class="card" style="width:400px">
                  <img class="card-img-top" src="images/pic1.jpeg" alt="Card image" style="width:100%; height:40vh">
                  <div class="card-body">
                    <h4 class="card-title" style="font-family : 'Roboto', sans-serif;">LOGIN as an NGO</h4>
                   
                    <a href="loginN.jsp" style="background-color:#e40046;color:white;" class="btn">Click Here</a>
                  </div>
                </div>
                </div>
                <div class="col m-md-5">
                    
                
                
                <div class="card" style="width:400px">
                  <img class="card-img-top" src="images/pic2.jpeg" alt="Card image" style="width: 100% ; height: 40vh;">
                  <div class="card-body">
                    <h4 class="card-title" style="font-family : 'Roboto', sans-serif;">LOGIN as a Volunteer</h4>
                   
                    <a href="loginV.jsp" style="background-color:#e40046;color:white;" class="btn">Click Here</a>
                  </div>
                </div>
            </div>
        </div>
    </div>

  <br>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>