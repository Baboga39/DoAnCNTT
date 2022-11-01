package com.sql.Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sql.Dao.DAO;
import com.sql.Model.Book;

/**
 * Servlet implementation class SearchControl
 */
@WebServlet("/search")
public class SearchControl extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String txtSeach = request.getParameter("txt");// Bien o Input
		DAO dao = new DAO();
		List<Book> list = dao.searchBookByName(txtSeach);
		
		
		request.setAttribute("listP", list);
		request.getRequestDispatcher("shop.jsp").forward(request, response);
	}

}
