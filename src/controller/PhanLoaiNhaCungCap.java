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

@WebServlet("/PhanLoaiNhaCungCap")
public class PhanLoaiNhaCungCap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PhanLoaiNhaCungCap() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String ncc = request.getParameter("nhacungcap");
		List<SanPham> dssp1 = ProductDAO.selectPrByNhaCungCap(ncc);
		if(dssp1!=null) {
			request.setAttribute("dssp1", dssp1);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
	}

	

