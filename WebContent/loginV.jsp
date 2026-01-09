<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Volunteer</title>
        <meta charset="utf-8">
        
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/style.css">
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
     
   <section class="my-5">
       <div class="py-5">
          <h2 class="text-center " style="color:#e40046;font-family:'Roboto',sans-serif;">Login For Volunteers</h2>
       </div>
       <div class="w-50 m-auto">
           
            <div class="w-50 m-auto">
             <div id="msg" style="color:red;" class="text-center">
      </div>
           <form  action="LoginVservlet.do" method="post" name="frm-login" id="frm-login">
            <div class="form-group">
                <label>Username</label>
                <input type="text" id="userName" name="userName"  class="form-control">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" id="password" name="password"  class="form-control">
            </div>
          <button type="submit" style="background-color:#e40046;color:white" class="btn ">LOGIN</button>
					<button type="reset" style="background-color:#4e0046;color:white;" class="btn ">RESET</button>


           </form>
           
       </div>
       
      <div class="pt-5">
				
					<a href="registerV.jsp"><p style="color:#e40046;" class="text-center "> Dont have an account?Register NOW!<p class="text-center text-success"></a>
				
			</div>
			<div class="py-0">
				
					<a href="login.jsp"><p style="color:#e40046;" class="text-center ">GO BACK</p></a>
				
			</div>
   </section>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
<script>
		$(document).ready(function() {
			console.log("ready...")
			$("#frm-login").on('submit', function(event) {
				event.preventDefault();
				var f = $(this).serialize();

				console.log(f);
				
				$.ajax({
					url : "LoginVservlet.do",
					data : f,
					type : 'GET',
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						console.log("success");
						
						
						if (data.trim() === 'done') {
						alert("successfully logged in!")
							$('#msg').addClass('green-text');
							window.location.replace("profilePage.jsp");
						} else {
							$('#msg').html("incorrect username or password!");
							$('#msg').addClass('red-text');
							
							
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						
						console.log("error");
						$(".loader").hide();
						$(".form").show();
						$('#msg').html("some error in servlet!");
						$('#msg').addClass('red-text');
					},
					processData : false,
					contentType : false

				})

			})
		})
	</script>

    
  </body>
 
</html>