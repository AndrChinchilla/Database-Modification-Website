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
 * Servlet implementation class AddCopyServlet
 */
@WebServlet("/AddCopyServlet")
public class AddCopyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCopyServlet() {
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
		// TODO Auto-generated method stub
		String bookCode = request.getParameter("bookCode");
		double branchNum = Double.parseDouble(request.getParameter("branchNum"));
		double copyNum = Double.parseDouble(request.getParameter("copyNum"));
		String quality = request.getParameter("quality");
		double price = Double.parseDouble(request.getParameter("price"));
		
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/henrybooks", "root", "titylovu99");
		
		Statement st = conn.createStatement();
	
		
			int update=st.executeUpdate("insert into copy(bookCode,branchNum,copyNum,quality,price)"
					+ "values('"+bookCode+"','"+branchNum+"','"+copyNum+"','"+quality+"','"+ price +"')");
			
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
