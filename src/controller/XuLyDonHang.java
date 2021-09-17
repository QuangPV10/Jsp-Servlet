package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import model.Item;
import model.SanPham;
import model.SanPhamTrongGioHang;

@WebServlet("/XuLyDonHang")
public class XuLyDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XuLyDonHang() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String masanpham =request.getParameter("masanpham");
		String sl = request.getParameter("soluong");
		HttpSession session = request.getSession();
		SanPhamTrongGioHang cart = (SanPhamTrongGioHang) session.getAttribute("cart");
		int soLuong=1;
		try {
			SanPham sp = ProductDAO.layThongTinSanPham(masanpham);
			if(sp!=null) {
				if(sl==null) {
					soLuong =1;
				}else {
					soLuong =Integer.parseInt(sl);
				}
				if(cart==null) {
					cart = new SanPhamTrongGioHang();
					Item item = new Item();
					item.setSanPham(sp);
					item.setGiaBan(sp.getGiaBan());
					item.setSoLuong(soLuong);
					ArrayList<Item> list = new ArrayList<>();
					list.add(item);
					cart.setList(list);
					cart.setMaDonHang(sp.getMaSanPham());
				}else {
					boolean check = false;
					ArrayList<Item> list = (ArrayList<Item>) cart.getList();
					for(int i=0; i<list.size();i++) {
						if(sp.getMaSanPham().equals(list.get(i).getSanPham().getMaSanPham())) {
							if(request.getParameter("soluong")==null) {
							int soLuong1 = list.get(i).getSoLuong();
							list.get(i).setSoLuong(soLuong1+soLuong);
								
							}else {
								list.get(i).setSoLuong(soLuong);
							}
							check = true;
						}
					}
					if(check==false) {
						Item item = new Item();
						item.setSanPham(sp);
						item.setGiaBan(sp.getGiaBan());
						item.setSoLuong(soLuong);
						list.add(item);
						cart.setList(list);
						cart.setMaDonHang(sp.getMaSanPham());
					}
				}
				session.setAttribute("cart", cart);
				response.sendRedirect("cart.jsp");
			}
		} catch (SQLException e) {
		}
		
	}

}
