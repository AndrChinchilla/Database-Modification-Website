package com.assignment5;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddAuthorServlet
 */
@WebServlet("/AddAuthorServlet")
public class AddAuthorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAuthorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		double authorNum = Double.parseDouble(request.getParameter("authorNum"));
		String authorLast = request.getParameter("authorLast");
		String authorFirst = request.getParameter("authorFirst");
		
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/henrybooks", "root", "titylovu99");
		
		Statement st = conn.createStatement();
	
		
			int update=st.executeUpdate("insert into author(authorNum,authorLast,authorFirst)"
					+ "values('"+authorNum+"','"+authorLast+"','"+authorFirst+"')");
			
		PrintWriter out = response.getWriter();
		
		if (update > 0)
		{
		out.println("Data Updated!");
		}
		}catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}	
	}

}
