package com.sql.Control.Blog;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Model.Blog;
import com.sql.Model.Book;
import com.sql.Model.Cart;
import com.sql.Model.CartItem;
import com.sql.Model.Category;

/**
 * Servlet implementation class Blogdetail
 */
@WebServlet("/blogDetail")
public class Blogdetail extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") != null) {
			Cart cart = (Cart) session.getAttribute("cart");
			List<CartItem> items = cart.getItems();
			for (CartItem a : items) {
				System.out.println(a.toString());
			}
			request.setAttribute("items", items);}
		response.setContentType("text/html;charset=UTF-8");
		String Blogid = request.getParameter("Blogid"); // Lay id Category
		System.out.println(Blogid);
		Blog list = dao.getBlogByBId(Blogid);
		request.setAttribute("blogDetail", list);
		request.getRequestDispatcher("blog_details.jsp").forward(request, response);
	}
}
