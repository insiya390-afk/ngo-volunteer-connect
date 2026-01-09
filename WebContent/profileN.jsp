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
<title>Profile Page</title>
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


	<%
		Connection con;
	PreparedStatement pst;
	ResultSet rs;
	String ID = "", NgoName = "", contact = "", location = "", descr = "", image = "", email = "", achievement = "",
			donation = "";
	int id = 0;
	try {
		String userName = (String) session.getAttribute("userName");
		if (userName.equals("")) {
			int IDD = (Integer) session.getAttribute("IDD");
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement("select * from ngoproject.ngo where ID=?");
			pst.setInt(1, IDD);

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

			} else {

		out.print("failed");
			}
		} else {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement("select * from ngoproject.ngo where userName=?");
			pst.setString(1, userName);

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
		session.setAttribute("IDD", id);
			} else {

		out.print("failed");
			}
		}

	} catch (ClassNotFoundException ex) {
		System.out.println("a");
		ex.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block

		e.printStackTrace();
	}
	%>
	<nav style="box-shadow: 0px 5px 10px rgba(0, 0, 0, .2);"
		class="navbar navbar-expand-lg bg-light">
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
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link text"
					href="profileN.jsp"
					style="color: #e40046; font-size: 20px; margin-left: 150px;"><i
						style="margin-left: 29px;" class="fa fa-user-circle-o "
						aria-hidden="true"></i><br> My Profile<span class="sr-only">(current)</span></a>
				</li>
				<br>
				<br>
				<br>


				<li class="nav-item"><a class="nav-link text"
					href="displayVolunteersN.jsp"
					style="color: #e40046; font-size: 20px; margin-left: 75px;"><i
						style="margin-left: 27px;" class="fa fa-handshake-o"
						aria-hidden="true"></i><br>Volunteers</a></li>
				<br>
				<br>

				<li class="nav-item"><a class="nav-link  text"
					href="displayNGON.jsp"
					style="color: #e40046; font-size: 20px; margin-left: 75px;"><i
						style="margin-left: 16px;" class="fa fa-home" aria-hidden="true"></i><br>NGOs</a>
				</li>
				<li class="nav-item">
                <a class="nav-link text" href="aboutuspage1.jsp" style =" color: #e40046; font-size: 20px;  margin-left:75px;"><i style ="margin-left:13px;" class="fa fa-pencil-square-o" aria-hidden="true"></i><br>About us</a>
            </li>
            
           <br>
				<br>
				<br>
            <li class="nav-item">
                <a class="nav-link text" href="about1.jsp" style =" color: #e40046; font-size: 20px;  margin-left:75px;"><i style ="margin-left:13px;"  class="fa fa-address-card"></i><br>Contact us</a>
            </li>
			</ul>


			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline  my-2 my-sm-0"
					style="color: white; background-color: #e40046;" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<div class="container" style="padding-top: 20px">
		<div class="profile-header">
			<div class="profile-img">
				<img src="images/NGO/<%=image%>" width="200" alt="profile">
			</div>
			<div class="profile-nav-info">
				<h3 class="user-name" style="margin-left: 350px;"><%=NgoName%></h3>
				<div class="address">
					<p class="add" style="margin-left: 350px;"><%=location%></p>
					<form class="form-inline my-2 my-lg-0 mr-3" method="POST"
						action="logout1.jsp">
						<button class="btn"
							style="background-color: #e40046; color: white; margin-left: 400px;">LOGOUT</button>
					</form>
				</div>

			</div>
			<div class="profile-option">

				<div class="notification">
					<i class="fa fa-bell"></i> <span class="alert-message">1</span>

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
						<button class="chatbtn" data-target="#mymodal2"
							data-toggle="modal">
							<i class="fa fa-plus"></i>Event
						</button>
						<button class="createbtn" data-target="#mymodal"
							data-toggle="modal">
							<i class="fa fa-plus"></i>Post
						</button>
						<div class="modal fade" aria-labelledby="copycourse"
							aria-hidden="true" tabindex="-1" id="mymodal">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h3 class="text-center text-primary">Create a Post</h3>
										<button type="button" class="close" data-dismiss="modal">&times;</button>



									</div>
									<div class="modal-body">
										<form action="PostServlet2.do" method="post"
											enctype="multipart/form-data" id="frmreg">
											<div class="form-group">
												<label>Title For the post</label> <input type="text"
													name="title" id="title" class="form-control">
											</div>
											<div class="form-group">
												<label>Upload Image</label> <input
													class="file-upload-input " id="image" name="image"
													type="file" style="background-color: lightgrey;"
													onchanges="readURL(this);" accept="image/*" />
											</div>
											<div class="form-group">
												<label>Caption</label> <input type="text" name="caption"
													id="caption" placeholder="Write something about the post"
													class="form-control" style="height: 70px;">
											</div>
											<input id="id" name="id" type="hidden" value=<%=id%>>
											<button type="submit" class="btn btn-success">POST</button>
											<button type="reset" class="btn btn-danger">RESET</button>
										</form>
									</div>
									<!-- <div class="modal-footer justify-content-center">
										<button type="submit" class="btn btn-danger" data-dismiss="modal">Post</button>
									</div> -->

								</div>
							</div>
						</div>
						<div class="modal fade" aria-labelledby="copycourse"
							aria-hidden="true" tabindex="-1" id="mymodal2">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h3 class="text-center text-primary">Organize an Event</h3>
										<button type="button" class="close" data-dismiss="modal">&times;</button>



									</div>
									<div class="modal-body">
										<form action="EventServlet" method="post"
											enctype="multipart/form-data" id="eventform">
											<div class="form-group">
												<label>Event Title</label> <input type="text" name="etitle"
													id="etitle" class="form-control">
											</div>
											<div class="form-group">
												<label>Upload Image for the event</label> <input
													class="file-upload-input " id="image" name="image"
													type="file" style="background-color: lightgrey;"
													onchanges="readURL(this);" accept="image/*" />
											</div>
											<div class="form-group">
												<label>Description of the event</label> <input type="text"
													name="description" id="description"
													placeholder="Write something about the event"
													class="form-control" style="height: 70px;">
											</div>
											<div class="form-group">
												<label>Requirement per volunteer</label> <input type="text"
													name="req" id="req"
													placeholder="state what you need from a volunteer"
													class="form-control" style="height: 70px;">
											</div>
											<div class="form-group">
												<label>Participation criteria</label> <input type="text"
													name="parttype" id="parttype"
													placeholder="who all can takepart in the event"
													class="form-control" style="height: 70px;">
											</div>
											<div class="form-group">
												<label>Duration of the event</label> <input type="text"
													name="duration" id="duration"
													placeholder="Duration of the event" class="form-control"
													style="height: 70px;">
											</div>
											<div class="form-group">
												<label>Location</label> <input type="text" name="loc"
													id="loc" placeholder="location of the event"
													class="form-control" style="height: 70px;">
											</div>
											<div class="form-group">
												<label>Link to enroll</label> <input type="text" name="link"
													id="link " placeholder="paste the link for enrollement"
													class="form-control" style="height: 70px;">
											</div>
											<input id="id" name="id" type="hidden" value=<%=id%>>
											<button type="submit" class="btn btn-success">POST</button>
											<button type="reset" class="btn btn-danger">RESET</button>
										</form>
									</div>
									<!-- <div class="modal-footer justify-content-center">
										<button type="submit" class="btn btn-danger" data-dismiss="modal">Post</button>
									</div> -->

								</div>
							</div>
						</div>
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
						<li onclick="tabs(2)" class="user-settings">Settings</li>

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
							style="box-shadow: 2px 3px 3px 5px rgba(0, 0, 0, .2); padding: 2px; background-color: white; width: 750px; margin-left: auto; margin-right: auto; display: block;"
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
							<button data-target="#mymodal3" data-toggle="modal"
								style="border: 0; padding: 10px; width: 150px; border-radius: 3px; background: var(--color); color: white; 
	font-size: 1rem;
	margin: 5px 2px;
	cursor:
								pointer;
	outline: none;
	margin-bottom: 10px;
	transition:
								background .3s ease-in-out;
	box-shadow: 0px 5px 7px 0px
								rgba(0,0,0,.3);
	color:#fff;">
								<i class="fa fa-minus-square-o " style="margin-right: 5px;"></i>Delete
								Post
							</button>
							<div class="modal fade" id="mymodal3">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="text-center text-primary">Are you sure you
												want to delete this post?</h5>
											<button type="button" class="close" data-dismiss="modal">&times;</button>



										</div>
										<div class="modal-body">
											<form action="DelPost2" method="post" id="delpost">
												<input id="p_id2" name="p_id2" type="hidden"
													value=<%=post_id2%>>
												<button type="submit" class="btn btn-danger">Delete</button>
												<button class="btn btn-danger" data-dismiss="modal">Cancel</button>
											</form>
										</div>


									</div>
								</div>
							</div>
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
							style="box-shadow: 2px 3px 3px 5px rgba(0, 0, 0, .2); padding: 2px; background-color: white; width: 750px; margin-left: auto; margin-right: auto; display: block;"
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
							<div>
								<h3>Link of the Event-</h3>
								<a href="<%=link%>">Link</a>

							</div>
							<br>
							<button data-target="#mymodal2" data-toggle="modal"
style="border: 0; padding: 10px; width: 150px; border-radius: 3px; background: #e40046; color: white;
	font-size: 1rem;
	margin: 5px 2px;
	cursor:pointer;
	outline:none;
	margin-bottom: 10px;
	transition:background .3sease-in-out;
	box-shadow: 0px 5px 7px 0pxrgba(0,0,0,.3);
	color:#fff;">								<i class="fa fa-minus-square-o " style="margin-right: 5px;"></i>Make
								Changes
							</button>

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

					<div class="profile-settings tab">
						<h1>Account Settings</h1>
						<div class="card" style="width: 100%;" align="center">

							<div class="card-body">
								<form action="UpdateNservlet" method="post" id="form-update">
									<div class="form-group">
										<label>Change Contact:</label> <input type="text"
											name="contact" id="contact" class="form-control">


									</div>
									<input id="id" name="id" type="hidden" value=<%=id%>> <input
										id="val" name="val" type="hidden" value="contact">
									<button type="submit" class="btn btn-success">Update</button>
								</form>
							</div>
							<div class="card-body">
								<form action="UpdateNservlet" method="post" id="form-update">
									<div class="form-group">
										<label>Change Email:</label> <input type="text" name="email"
											id="email" class="form-control">


									</div>
									<input id="id" name="id" type="hidden" value=<%=id%>> <input
										id="val" name="val" type="hidden" value="email">
									<button type="submit" class="btn btn-success">Update</button>
								</form>
							</div>
							
							<div class="card-body">
								<form action="UpdateNservlet" method="post" id="form-update">
									<div class="form-group">
										<label>Change Description:</label> <input type="text"
											name="description" id="description" class="form-control">

									</div>
									<input id="id" name="id" type="hidden" value=<%=id%>> <input
										id="val" name="val" type="hidden" value="description">
									<button type="submit" class="btn btn-success">Update</button>
								</form>
							</div>
							<div class="card-body">
								<form action="UpdateNservlet" method="post" id="form-update">
									<div class="form-group">
										<label>Add Achievement:</label> <input type="text"
											name="achievement" id="achievement" class="form-control">

									</div>
									<input id="id" name="id" type="hidden" value=<%=id%>> <input
										id="val" name="val" type="hidden" value="achievement">
									<button type="submit" class="btn btn-success">Update</button>
								</form>
							</div>
							<div class="card-body">
								<form action="UpdateNservlet" method="post" id="form-update">
									<div class="form-group">
										<label>change Location:</label> <input type="text"
											name="location" id="location" class="form-control">

									</div>
									<input id="id" name="id" type="hidden" value=<%=id%>> <input
										id="val" name="val" type="hidden" value="location">
									<button type="submit" class="btn btn-success">Update</button>
								</form>
							</div>

						</div>
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
	<script>
		$(document).ready(function() {
			console.log("ready...")
			$("#eventform").on('submit', function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f1 = new FormData(this);
				console.log(f1);

				$.ajax({
					url : "EventServlet",
					data : f1,
					type : 'post',
					success : function(data, textStatus, jqXHR) {
						console.log(textStatus);
						console.log("success");

						if (textStatus.trim() == "success") {
							alert("Event is uploaded successfully!")
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