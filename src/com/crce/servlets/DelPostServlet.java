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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class DelPostServlet
 */
@WebServlet("/DelPost")
public class DelPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelPostServlet() {
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

		
		String post_id = request.getParameter("p_id2");
		int p_idd=Integer.parseInt(post_id);
		System.out.println(p_idd);
		try {
			//Thread.sleep(3000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject", "root", "motog5splus");
			pst = con.prepareStatement("delete from post_v where post_id=?");
			pst.setInt(1, p_idd);
			
			
			
			System.out.println("ok1");
			int count = pst.executeUpdate();
			if (count > 0) {
				System.out.println("Successfully deleted");
				response.sendRedirect("profilePage.jsp");
				
				
				
				
			} else {
				
				System.out.println("deletion failed");
				
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
