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

/**
 * Servlet implementation class BlogControl
 */
@WebServlet("/Blog")
public class BlogControl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		DAO dao = new DAO();
		List<Blog>  list = dao.getAllBlog();
		request.setAttribute("ListBlog", list);
		request.getRequestDispatcher("blog.jsp").forward(request, response);
	}

	

}
