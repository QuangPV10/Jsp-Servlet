package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.SanPham;

@WebServlet("/PhanLoaiSanSam")
public class PhanLoaiSanSam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String lsp = request.getParameter("loai");
		int loai;
		if(lsp!=null) {
			loai = Integer.parseInt(lsp);
		}else {
			lsp="0";
			loai = Integer.parseInt(lsp);
		}
		List<SanPham> dssp = ProductDAO.selectPrByType(loai);
		if(dssp!=null) {
			request.setAttribute("dssp", dssp);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
