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
 * Servlet implementation class EventServlet
 */
@WebServlet("/EventServlet")
@MultipartConfig
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventServlet() {
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

		String etitle = request.getParameter("etitle");
		String description = request.getParameter("description");
		Part part = request.getPart("image");
		String parttype = request.getParameter("parttype");
		String req = request.getParameter("req");
		String duration = request.getParameter("duration");
		String location = request.getParameter("loc");
		String link = request.getParameter("link");
		int id = Integer.parseInt(request.getParameter("id"));
		
		System.out.println(id);
		System.out.println(etitle);
		System.out.println(description);
		System.out.println(parttype);
		System.out.println(req);
		System.out.println(duration);
		System.out.println(location);
		System.out.println(link);
		

		// String
		// path="C:\\Users\\rohan\\eclipse-workspace\\NgoProject\\WebContent\\images"+File.separator+"products"+File.separator+part.getSubmittedFileName();

		String path = "C:\\Users\\rohan\\eclipse-workspace\\NgoProject\\WebContent\\images\\event"
				+ File.separator + part.getSubmittedFileName();
		System.out.println(path);

		String image = part.getSubmittedFileName();
		try {
			FileOutputStream fos = new FileOutputStream(path);
			InputStream is = part.getInputStream();
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			// Thread.sleep(3000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement("insert into ngoproject.event(ngo_id,title,image,requirement,part_type,duration,location,link,descr) values(?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, id);
			pst.setString(2, etitle);
			pst.setString(3, image);
			pst.setString(4, req);
			pst.setString(5, parttype);
			pst.setString(6, duration);
			pst.setString(7, location);
			pst.setString(8, link);
			pst.setString(9, description);
			

			System.out.println("ok1");
			int count = pst.executeUpdate();
			if (count > 0) {
				System.out.println("Successfully Inserted");
				out.print("done");

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
