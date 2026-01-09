package com.crce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

;

/**
 * Servlet implementation class LoginVservlet
 */
@WebServlet("/LoginVservlet.do")
public class LoginVservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginVservlet() {
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
		ResultSet rs;
		
		
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		System.out.println(userName+password);
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/ngoproject","root","motog5splus");
		    pst=con.prepareStatement("select ID,userName,password from ngoproject.volunteer where userName=? and password=?");
		pst.setString(1, userName);
		pst.setString(2, password);
		System.out.println("ok1");
		rs=pst.executeQuery();
		
		HttpSession session= request.getSession();
		if(rs.next()) {
			session.setAttribute("userName", userName);
			session.setAttribute("password", password);
			System.out.println(rs.getInt("ID"));
			System.out.println(userName+" "+password);
			out.print("done");
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
	}}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
