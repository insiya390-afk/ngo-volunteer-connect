<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  
</head>
<body style="background: -webkit-linear-gradient(RIGHT,#46B1C9,   #84C0C6,   #9FB7B9,   #BCC1BA,   #F2E2D2 );">
<%
int id = 1;

try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>
<h2 align="center"><font><strong>READ BLOGS HERE</strong></font></h2>

<%
try{ 
	 Connection connection = null;
     Statement statement = null;
     ResultSet resultSet = null;
     PreparedStatement preparedStatement = null;
     connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject","root","motog5splus");
     
     String sql ="SELECT * FROM post_v where v_id=?";
     preparedStatement = connection.prepareStatement(sql);
     preparedStatement.setInt(1,id);
     resultSet = preparedStatement.executeQuery();
     while(resultSet.next()){
%>
<br>

<div style="border:2px solid black; padding:2px;background-color:white;width:50%;margin-left:auto;margin-right:auto;display:block;" align="center">
<h2>
<u>
<%=resultSet.getString("title") %>
</u>
</h2>
<img src="images/posts/volunteer/<%=resultSet.getString("image")%>" width="300"  height="200" alt="profile">
<hr>
<%=resultSet.getString("caption") %>
<hr>

<br>

</div>



<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>