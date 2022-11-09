package com.sql.Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sql.Dao.DAO;
import com.sql.Model.Blog;
import com.sql.Model.Book;
import com.sql.Model.Category;

/**
 * Servlet implementation class Blogdetail
 */
@WebServlet("/blogDetail")
public class Blogdetail extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String Blogid = request.getParameter("Blogid"); // Lay id Category
		System.out.println(Blogid);
		DAO dao = new DAO();
		Blog list = dao.getBlogByBId(Blogid);
		request.setAttribute("blogDetail", list);
		request.getRequestDispatcher("blog_details.jsp").forward(request, response);
	}
}
