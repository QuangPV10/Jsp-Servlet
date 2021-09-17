package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import admin_dao.ProductsDAO;

import utils.FullPath;

@WebServlet("/XuLyXoaSanPham")
public class XuLyXoaSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XuLyXoaSanPham() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maSanPham = request.getParameter("masanpham");
		try {
			if(ProductsDAO.remove(maSanPham)){
				response.sendRedirect(FullPath.fullPathAdmin("products.jsp"));
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} 
	}
	

}
