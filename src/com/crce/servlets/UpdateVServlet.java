package com.crce.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class UpdateVServlet
 */
@WebServlet("/servupdate.do")
@MultipartConfig
public class UpdateVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateVServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();

		Connection con;
		PreparedStatement pst;
		// ResultSet rs;
		String address1="";
		String contact1="";
		String email1="";
		String contribution1="";
		String education1="";
		String addressf="";
		String contactf="";
		String emailf="";
		String contrif="";
		String eduf="";
		String address="";
		String email="";
		String contact="";
		String contribution = "";
		String education = "";
		
		int id = Integer.parseInt(request.getParameter("id"));
		String val=request.getParameter("val");
		if(val.equals("contact")) {
		 contact=request.getParameter("contact");
		}
		if(val.equals("email")) {
			 email=request.getParameter("email");
			}
		if(val.equals("address")) {
			 address=request.getParameter("address");
			}
		if(val.equals("contribution")) {
			 contribution=request.getParameter("contribution");
			}
		if(val.equals("education")) {
			 education=request.getParameter("education");
			}
		
		
		
		// String
		// path="C:\\Users\\rohan\\eclipse-workspace\\NgoProject\\WebContent\\images"+File.separator+"products"+File.separator+part.getSubmittedFileName();

		
		
		try {
			// Thread.sleep(30000);
			Connection connection = null;

			ResultSet resultSet = null;
			PreparedStatement preparedStatement = null;
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");

			String sql = "SELECT address,contact,email,contribution,education FROM volunteer where id=?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				 address1 = resultSet.getString("address");
				 contact1 = resultSet.getString("contact");
				 email1 = resultSet.getString("email");
				 contribution1 = resultSet.getString("contribution");
				 education1 = resultSet.getString("education");
				
				

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(address=="") {
			addressf=address1;
			}
		else {
			addressf=address;
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
		if(contribution=="") {
			contrif=contribution1;
			}
		else {
			contrif=contribution;
		}
		if(education=="") {
			eduf=education1;
			}
		else {
			eduf=education;
		}
		
		
		try {
			// Thread.sleep(30000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement(
					"update ngoproject.volunteer set address=?,contact=?,email=?,contribution=?,education=? where id=?");
			pst.setString(1, addressf);
			pst.setString(2, contactf);
			pst.setString(3, emailf);
			pst.setString(4, contrif);
			pst.setString(5, eduf);
			pst.setInt(6, id);
			
			System.out.println("ok1");
			int count = pst.executeUpdate();
			if (count > 0) {
				System.out.println("Successfully updated");
				
				response.sendRedirect("profilePage.jsp");

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
