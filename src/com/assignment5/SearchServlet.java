package com.assignment5;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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
		
		String title = request.getParameter("title");
		
		
		try
		{
		PrintWriter out = response.getWriter();	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/henrybooks", "root", "titylovu99");
		
		PreparedStatement ps = conn.prepareStatement
				("SELECT title, authorFirst, authorLast, branchNum, copyNum, publisherName\r\n" + 
						"FROM book, author,copy, publisher\r\n" + 
						"WHERE book.bookCode IN\r\n" + 
						"	(SELECT bookCode\r\n" + 
						"     FROM copy\r\n" + 
						"     WHERE bookCode in\r\n" + 
						"		(SELECT bookCode\r\n" + 
						"         FROM book\r\n" + 
						"         WHERE title like ?\r\n" + 
						"        )\r\n" + 
						"    )\r\n" + 
						"AND\r\n" + 
						"book.bookCode IN\r\n" + 
						"	(SELECT bookCode\r\n" + 
						"     FROM wrote\r\n" + 
						"     WHERE author.authorNum = wrote.authorNum)\r\n" + 
						"AND book.bookCode = copy.bookCode\r\n" + 
						"AND book.publisherCode = publisher.publisherCode\r\n" + 
						"ORDER BY title;");
		
	    ps.setString(1, "%" + title + "%");

		ResultSet result = ps.executeQuery();
	
		
		out.println("<html><body><h2>The Select query has following results : </h2>");

		
		
		out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>");
		
		while(result.next()) {
		    out.println("<tr>");
		    out.println("<td>"+result.getString(1) + "</td>");
		    out.println("<td>"+result.getString(2) + "</td>");
		    out.println("<td>"+result.getString(3) + "</td>");
		    out.println("<td>"+result.getString(4) + "</td>");
		    out.println("<td>"+result.getString(5) + "</td>");
		    out.println("<td>"+result.getString(6) + "</td>");
		    out.println("</tr>");

		   }
		
		   out.println("</table></br><hr></body></html>");

		}catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
	}

}
