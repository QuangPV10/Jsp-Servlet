package controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Mail;


@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Contact() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");

		Mail sm = new Mail();
		try {
			sm.sendMailContact(name, email, message);

			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}

	}

