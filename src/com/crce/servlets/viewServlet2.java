package com.crce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class viewServlet2
 */
@WebServlet("/viewser2")
public class viewServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewServlet2() {
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
		
		
		
		int idd=Integer.parseInt(request.getParameter("id"));
		int val=Integer.parseInt(request.getParameter("val"));
		System.out.println(idd);
		
		
		try {
		
		HttpSession session= request.getSession();
		
			session.setAttribute("id", idd);
			if(val==1) {
				response.sendRedirect("viewVolunteersN.jsp");
			}
			else if(val==2) {
				response.sendRedirect("viewNGON.jsp");
			}
	
			
		}
		catch(Exception ex){
	
		ex.printStackTrace();
	}}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
