package com.sql.Control.Checkout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Model.Cart;

/**
 * Servlet implementation class AddOrder
 */
@WebServlet("/AddOrder")
public class AddOrder extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		session.removeAttribute("cart");
		try {
			String name = request.getParameter("name");
			String total = request.getParameter("total");
			String country = request.getParameter("country");
			String address = request.getParameter("address");
			String postcode = request.getParameter("postcode");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String note = request.getParameter("note");
			int totalP= Integer.parseInt(total);
			DAO dao = new DAO();
			dao.InsertOrder(name, country, address, postcode, phone, email, totalP, note);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("checkout.jsp").forward(request, response);
	}
}
