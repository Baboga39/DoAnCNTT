package com.sql.Control.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Model.Cart;
import com.sql.Model.User;

/**
 * Servlet implementation class EditProfile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("acc");
			String username = request.getParameter("user");
			String passsword = request.getParameter("pass");
			String email = request.getParameter("email");
			String image = request.getParameter("images");
			DAO dao = new DAO();
		   dao.editProfile(user, username, passsword, image, email);
			session.setAttribute("acc", user);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
		
	}

}
