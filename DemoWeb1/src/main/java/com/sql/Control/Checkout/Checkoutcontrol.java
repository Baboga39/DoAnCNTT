package com.sql.Control.Checkout;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Model.Cart;
import com.sql.Model.CartItem;
import com.sql.Model.Order;
import com.sql.Model.OrderItem;

/**
 * Servlet implementation class Checkoutcontrol
 */
@WebServlet("/checkout")
public class Checkoutcontrol extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") != null) {
			Cart cart = (Cart) session.getAttribute("cart");
			List<CartItem> items = cart.getItems();
			request.setAttribute("items", items);}
			request.setCharacterEncoding("UTF-8");
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
		response.sendRedirect("checkout.jsp");
	}
}
