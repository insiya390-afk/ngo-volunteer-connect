<!DOCTYPE html>
<html>
<head>
	<title>Profile Page</title>
	<link rel="stylesheet" type="text/css" href="profilecardnew.html">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="CSS/newcss.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


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

     
    <h1 style = "font-family: 'Roboto', sans-serif; color : #df3467 ; margin-top : 30px; margin-left: 480px; "> Have some Questions?</h1>
    <div >
    <img src="images/envelope.jpeg" style ="float : left; margin-top : 80px;  margin-left : 75px;" width="500" height="300">
</div>
<div>
    <span class="text-center  " style="  margin-left : 350px; font-size :
     30px; font-family: 'Roboto', sans-serif; color : #e40046; position: 130px 0px ;">Contact us here</span>
     <br>
     <br>

  
<div class ="profile-card " style = "font-family: 'Roboto', sans-serif; margin-left : 800px;">
         
          
          
        
          <div class ="main container">
              
            <div class="w-5 m-auto">
               <br>
               <br>
                <div class="form-group">
                     <label>Name :</label>
                     <input type="text" name="ngoName" autocomplete="off" class="form-control" id="nName">
                     <span id = "name" class ="text-danger"></span>
                 </div>
                 <div class="form-group">
                     <label>Email :</label>
                     <input type="text" name="user" autocomplete="off" class="form-control" id="username">
                     <span id = "user" class ="text-danger"></span>
                 </div>
                 <div class="form-group">
                    <label>Send us a message : </label>
                    <input type="text" name="user" autocomplete="off" class="form-control" id="username">
                    <span id = "user" class ="text-danger"></span>
                </div>
              <button type="submit" class="btn" style="background-color : #e40046 ;color : white ">Send</button>
 
              <p><i class="fa fa-envelope-open-text"></i></p>
           
          </div>

      </div>