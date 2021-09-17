package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAO;
import model.ThanhVien;
@WebServlet("/XuLyDangNhap")
public class XuLyDangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		ThanhVien thanhvien;
		try {
			thanhvien = LoginDAO.checkLogin(username, password);
			if(thanhvien!=null) {				session.setAttribute("USER", thanhvien);
				if(thanhvien.getLevel()==1) {
					response.sendRedirect("Admin/pages/index.jsp");
				}else {
					response.sendRedirect("index.jsp");
				}
			}else {
				request.setAttribute("err", "tài khoản không đúng");
				request.getRequestDispatcher("account1.jsp").forward(request, response);
			}
			
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	
	}
	
	}
	

