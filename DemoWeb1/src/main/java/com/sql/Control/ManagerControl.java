package com.sql.Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Model.Author;
import com.sql.Model.Book;
import com.sql.Model.Category;
import com.sql.Model.User;
//Hai
/**
 * Servlet implementation class ManagerControl
 */
@WebServlet("/Manager")
public class ManagerControl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		User a = (User) session.getAttribute("acc");
		
		int id = a.getUID();
		DAO dao = new DAO();
		List<Category> listC = dao.getAllCategory();
		List<Author> listAu = dao.getAllAuthor();
		List<Book> list = dao.getAllBook();
		
		request.setAttribute("listAu", listAu);
		request.setAttribute("listMa", list);
		request.setAttribute("listC", listC);
		request.getRequestDispatcher("Manager.jsp").forward(request, response);
	}

	

}
