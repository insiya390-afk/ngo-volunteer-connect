package com.crce.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class RegisterNservlet
 */

@WebServlet("/registerNGO")
@MultipartConfig
public class RegisterNservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterNservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
PrintWriter out=response.getWriter();
		
		Connection con;
		PreparedStatement pst;
		//ResultSet rs;

		
		String ngoName = request.getParameter("ngoName");
		String userName = request.getParameter("userName");
		String location = request.getParameter("location");
		String email = request.getParameter("email");
		String contact = (request.getParameter("contact"));
		String gender = request.getParameter("gender");
		String acno=request.getParameter("acno");
		String code=request.getParameter("code");
		String accountname=request.getParameter("accountname");
		Part part = request.getPart("image");
		// String
		// path="C:\\Users\\rohan\\eclipse-workspace\\NgoProject\\WebContent\\images"+File.separator+"products"+File.separator+part.getSubmittedFileName();
		String donation=request.getParameter("donation");
		String description = request.getParameter("description");
		String achievement=request.getParameter("achievement");
		String path="C:\\Users\\rohan\\eclipse-workspace\\NgoProject\\WebContent\\images"+File.separator+"NGO"+File.separator+part.getSubmittedFileName();
		String password = request.getParameter("password");
	
		String image = part.getSubmittedFileName();
		try {
			FileOutputStream fos=new FileOutputStream(path);
			InputStream is=part.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
		try {
			//Thread.sleep(3000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement("insert into ngoproject.ngo(NgoName,userName,location,contact,email,image,descr,achievement,password,donationType,account_no,IFSC,account_holder) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, ngoName);
			pst.setString(2, userName);
			pst.setString(3, location);
			pst.setString(4, contact);
			pst.setString(5, email);
			pst.setString(6, image);
			pst.setString(7, description);
			pst.setString(8, achievement);
			pst.setString(9, password);
			pst.setString(10, donation);
			pst.setString(11, acno);
			pst.setString(12, code);
			pst.setString(13, accountname);
			
			System.out.println("ok1");
			int count = pst.executeUpdate();
			if (count > 0) {
				System.out.println("Successfully Inserted");
				out.print("done");
				response.sendRedirect("login.jsp");
				
				
				
			} else {
				
				System.out.println("insertion failed");
				out.print("failed");
			}

		} 
	catch (ClassNotFoundException ex) {
			System.out.println("a");
			ex.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		}
		catch(Exception e) {
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
