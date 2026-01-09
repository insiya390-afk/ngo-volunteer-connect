<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<%@page import="java.sql.Statement"%>
<%@page
	import="java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,java.util.logging.Level,java.util.logging.Logger,javax.servlet.annotation.WebServlet"%>
<!DOCTYPE html>
<html>
<head>
<title>view Profile</title>
<link rel="stylesheet" type="text/css" href="CSS/Profilepage.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="padding-top: 0px">
	<nav style="box-shadow: 0px 5px 10px rgba(0,0,0,.2);" class="navbar navbar-expand-lg bg-light">
		<a class="navbar-brand " href="#"
			style="color: #e40046; font-size: 25px; font-weight: bold;">VRNGO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<br> <br> <br>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">



			
		</div>
	</nav>

	<%
		Connection con;
	PreparedStatement pst;
	ResultSet rs;
	String ID = "", NgoName = "", contact = "", location = "", descr = "", image = "", email = "", achievement = "",
			donation = "";
	int id = 0;
	try {
		int idd = (Integer) session.getAttribute("id");

		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
		pst = con.prepareStatement("select * from ngoproject.ngo where ID=?");
		pst.setInt(1, idd);

		System.out.println("ok1");
		rs = pst.executeQuery();
		if (rs.next()) {
			id = rs.getInt("ID");

			NgoName = rs.getString("NgoName");
			location = rs.getString("location");

			contact = rs.getString("contact");
			email = rs.getString("email");
			descr = rs.getString("descr");
			achievement = rs.getString("achievement");
			donation = rs.getString("donationType");
			image = rs.getString("image");
			System.out.println(image);

		} else {

			out.print("failed");
		}
	} catch (ClassNotFoundException ex) {
		System.out.println("a");
		ex.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block

		e.printStackTrace();
	}
	%>
	<div class="container" style="padding-top:20px">
		<div class="profile-header">
			<div class="profile-img">
				<img src="images/NGO/<%=image%>" width="200" alt="profile">
			</div>
			<div class="profile-nav-info">
				<h3 class="user-name" style="margin-left: 350px;"><%=NgoName%></h3>
				<div class="address">
					<p class="add" style="margin-left: 350px;"><%=location%></p>
					<form class="form-inline my-2 my-lg-0 mr-3" method="POST"
						action="displayNGO.jsp">
						<button class="btn"
							style="background-color: #e40046; color: white; margin-left: 400px;">Go
							Back</button>
					</form>
				</div>

			</div>

		</div>
		<div class="main-bd">
			<div class="left-side">
				<div class="profile-side">
					<p class="mobile-no">
						<i class="fa fa-phone"></i><%=contact%></p>
					<p class="user-mail">
						<i class="fa fa-envelope"></i><%=email%></p>
					<div class="user-bio">
						<h3>Details</h3>
						<p class="bio"><%=descr%></p>
						<h4>Achievements</h4>
						<p class="bio"><%=achievement%></p>
						<h4>Types of donation required</h4>
						<p class="bio"><%=donation%></p>

					</div>
					<div class="profile-btn">
						<button class="chatbtn">
							<i class="fa fa-plus"></i>chat
						</button>


					</div>
					<div class="user-rating">
						<h3 class="rating">4.5</h3>
						<div class="rate">
							<div class="stars">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
							</div>
							<span class="no-user"><span>123</span>&nbsp; &nbsp;
								reviews</span>
						</div>
					</div>
				</div>

			</div>
			<div class="right-side">
				<div class="nav">
					<ul>
						<li onclick="tabs(0)" class="user-post active">Posts</li>
						<li onclick="tabs(1)" class="user-review">Events</li>


					</ul>
				</div>
				<div class="profile-body">
					<div class="profile-posts tab">
						<h1>Your Posts</h1>
						<%
							try {
							Class.forName("com.mysql.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}

						try {
							Connection connection = null;
							Statement statement = null;
							ResultSet resultSet = null;
							PreparedStatement preparedStatement = null;
							connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");

							String sql = "SELECT * FROM post_n where n_id=?";
							preparedStatement = connection.prepareStatement(sql);
							preparedStatement.setInt(1, id);
							resultSet = preparedStatement.executeQuery();

							int k = 0;
							while (resultSet.next()) {
								k++;
								int post_id = resultSet.getInt("post_id");
								String post_id2 = Integer.toString(post_id);
						%>
						<br>

						<div
							style="box-shadow:2px 3px 3px 5px rgba(0,0,0,.2); padding: 2px; background-color: white; width: 750px; margin-left: auto; margin-right: auto; display: block;"
							align="center">
							<h2>
								<%=resultSet.getString("title")%>

							</h2>
							<img
								src="images/posts/volunteer/<%=resultSet.getString("image")%>"
								width="400" height="300" alt="profile">
							<hr>
							<%=resultSet.getString("caption")%>
							<hr>

							<br>


						</div>



						<%
							}
						if (k == 0) {
						%>
						<img src="images/download.png" width="600px">
						<h2 style="padding-top: 20px;">No posts yet</h2>
						<%
							}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</div>

					<div class="profile-review tab">
						<h1>Events organized</h1>

						<%
							try {
							Class.forName("com.mysql.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}

						try {
							Connection connection = null;
							Statement statement = null;
							ResultSet resultSet = null;
							PreparedStatement preparedStatement = null;
							connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");

							String sql = "SELECT * FROM event where ngo_id=?";
							preparedStatement = connection.prepareStatement(sql);
							preparedStatement.setInt(1, id);
							resultSet = preparedStatement.executeQuery();

							int k = 0;
							while (resultSet.next()) {
								k++;
								String title = resultSet.getString("title");
								String image1 = resultSet.getString("image");
								String requirement = resultSet.getString("requirement");
								String part_type = resultSet.getString("part_type");
								String duration = resultSet.getString("duration");
								String location1 = resultSet.getString("location");
								String link = resultSet.getString("link");
								String descr1 = resultSet.getString("descr");
						%>
						<br>

						<div
							style="box-shadow:2px 3px 3px 5px rgba(0,0,0,.2); padding: 2px; background-color: white; width: 750px; margin-left: auto; margin-right: auto; display: block;"
							align="center">
							<h2>
								<%=title%>

							</h2>
							<img src="images/<%=resultSet.getString("image")%>" width="600"
								height="300" alt="profile">
							<hr>
							<div>
								<p>
									<%=descr1%></p>
							</div>

							<hr>
							<div>
								<h3>requirements-</h3>
								<p>
									<%=requirement%></p>
							</div>
							<hr>
							<div>
								<h3>Participation criteria-</h3>
								<p>
									<%=part_type%></p>
							</div>
							<hr>
							<div>
								<h3>Duration of the Event-</h3>
								<p>
									<%=duration%></p>
							</div>
							<hr>
							<div>
								<h3>Location of the Event-</h3>
								<p>
									<%=location%></p>
							</div>
							<br>
							<a href="<%=link%>">
							<button data-target="#mymodal2" data-toggle="modal"
								style="border: 0; padding: 10px; width: 150px; border-radius: 3px; background: var(--color); color: white; font-size: 1rem;margin: 5px 2px;
	cursor:pointer;
	outline: none;
	margin-bottom: 10px;
	transition:background .3s ease-in-out;
	box-shadow: 0px 5px 7px 0px rgba(0,0,0,.3);
	color:#fff;">
								 <i class="fa fa-minus-square-o "
									style="margin-right: 5px;"></i>Register NOW!
								
							</button>
							</a>

						</div>



						<%
							}
						if (k == 0) {
						%>
						<img src="images/download.png" width="600px">
						<h2 style="padding-top: 20px;">No Events Declared</h2>
						<%
							}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>

					</div>


				</div>
			</div>
		</div>
	</div>



	<script src="JS/main.js"></script>
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
					url : "PostServlet2.do",
					data : f1,
					type : 'post',
					success : function(data, textStatus, jqXHR) {
						console.log(textStatus);
						console.log("success");

						if (textStatus.trim() == "success") {
							alert("POST is uploaded successfully!")
							$(".modal").removeClass("in");
							$(".modal-backdrop").remove();
							$('body').removeClass('modal-open');
							$('body').css('padding-right', '');
							$(".modal").hide();
							$(document).ajaxStop(function() {
								window.location.reload();
							});

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