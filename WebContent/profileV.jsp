<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse" %>
    <%@page import="java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,java.util.logging.Level,java.util.logging.Logger,javax.servlet.annotation.WebServlet" %> 

    
    <!DOCTYPE html>
<html>
    <head>
        <title>profile card</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="CSS/homepage.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="CSS/profile.css">
    </head>
    <body>
      <nav class="navbar navbar-expand-lg bg-light">
        <a class="navbar-brand text-success" href="#" style ="font-size: 25px; font-weight: bold;" >VRNGO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
       <br>
       <br>
       <br>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                

              <a class="nav-link text-success" href="index.jsp" style ="font-size: 20px;">Home <span class="sr-only">(current)</span></a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link text-success" href="about.html" style ="font-size: 20px;">About</a>
            </li>
            <br>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-success"  href="#" id="navbarDropdown" role="button" style ="font-size: 20px;"data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item text-success" href="#" ></a>
                <a class="dropdown-item text-success" href="#" >Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-success" href="#">Something else here</a>
              </div>
            </li>
            <br>
            <li class="nav-item">
              <a class="nav-link disabled text-success" href="#" style ="font-size: 20px;">Disabled</a>
            </li>
        </ul>
          <form class="form-inline my-2 my-lg-0 mr-3" method="POST" action="logout.jsp" >
            
          <button class="btn btn-outline-success my-2 my-sm-0">LOGOUT</button>
          </form>

          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
      <br>
      <div class ="profile-card " style = "font-family: 'Roboto', sans-serif;">
       <%
              Connection con;
      		PreparedStatement pst;
      		ResultSet rs;
      		String fname="",lname="",address="",contact="",gender="",education="",image="",email="",contribution="";
      		try {
      			String userName=(String)session.getAttribute("userName");
      			
    			Class.forName("com.mysql.cj.jdbc.Driver");
    			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject","root","motog5splus");
    		    pst=con.prepareStatement("select * from ngoproject.volunteer where userName=?");
    		pst.setString(1,userName);
    		
    		
    		System.out.println("ok1");
    		rs=pst.executeQuery();
    		if(rs.next()) {
    			System.out.println(rs.getInt("ID"));
    			 fname=rs.getString("fName");
    			 lname=rs.getString("lName");
    			address=rs.getString("address");
    			gender=rs.getString("gender");
    			 contact=rs.getString("contact");
    			 email=rs.getString("email");
    		   contribution=rs.getString("contribution");
    		   education=rs.getString("education");
    		   image=rs.getString("image");
    		   System.out.println(image);
    			
    			
    		} else {

    			out.print("failed");
    		}
    		}
    		catch(ClassNotFoundException ex){
    			System.out.println("a");
    		ex.printStackTrace();
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			
    		e.printStackTrace();
    	}
      		
             
              
              %>
      
          <div class  = "image-container">
             <img src = "images/volunteers/<%=image%>" style=" height : 300px; width : 100%;">   <!--profile pic -->
          </div>
          <div class = "title">
          <br>
          <br>
              <h2 style = "font-family: 'Roboto', sans-serif; " class="text-center"> <%=session.getAttribute("userName") %>  </h2>   <!-- Username-->
          </div>
          <br>
           
          <div class ="main container">
             
              <p><i class="fa fa-user-circle-o" aria-hidden="true" class="text-center"><%=fname+" "+lname %></i></p>   <!--name-->
             
              <p><i class="fa fa-home" class="text-center" ><%=address %></i></p>   <!-- Area,city-->
              
              
              <p><i class="fa fa-envelope" class="text-center"><%=email %></i></p> <!-- email-->
              <p><i class="fa fa-pencil" class="text-center"></i> <%=contribution %></p> <!-- contributions -->
              <br>
              <button type="submit" class="btn btn-success">Update</button>
          </div>

      </div>

   
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    </body>
   
</html>