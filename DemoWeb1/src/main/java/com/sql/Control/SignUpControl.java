package com.sql.Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sql.Dao.DAO;
import com.sql.Model.User;


@WebServlet("/signUp")
public class SignUpControl extends HttpServlet {
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		if(!pass.equals(repass)) {
			response.sendRedirect("login.jsp");
		}
		else {
			DAO dao = new DAO();
			User a = dao.checkUserExits(user);
			if(a == null)
			{
				dao.SignUp(name, phone, email, user, repass, user);
				response.sendRedirect("shop");
			}
			else
			{
				request.setAttribute("mess", "Tài khoản tồn tại");
				response.sendRedirect("login.jsp");
			}
		}
	}
	

}
