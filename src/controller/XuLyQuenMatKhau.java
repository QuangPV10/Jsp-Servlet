package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_dao.ThanhVienDAO;
import model.Mail;
import model.ThanhVien;


@WebServlet("/XuLyQuenMatKhau")
public class XuLyQuenMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;
        public XuLyQuenMatKhau() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String err = "";
		boolean check = true;
		ThanhVienDAO tvDao = new ThanhVienDAO();
		ThanhVien tv = tvDao.layThongTinforMail(username);
		Mail mail = new Mail();

		if (tvDao.checkAccountExits(username) == false) {
			err += "Tài khoản không tồn tại";
			check = false;
			request.setAttribute("err", err);
			RequestDispatcher rd = request.getRequestDispatcher("forgetpass.jsp");
			rd.forward(request, response);
		}
	if(check) {
			try {
				mail.sendMailPass(tv.getEmail(), tv.getMatKhau());
				err += "Đã gửi mật khẩu vào mail";
				request.setAttribute("err", err);
				RequestDispatcher rd = request.getRequestDispatcher("account1.jsp");
				rd.forward(request, response);
				
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	}
	

	}
	}

	

