package com.sql.Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sql.Dao.DAO;
//Hai
/**
 * Servlet implementation class AddControl
 */
@WebServlet("/add")
public class AddControl extends HttpServlet {
	

	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		String name = req.getParameter("name");
		String image = req.getParameter("image");
		String price = req.getParameter("price");
		String PriceSale = req.getParameter("PriceSale");
		String get = req.getParameter("category");
		int category = Integer.parseInt(get);
		DAO dao = new DAO();
		dao.InsertBook(name, image, price, PriceSale, category);
		resp.sendRedirect("Manager");
		}
	
	
}
