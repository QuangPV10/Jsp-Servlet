package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Item;
import model.SanPhamTrongGioHang;


@WebServlet("/XuLyXoaDonHang")
public class XuLyXoaDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XuLyXoaDonHang() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String masanpham = request.getParameter("masanpham");
		HttpSession session = request.getSession();
		SanPhamTrongGioHang cart = (SanPhamTrongGioHang) session.getAttribute("cart");
		if(cart!=null) {
			List<Item> list = cart.getList();
			for(int i=0; i<list.size(); i++) {
				if(masanpham.equals(list.get(i).getSanPham().getMaSanPham())) {
					list.remove(i);
					cart.setList(list);
					break;
				}
			}
			session.setAttribute("cart", cart);
			response.sendRedirect("cart.jsp");
			
		}
	}
}
	

