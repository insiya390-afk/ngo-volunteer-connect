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
<meta charset="ISO-8859-1">
<title>watch volunteers</title>
<link rel="stylesheet" type="text/css" href="CSS/searchpage.css">
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
<body style="padding-top:0px">
<%
		Connection con;
	PreparedStatement pst;
	ResultSet rs;
	String fname1 = "", lname1 = "", address1 = "", contact1 = "", gender1 = "", education1 = "", image1 = "", email1 = "",
			contribution1 = "";
	int id1 = 0;
	try {int IDD = (Integer) session.getAttribute("IDD");
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement("select * from ngoproject.volunteer where ID=?");
			pst.setInt(1, IDD);

			System.out.println("ok1");
			rs = pst.executeQuery();
			if (rs.next()) {
		id1 = rs.getInt("ID");
		fname1 = rs.getString("fName");
		lname1 = rs.getString("lName");
		address1 = rs.getString("address");
		gender1 = rs.getString("gender");
		contact1 = rs.getString("contact");
		email1 = rs.getString("email");
		contribution1 = rs.getString("contribution");
		education1 = rs.getString("education");
		image1 = rs.getString("image");
		

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
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
				<a class="nav-link text"
					href="profilePage.jsp"
					style="color: #e40046; font-size: 20px; margin-left: 150px;"><i
						style="margin-left: 29px;" class="fa fa-user-circle-o "
						aria-hidden="true"></i><br> My Profile<span class="sr-only">(current)</span></a>
				</li>
			
			
					
				<li class="nav-item"><a class="nav-link text"
					href="displayVolunteers.jsp"
					style="color: #e40046; font-size: 20px; margin-left: 75px;"><i
						style="margin-left: 27px;" class="fa fa-handshake-o"
						aria-hidden="true"></i><br>Volunteers</a></li>
		
				<li class="nav-item"><a class="nav-link  text"
					href="displayNGO.jsp"
					style="color: #e40046; font-size: 20px; margin-left: 75px;"><i
						style="margin-left: 16px;" class="fa fa-home" aria-hidden="true"></i><br>NGOs</a>
				</li>
				
				<li class="nav-item">
                <a class="nav-link text" href="aboutuspage2.jsp" style =" color: #e40046; font-size: 20px;  margin-left:75px;"><i style ="margin-left:13px;" class="fa fa-pencil-square-o" aria-hidden="true"></i><br>About us</a>
            </li>
            
          
            <li class="nav-item">
                <a class="nav-link text" href="about2.jsp" style =" color: #e40046; font-size: 20px;  margin-left:75px;"><i style ="margin-left:13px;"  class="fa fa-address-card"></i><br>Contact us</a>
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

	<div class="container1" style="padding-top:20px">
		<div class="profile-header">
			<div class="profile-nav-info">
				<h3 class="user-name" style="margin-left: 200px;text-align:center;">Find Volunteers</h3>
				<div class="address">
					<p class="add" style="margin-left: 350px;"></p>



				</div>
			</div>
		</div>
		<div class="main-bd">
			<div class="left-side">

				<div class="profile-side">
					<div class="profile-imgp">
						<img src="images/volunteers/<%=image1 %>" width="200"
							alt="profile">
					</div>
					<h2 style="text-align:center;"><%=fname1+" "+lname1 %></h2>
					<h3 style="text-align:center;">Volunteer</h3>
					<p class="mobile-no">
						<i class="fa fa-phone"></i><%=contact1 %>
					</p>
					<p class="user-mail">
						<i class="fa fa-envelope"></i><%=email1 %>
					</p>
					<div class="user-bio">
						<h3>Details</h3>


						<h5>Contributions</h5>
						<p class="bio"><%=contribution1 %></p>
						<h5>Education</h5>
						<p><%=education1 %></p>
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

				<%
					Connection con1;
				PreparedStatement pst1;
				ResultSet rs1;
				String fname = "", lname = "", address = "", contact = "", gender = "", education = "", image = "", email = "",
						contribution = "";
				int id = 0;
				try {
					String userName = (String) session.getAttribute("userName");

					Class.forName("com.mysql.cj.jdbc.Driver");
					con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
					pst1 = con1.prepareStatement("select * from ngoproject.volunteer");

					System.out.println("ok1");
					rs1 = pst1.executeQuery();
					while (rs1.next()) {
						id = rs1.getInt("ID");
						fname = rs1.getString("fName");
						lname = rs1.getString("lName");
						address = rs1.getString("address");
						gender = rs1.getString("gender");
						contact = rs1.getString("contact");
						email = rs1.getString("email");
						contribution = rs1.getString("contribution");
						education = rs1.getString("education");
						image = rs1.getString("image");
						System.out.println(image);
				%>
				<div class="profile-body" style="width: 850px; height: 150px">
					<div class="profile-img">
						<img src="images/volunteers/<%=image%>" alt="profile">
					</div>
					<div class="nhead">
						<h2  style="margin-left:50px;"><%=fname + " " + lname%></h2>
					</div>
					
					
					<form action="viewServ" method="post">
						<input id="id" name="id" type="hidden" value=<%=id%>> <input
							id="val" name="val" type="hidden" value=1>
						<button type="submit" class="viewbtn">
							<i class="fa fa-comment"></i>View
						</button>
					</form>
					<div class="nhead2">
						<h3  style="margin-left:50px;"><%=address%></h3>
					</div>
				</div>
				<%
					}
				} catch (ClassNotFoundException ex) {
				System.out.println("a");
				ex.printStackTrace();
				} catch (SQLException e) {
				// TODO Auto-generated catch block

				e.printStackTrace();
				}
				%>





			</div>
		</div>
	</div>
</body>
</html>