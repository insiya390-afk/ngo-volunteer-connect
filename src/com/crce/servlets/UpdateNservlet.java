package com.crce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateNservlet
 */
@WebServlet("/UpdateNservlet")
@MultipartConfig
public class UpdateNservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();

		Connection con;
		PreparedStatement pst;
		// ResultSet rs;
		String location1="";
		String contact1="";
		String email1="";
		String description1="";
		String achievement1="";
		String locationf="";
		String contactf="";
		String emailf="";
		String descriptionf="";
		String achievementf="";
		String location="";
		String email="";
		String contact="";
		String description = "";
		String achievement = "";
		
		int id = Integer.parseInt(request.getParameter("id"));
		String val=request.getParameter("val");
		if(val.equals("contact")) {
		 contact=request.getParameter("contact");
		}
		if(val.equals("email")) {
			 email=request.getParameter("email");
			}
		if(val.equals("location")) {
			 location=request.getParameter("location");
			}
		if(val.equals("description")) {
			 description=request.getParameter("description");
			}
		if(val.equals("achievement")) {
			 achievement=request.getParameter("achievement");
			}
		
		
		
		// String
		// path="C:\\Users\\rohan\\eclipse-workspace\\NgoProject\\WebContent\\images"+File.separator+"products"+File.separator+part.getSubmittedFileName();

		
		
		try {
			// Thread.sleep(30000);
			Connection connection = null;

			ResultSet resultSet = null;
			PreparedStatement preparedStatement = null;
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");

			String sql = "SELECT location,contact,email,descr,achievement FROM ngo where id=?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				 location1 = resultSet.getString("location");
				 contact1 = resultSet.getString("contact");
				 email1 = resultSet.getString("email");
				 description1 = resultSet.getString("descr");
				 achievement1 = resultSet.getString("achievement");
				
				

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(location=="") {
			locationf=location1;
			}
		else {
			locationf=location;
		}
		if(contact=="") {
			contactf=contact1;
			}
		else {
			contactf=contact;
		}
		if(email=="") {
			emailf=email1;
			}
		else {
			emailf=email;
		}
		if(description=="") {
			descriptionf=description1;
			}
		else {
			descriptionf=description;
		}
		if(achievement=="") {
			achievementf=achievement1;
			}
		else {
			achievementf=achievement;
		}
		
		
		try {
			// Thread.sleep(30000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement(
					"update ngoproject.ngo set location=?,contact=?,email=?,descr=?,achievement=? where id=?");
			pst.setString(1, locationf);
			pst.setString(2, contactf);
			pst.setString(3, emailf);
			pst.setString(4, descriptionf);
			pst.setString(5, achievementf);
			pst.setInt(6, id);
			
			System.out.println("ok1");
			int count = pst.executeUpdate();
			if (count > 0) {
				System.out.println("Successfully updated");
				
				response.sendRedirect("profileN.jsp");

			} else {

				System.out.println("insertion failed");
				out.print("failed");
			}

		} catch (ClassNotFoundException ex) {
			System.out.println("a");
			ex.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
