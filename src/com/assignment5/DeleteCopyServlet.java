package com.assignment5;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCopyServlet
 */
@WebServlet("/DeleteCopyServlet")
public class DeleteCopyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCopyServlet() {
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

		String bookCode = request.getParameter("bookCode");
		double branchNum = Double.parseDouble(request.getParameter("branchNum"));
		double copyNum = Double.parseDouble(request.getParameter("copyNum"));
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/henrybooks", "root", "titylovu99");
		
		
			PreparedStatement ps = conn.prepareStatement("delete from copy where bookCode=? and branchNum=? and copyNum=?");
			ps.setString(1, bookCode);
			ps.setDouble(2, branchNum );
			ps.setDouble(3, copyNum );

        
			int update = ps.executeUpdate();
			
			PrintWriter out = response.getWriter();
		
			if(update > 0)
			{
				out.println("Copy has been removed!");
			}
		
		}catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
	}

}
