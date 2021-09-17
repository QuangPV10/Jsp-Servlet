package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_dao.ProducerDAO;
import model.NhaCungCap;
import utils.FullPath;


@WebServlet("/Admin/pages/XuLySuaNhaCungCap")
public class XuLySuaNhaCungCap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XuLySuaNhaCungCap() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String manhacungcap = request.getParameter("manhacungcap");
		String action = request.getParameter("action");
		try {
		if(action.equals("sua")) {
			NhaCungCap nhacungcap = (NhaCungCap) ProducerDAO.layThongTinNhaCungCap(manhacungcap);
			request.setAttribute("suanhacungcap", nhacungcap);
			request.getRequestDispatcher("EditProducer.jsp").forward(request, response);
		}else if(action.equals("xulysua")) {
			
			NhaCungCap nhacungcap = new NhaCungCap();
			nhacungcap.setMaNhaCungCap(request.getParameter("manhacungcap"));
			nhacungcap.setTenNhaCungCap(request.getParameter("tennhacungcap"));
			nhacungcap.setDiaChi(request.getParameter("diachi"));
			if(ProducerDAO.updateThongTinNhaCungCap(nhacungcap)) {
				response.sendRedirect(FullPath.fullPathAdmin("producer.jsp"));
			}else {
				response.getWriter().println("Loi");
			}
		}else {
			response.sendRedirect(FullPath.fullPathAdmin("producer.jsp"));
			System.out.println("bb");
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

