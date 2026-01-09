<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register NGO</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/homepage.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@300&display=swap"
	rel="stylesheet">


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
		<div class="container">
			<div class="py-5">
				<h2 class="text-center"
					style="color: #e40046;font-family: 'Roboto', sans-serif;">Registration For
					NGOs</h2>
			</div>
			<div class="w-50 m-auto">
				<form enctype="multipart/form-data" id="frmreg" method="post"
					onsubmit="return validation()">
					<div class="form-group">
						<label>Name of Organization :</label> <input type="text"
							name="ngoName" class="form-control" id="nName"> <span
							id="name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Username :</label> <input type="text" name="userName"
							class="form-control" id="username"> <span id="user"
							class="text-danger"></span>
					</div>

					<div class="form-group">
						<label>Location :</label> <input type="text" name="location"
							class="form-control" id="location"> <span id="loc"
							class="text-danger"></span>
					</div>

					<div class="form-group">
						<label>Contact:</label> <input type="text" name="contact"
							class="form-control" id="contact"> <span id="con"
							class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Email ID:</label> <input type="text" name="email"
							class="form-control" id="email"> <span id="em"
							class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Profile Picture:</label>

					</div>


					<div class="image-upload-wrap">
						<input class="file-upload-input" name="image" type="file"
							style="background-color: lightgrey;" onchanges="readURL(this);"
							accept="image/*" />
					</div>
					<div class="file-upload-content">
						<img class="file-upload-image" />
						<div class="image-title-wrap"></div>
					</div>


					<div class="form-group">
						<label> NGO Description :</label> <input type="text"
							name="description" placeholder="Introduction, motive"
							class="form-control" id="desc" style="height: 70px;"> <span
							id="des" class="text-danger"></span>
					</div>
					<br>
					<div class="form-group">
						<label>Types of donation required:</label> <input type="text"
							name="donation" placeholder="money, food supplies, clothes ,etc"
							class="form-control" id="donation" style="height: 70px;">
						<span id="des" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label><b>Bank Account Details</b></label> <br> <br> <label>
							Account Number:</label> <input type="text" name="acno" autocomplete="off"
							class="form-control" id="acno"> <span id="ac"
							class="text-danger"></span> <br> <label> IFSC Code:</label>
						<input type="text" name="code" autocomplete="off"
							class="form-control" id="code"> <span id="ifsc"
							class="text-danger"></span> <br> <label> Name of
							Account Holder :</label> <input type="text" name="accountname"
							autocomplete="off" class="form-control" id="accountname">
						<span id="acname" class="text-danger"></span>
					</div>
					<br>
					<div class="form-group">
						<label> Achievements :</label> <input type="text"
							name="achievement" class="form-control" id="achi"> <span
							id="ach" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Password :</label> <input type="password" name="password"
							class="form-control" id="password"> <span id="pass"
							class="text-danger"></span>
					</div>

					<div class="form-group">
						<label> Re-enter Password :</label> <input type="password"
							name="user" class="form-control" id="repassword"> <span
							id="repass" class="text-danger"></span>
					</div>
					<button type="submit" style="background-color:#e40046;color:white;"class="btn">Register</button>


				</form>
			</div>
		</div>
<div class="pt-5">
           <a  href="loginN.jsp"><p style="color:#e40046;" class="text-center"> Already Have an account? Login HERE</p></a>
       </div>
<div class="py-0">
           <a  href="register.jsp"><p style="color:#e40046;" class="text-center">GO BACK</p></a>
       </div>

	</section>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			console.log("ready...")
			$("#frmreg").on('submit', function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f1 = new FormData(this);
				console.log(f1);

				$.ajax({
					url : "registerNGO",
					data : f1,
					type : 'post',
					success : function(data, textStatus, jqXHR) {
						console.log(textStatus);
						console.log("success");

						if (textStatus.trim() == "success") {

							$('#msg').html("successfully registered!");

							alert("Successfully Registered!")
							$('#msg').addClass('green-text');
							window.location.replace("loginN.jsp");
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
	<script type="text/javascript">
    function validation() {
        var name = document.getElementById('nName').value;
        var user = document.getElementById('username').value;
        var loc = document.getElementById('location').value;
        var con = document.getElementById('contact').value;
        var em = document.getElementById('email').value;
        var des = document.getElementById('desc').value;
        
        var acno = document.getElementById('acno').value;
          var code = document.getElementById('code').value;
          var accname = document.getElementById('accountname').value;
        var ach = document.getElementById('achi').value;
        var pass = document.getElementById('password').value;
        var repass = document.getElementById('repassword').value;

        if (name == "") {
            document.getElementById('name').innerHTML = "*Required field";
            return false;
        }
        if (user == "") {
            document.getElementById('user').innerHTML = "*Required field";
            return false;
        }
        if (user.length < 6) {
            document.getElementById('user').innerHTML = "*username must contain more than 5 characters"
        }
        if (user.length > 25) {
            document.getElementById('user').innerHTML = "*username must contain lesser characters"
        }
        if (loc == "") {
            document.getElementById('loc').innerHTML = "*Required field";
            return false;
        }
        if (loc.length < 10) {
            document.getElementById('loc').innerHTML = "*Enter Full address";
            return false;
        }
        if (con == "") {
            document.getElementById('con').innerHTML = "*Required field";
            return false;
        }
        if (isNaN(con)) {
            document.getElementById('con').innerHTML = "*Invalid phone number, enter digits only";
            return false;
        }
        if (con.length != 10) {
            document.getElementById('con').innerHTML = "*Invalid phone number, enter 10 digits only";
            return false;
        }
        if (em == "") {
            document.getElementById('em').innerHTML = "*Required field";
            return false;
        }
        if (em.indexOf('@') == 0) {
            document.getElementById('em').innerHTML = "*Invalid ID";
            return false;
        }
        if (!em.includes('@')) {
            document.getElementById('em').innerHTML = "*Invalid ID";
            return false;
        }
        //document.getElementById('em').innerHTML = em.length;

        /* if ((em.length - em.charAt('.') + 1) > 3) {
            document.getElementById('em').innerHTML = "*Invalid ID";
            return false;
        } */

        if (des == "") {
            document.getElementById('des').innerHTML = "*Required field";
            return false;
        }

        if (des.length < 10) {
            document.getElementById('des').innerHTML = "*Enter a detailed description";
            return false;
        }

        if(acno == ""){
              document.getElementById('ac').innerHTML="*Required field";
              return false;
          }
          if(isNaN(acno)){
              document.getElementById('ac').innerHTML="*Invalid account number, enter digits only";
              return false;
          }
          if(!(11 < acno.length && acno.length > 16)){
              document.getElementById('ac').innerHTML="*Invalid account number, enter appropriate number length";
             
             return false;
          }
          if(code == ""){
              document.getElementById('ifsc').innerHTML="*Required field";
              return false;
          }

          if( code.length != 11){
              document.getElementById('ifsc').innerHTML="*Invalid code number, enter 11 digits only";
              return false;
          }
          
          if(accname == ""){
              document.getElementById('acname').innerHTML="*Required field";
              return false;
          }


        if (pass == "") {
            document.getElementById('pass').innerHTML = "*Required field";
            return false;
        }
        if (pass.length < 5) {
            document.getElementById('pass').innerHTML = "*Password must contain more characters";
            return false;
        }

        if (repass == "") {
            document.getElementById('repass').innerHTML = "*Required field";
            return false;
        }
        if (pass != repass) {
            document.getElementById('repass').innerHTML = "*Passwords do not match";
            return false;
        }
        else{
            return true;
        }

    }
</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>