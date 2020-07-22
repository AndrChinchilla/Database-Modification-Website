package com.assignment5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MaintenanceServlet
 */
@WebServlet("/MaintenanceServlet")
public class MaintenanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MaintenanceServlet() {
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
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
	{
		String table = req.getParameter("table");
		String action = req.getParameter("function");
		
		if(table.equals("Book") && action.equals("Add"))
		{
			String site = new String("http://localhost:8080/Assignment5/AddBook.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Book") && action.equals("Delete"))
		{
			String site = new String("http://localhost:8080/Assignment5/DeleteBook.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Book") && action.equals("Update"))
		{
			String site = new String("http://localhost:8080/Assignment5/UpdateBook.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
	        
		}
		else if(table.equals("Publisher") && action.equals("Add"))
		{
			String site = new String("http://localhost:8080/Assignment5/AddPublisher.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Publisher") && action.equals("Delete"))
		{
			String site = new String("http://localhost:8080/Assignment5/DeletePublisher.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Publisher") && action.equals("Update"))
		{
			String site = new String("http://localhost:8080/Assignment5/UpdatePublisher.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		
		else if(table.equals("Author") && action.equals("Add"))
		{
			String site = new String("http://localhost:8080/Assignment5/AddAuthor.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Author") && action.equals("Delete"))
		{
			String site = new String("http://localhost:8080/Assignment5/DeleteAuthor.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Author") && action.equals("Update"))
		{
			String site = new String("http://localhost:8080/Assignment5/UpdateAuthor.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		
		else if(table.equals("Copy") && action.equals("Add"))
		{
			String site = new String("http://localhost:8080/Assignment5/AddCopy.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Copy") && action.equals("Delete"))
		{
			String site = new String("http://localhost:8080/Assignment5/DeleteCopy.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
		else if(table.equals("Copy") && action.equals("Update"))
		{
			String site = new String("http://localhost:8080/Assignment5/UpdateCopy.jsp");
	        resp.setStatus(resp.SC_MOVED_TEMPORARILY);
	        resp.setHeader("Location", site);
		}
				
			
				
		
	}
	
	

}
