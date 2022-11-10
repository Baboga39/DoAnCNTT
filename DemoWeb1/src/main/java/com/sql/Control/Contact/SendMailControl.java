package com.sql.Control.Contact;

import java.io.IOException;
import java.util.Properties;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sql.Dao.DAO;
import com.sql.Email.SendMail;

import javax.mail.Authenticator;
import javax.mail.Message;
/**
 * Servlet implementation class SendMailControl
 */
//Hai
@WebServlet("/SendMailControl")
public class SendMailControl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name =request.getParameter("Name");
		String email =request.getParameter("Email");
		String content = request.getParameter("Messeage");
		SendMail.sendMailToEmail(email,name,content);
		DAO dao = new DAO();
		dao.InsertFeedback(name, email, email, content);
		response.sendRedirect("contact.jsp");
	}
}
