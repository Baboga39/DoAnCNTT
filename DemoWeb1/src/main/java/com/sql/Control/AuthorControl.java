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

//Hai
@WebServlet("/AuthorControl")
public class AuthorControl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		String cateID = request.getParameter("aid"); // Lay id Category
		DAO dao = new DAO();
		List<Category> listC = dao.getAllCategory();
		List<Author> listAu = dao.getAllAuthor();

		
		request.setAttribute("listC", listC);
		request.setAttribute("listAu", listAu);
		request.getRequestDispatcher("shop.jsp").forward(request, response);
	}

	

}
