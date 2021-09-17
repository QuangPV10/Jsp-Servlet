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
import utils.FullPath;

@WebServlet("/Admin/pages/XuLySuaSanPham")
public class XuLySuaSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XuLySuaSanPham() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String masanpham = request.getParameter("masanpham");
			String action = request.getParameter("action");
			try {
			if(action.equals("sua")) {
				SanPham sanpham = (SanPham) ProductDAO.layThongTinSanPham(masanpham);
				request.setAttribute("suasanpham", sanpham);
				request.getRequestDispatcher("EditProduct.jsp").forward(request, response);
			}else if(action.equals("xulysua")) {
				
				SanPham sanpham = new SanPham();
				sanpham.setMaSanPham(request.getParameter("masanpham"));
				sanpham.setTenSanPham(request.getParameter("tensanpham"));
				sanpham.setGiaBan(Double.parseDouble(request.getParameter("giaban")));
				sanpham.setSoLuong(Integer.parseInt(request.getParameter("soluong")));
				sanpham.setNhaCungCap(request.getParameter("nhacungcap"));
				sanpham.setLoai(Integer.parseInt(request.getParameter("loai")));
				if(ProductDAO.updateThongTinSanPham(sanpham)) {
					response.sendRedirect(FullPath.fullPathAdmin("products.jsp"));
				}else {
					response.getWriter().println("Loi");
				}
				
				
			}else {
				response.sendRedirect(FullPath.fullPathAdmin("products.jsp"));
				System.out.println("bb");
			}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
}
