package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.SanPham;


@WebServlet("/ChiTietSanPham")
public class ChiTietSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChiTietSanPham() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String msp = request.getParameter("masanpham");
		try {
			SanPham sp = ProductDAO.layThongTinSanPham(msp);
			if(sp!=null) {
				request.setAttribute("sanpham", sp);
				request.getRequestDispatcher("single.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
