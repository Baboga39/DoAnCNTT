package com.sql.Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sql.Dao.DAO;
import com.sql.Model.Author;
import com.sql.Model.Book;
import com.sql.Model.Category;

/**
 * Servlet implementation class shop
 */
@WebServlet("/shop")
public class ShopControl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		DAO dao = new DAO();
		List<Book> list = dao.getAllBook();
		List<Category> listC = dao.getAllCategory();
		List<Author> listA = dao.getAllAuthor();
		request.setAttribute("listP", list);
		request.setAttribute("listC", listC);
		request.setAttribute("listA", listA);
		request.getRequestDispatcher("shop.jsp").forward(request, response);
	}

	
	}
