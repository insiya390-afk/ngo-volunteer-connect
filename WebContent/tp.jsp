<!DOCTYPE html>
<html>
<head>
<title>Register NGO</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="homepage.css">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">VRNGO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="about.html">About</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Dropdown </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>


			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<section class="my-5">
		<div class="container">
			<div class="py-5">
				<h2 class="text-center text-success">Registration for NGOs</h2>
			</div>
			<div class="w-50 m-auto">
				<form action="loginVServlet.do" method="POST"
					onsubmit="return validation()" class="bg-light">
					<div class="form-group">
						<label>Name Of organization :</label> <input type="text"
							name="ngoName" autocomplete="off" class="form-control" id="nName">
						<span id="name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Username :</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="username"> <span
							id="user" class="text-danger"></span>
					</div>

					<div class="form-group">
						<label>Location :</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="location"> <span
							id="loc" class="text-danger"></span>
					</div>

					<div class="form-group">
						<label>Contact:</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="contact"> <span
							id="con" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Email ID:</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="email"> <span
							id="em" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Profile Picture:</label>

					</div>


					<div class="image-upload-wrap">
						<input class="file-upload-input" type="file"
							onchanges="readURL(this);" accept="image/*" />
					</div>
					<div class="file-upload-content">
						<img class="file-upload-image" />
						<div class="image-title-wrap"></div>
					</div>


					<div class="form-group">
						<label> NGO Description :</label> <input type="text" name="user"
							placeholder="Introduction, motive" autocomplete="off"
							class="form-control" id="desc"> <span id="des"
							class="text-danger"></span>
					</div>
					<div class="form-group" id="description">
						<label> Achievements :</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="achi"> <span
							id="ach" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label>Password :</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="password"> <span
							id="pass" class="text-danger"></span>
					</div>

					<div class="form-group">
						<label> Re-enter Password :</label> <input type="text" name="user"
							autocomplete="off" class="form-control" id="repassword">
						<span id="repass" class="text-danger"></span>
					</div>
					<button type="submit" class="btn btn-success">Register</button>


				</form>
			</div>
		</div>

		<div class="py-5">
			<a href="registerN.jsp"><p class="text-center">Dont have an
					account?Register NOW!</p></a>
		</div>

	</section>
	<script type="text/javascript">
		function validation() {
			var name = document.getElementById('nName').value;
			var user = document.getElementById('username').value;
			var loc = document.getElementById('location').value;
			var con = document.getElementById('contact').value;
			var em = document.getElementById('email').value;
			var des = document.getElementById('desc').value;
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
			if (em.length - em.charAt('.') < 4) {
				document.getElementById('em').innerHTML = "*Invalid ID";
				return false;
			}

			if (des == "") {
				document.getElementById('des').innerHTML = "*Required field";
				return false;
			}

			if (des.length < 50) {
				document.getElementById('des').innerHTML = "*Enter a detailed description";
				return false;
			}
			if (pass == "") {
				document.getElementById('pass').innerHTML = "*Required field";
				return false;
			}
			if (pass.length < 8) {
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