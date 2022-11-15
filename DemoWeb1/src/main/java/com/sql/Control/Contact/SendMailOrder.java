package com.sql.Control.Contact;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Email.SendMail;
import com.sql.Email.SendMailConfirm;
import com.sql.Model.Cart;
import com.sql.Model.CartItem;


@WebServlet("/SendMailOrder")
public class SendMailOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") != null) {
			Cart cart = (Cart) session.getAttribute("cart");
			List<CartItem> items = cart.getItems();
			for (CartItem a : items) {
				System.out.println(a.toString());
			}
			request.setAttribute("items", items);}
	try {
		Cart cart = (Cart) session.getAttribute("cart");
		List<CartItem> items = cart.getItems();
		String name = request.getParameter("name");
		String total = request.getParameter("total");
		String country = request.getParameter("country");
		String address = request.getParameter("address");
		String postcode = request.getParameter("postcode");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String note = request.getParameter("note");
		StringBuilder content = new StringBuilder();
		content.append("Dear ").append(name).append("<br>");
		content.append("Bạn vừa đặt hàng từ Shop Family. <br> ");
		content.append("Địa chỉ nhận hàng của bạn là: <b>").append(address).append(" </b> <br>");
		content.append("Số điện thoại khi nhận hàng của bạn là: <b>").append(phone).append(" </b> <br>");
		content.append("Các sản phẩm bạn đặt bao gồm: <br>");
		for (CartItem c : items) {
			
					content.append(c.getBook().getBName()).append(" | ").append("Price:").append(c.getBook().getBPriceSale()).append("$")
							.append(" | ").append("Amount:").append(c.getQuantity()).append(" | ")
							.append("<br>");
				}
		
		content.append("Tổng tiền: ").append(String.format("%d", cart.totalPriceSale())).append("$").append("<br>");
		content.append("Cảm ơn bạn đã đặt hàng tại Shoes Family<br>");
		content.append("Chủ cửa hàng ");
		System.out.print(content.toString());
		SendMailConfirm.sendMailToEmail(email,name,content.toString());
		DAO dao = new DAO();
		dao.InsertFeedback(name, email, email, content.toString());
		request.getRequestDispatcher("checkout").forward(request, response);
	} catch (Exception e) {
	e.printStackTrace();
	}
	}


}
