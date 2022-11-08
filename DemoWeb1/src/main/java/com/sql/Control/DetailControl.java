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
 * Servlet implementation class DetailControl
 */
@WebServlet("/detail")
public class DetailControl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String Bid = request.getParameter("Bid");
		DAO dao = new DAO();
		Book B = dao.getBookByBId(Bid);
		List<Book> listPo = dao.getPopular();
		
		request.setAttribute("detail", B);
		request.setAttribute("listPo",listPo);
		request.getRequestDispatcher("shopping_detail.jsp").forward(request, response);
}	
}